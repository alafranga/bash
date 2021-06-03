cecho() {
	local color="${1?${FUNCNAME[0]}: missing argument}"; shift

	local code="${_color_[$color]:-}"
	local reset=${_color_[reset]}

	[[ -n $code ]] || exit

	echo -e "${code}${*}${reset}"
}
