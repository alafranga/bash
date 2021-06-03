deb.missings() {
	local -n deb_missings_=${1?${FUNCNAME[0]}: missing argument}; shift

	local package
	for package; do
		# shellcheck disable=2016
		deb.installed "$package" || deb_missings_+=("$package")
	done
}
