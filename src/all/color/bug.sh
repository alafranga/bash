bug() {
	echo -e "\e[38;5;9m✖\e[0m \e[1m$*\e[0m" >&2
	exit 127
}
