deb.addkey() {
	local url=${1?${FUNCNAME[0]}: missing argument}; shift

	local artifact=

	if [[ ! -d $HOME/.gnupg ]]; then
		artifact=$HOME/.gnupg

		mkdir "$artifact" && chmod 700 "$artifact"
	fi

	.() {
		net.cat "$1" >key || die "Couldn't get key file: $1"
		deb.addkey_ key
	}

	local err
	intemp . "$url" || err=$? && err=$?

	[[ -z ${artifact:-} ]] || rm -rf "$artifact"

	return "$err"
}

deb.addkey_() {
	local keyfile=${1?${FUNCNAME[0]}: missing argument}; shift

	local questioned_fingerprints=() installed_fingerprints=()

	mapfile -t questioned_fingerprints < <(
		gpg -nq --import --import-options import-show --with-colons "$keyfile" |
		awk -F: '$1 == "fpr" { print $10 }' 2>/dev/null
	)

	# shellcheck disable=2034
	mapfile -t installed_fingerprints < <(
		apt-key adv --list-public-keys --with-fingerprint --with-colon |
		awk -F: '$1 == "fpr" { print $10 }' 2>/dev/null
	)

	local fingerprint unfound
	for fingerprint in "${questioned_fingerprints[@]}"; do
		if ! contains "$fingerprint" "${installed_fingerprints[@]}"; then
			unfound=$fingerprint
			break
		fi
	done

	if [[ -n ${unfound:-} ]]; then
		running 'Adding APT key' apt-key add "$keyfile"
	fi
}
