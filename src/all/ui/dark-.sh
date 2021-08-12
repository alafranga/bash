ui.dark-() {
	[[ -t 1 ]] || return 0

	bug() {
		echo -e "\e[38;5;9m✖\e[0m \e[1m$*\e[0m" >&2
		exit 127
	}

	bye() {
		echo -e "\e[38;5;3mℹ\e[0m \e[2m$*\e[0m" >&2
		exit 0
	}

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

	notok() {
		echo -e "\e[1m\e[38;5;9m✗\e[0m \e[1m$*\e[0m" >&2
	}

	ok() {
		echo -e "\e[1m\e[38;5;10m✓\e[0m \e[1m$*\e[0m" >&2
	}

	running() {
		echo -e "\e[1m\e[38;5;14m>\e[0m \e[1m$1\e[0m" >&2
		"${@:2}"
	}

	running-() {
		echo -e "\e[1m\e[38;5;14m>\e[0m \e[2m$1\e[0m" >&2
		"${@:2}"
	}

	oknotok() {
		echo -ne "\e[1m\e[38;5;14m>\e[0m \e[1m$1\e[0m" >&2
		"${@:2}" && ok || notok
	}

	say() {
		echo -e "\e[1m\e[38;5;15m\e[0m $*\e[0m" >&2
	}

	waiting() {
		echo -e "\e[1m\e[38;5;14m∙\e[0m \e[2m$1\e[0m" >&2
		"${@:2}"
	}

	[[ -z ${VERBOSE:-} ]] || verbose()  {
		if [[ $# -gt 0 ]]; then
			echo -e "\e[38;5;3mℹ\e[0m \e[2m$*\e[0m" >&2
		else
			echo "" >&2
		fi
	}
}
