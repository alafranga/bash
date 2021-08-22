oknotok() {
	local err=0

	echo -ne "\e[1m\e[38;5;6m$1\e[0m " >&2
	"${@:2}" || err=$?

	if [[ $err -eq 0 ]]; then
		echo -e "\e[1m\e[38;5;10m✓\e[0m" >&2
	else
		echo -e "\e[1m\e[38;5;9m✗\e[0m" >&2
	fi

	return $err
}
