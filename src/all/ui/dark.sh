ui.dark() {
	[[ -t 1 ]] || return 0

	cry() {
		echo -e "\e[1m\e[38;5;11m!\e[0m $*\e[0m" >&2
	}

	die() {
		echo -e "\e[1m\e[38;5;9m✗\e[0m \e[1m$*\e[0m" >&2
		exit 1
	}

	getting() {
		echo -e "\e[1m\e[38;5;14m↓\e[0m \e[2m$1\e[0m" >&2
		"${@:2}"
	}

	running() {
		echo -e "\e[1m\e[38;5;14m>\e[0m \e[1m$1\e[0m" >&2
		"${@:2}"
	}

	waiting() {
		echo -e "\e[1m\e[38;5;14m∙\e[0m \e[2m$1\e[0m" >&2
		"${@:2}"
	}
}
