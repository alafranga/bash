[[ -z ${VERBOSE:-} ]] || verbose()  {
	if [[ $# -gt 0 ]]; then
		echo -e "\e[38;5;3mℹ\e[0m \e[2m$*\e[0m" >&2
	else
		echo "" >&2
	fi
}
