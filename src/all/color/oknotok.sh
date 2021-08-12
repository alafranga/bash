oknotok() {
	echo -ne "\e[1m\e[38;5;14m>\e[0m \e[1m$1\e[0m" >&2
	"${@:2}" && echo -e "\e[1m\e[38;5;10m✓\e[0m" >&2 || echo -e "\e[1m\e[38;5;9m✗\e[0m" >&2
}
