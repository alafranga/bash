ui.dark-() {
	[[ -t 1 ]] || return 0

	bug() {
		echo -e >&2 "\e[38;5;9m✖\e[0m \e[1m$*\e[0m"
		exit 127
	}

	bye() {
		echo -e >&2 "\e[38;5;3mℹ\e[0m \e[2m$*\e[0m"
		exit 0
	}

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

	notok() {
		echo -e >&2 "\e[1m\e[38;5;9m✗\e[0m \e[1m$*\e[0m"
	}

	ok() {
		echo -e >&2 "\e[1m\e[38;5;10m✓\e[0m \e[1m$*\e[0m"
	}

	running() {
		echo -e >&2 "\e[1m\e[38;5;14m>\e[0m \e[1m$1\e[0m"
		"${@:2}"
	}

	running-() {
		echo -e >&2 "\e[1m\e[38;5;14m>\e[0m \e[2m$1\e[0m"
		"${@:2}"
	}

	say() {
		echo -e >&2 "\e[1m\e[38;5;15m\e[0m $*\e[0m"
	}

	waiting() {
		echo -e >&2 "\e[1m\e[38;5;14m∙\e[0m \e[2m$1\e[0m"
		"${@:2}"
	}

	[[ -z ${VERBOSE:-} ]] || verbose()  {
		if [[ $# -gt 0 ]]; then
			echo -e >&2 "\e[38;5;3mℹ\e[0m \e[2m$*\e[0m"
		else
			echo >&2 ""
		fi
	}
}
