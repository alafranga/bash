ui.dark() {
	[[ -t 1 ]] || return 0

	cry() {
		echo -e >&2 "\e[1m\e[38;5;11m!\e[0m $*\e[0m"
	}

	die() {
		echo -e >&2 "\e[1m\e[38;5;9m✗\e[0m \e[1m$*\e[0m"
		exit 1
	}

	getting() {
		echo -e >&2 "\e[1m\e[38;5;14m↓\e[0m \e[2m$1\e[0m"
		"${@:2}"
	}

	running() {
		echo -e >&2 "\e[1m\e[38;5;14m>\e[0m \e[1m$1\e[0m"
		"${@:2}"
	}

	waiting() {
		echo -e >&2 "\e[1m\e[38;5;14m∙\e[0m \e[2m$1\e[0m"
		"${@:2}"
	}
}
