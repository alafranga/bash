os.which() {
	[[ $# -gt 0 ]] || set -- dist

	local feature

	for feature; do
		local actual

		case $feature in
		name|platform)
			actual=$(uname -s); actual=${actual,,}
			;;
		arch)
			actual=$(uname -m)

			case $actual in
			x86_64)    actual=amd64 ;;
			i386|i686) actual=386 ;;
			esac
			;;
		codename)
			actual=$(lsb_release -sc)
			;;
		dist)
			# shellcheck disable=1091
			actual=$(unset ID && . /etc/os-release 2>/dev/null && echo "$ID")
			;;
		*)
			die "Unrecognized feature: $feature"
			;;
		esac

		echo "$actual"
	done
}
