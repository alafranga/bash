running-() {
	echo -e "\e[1m\e[38;5;14m>\e[0m \e[2m$1\e[0m" >&2
	"${@:2}"
}
