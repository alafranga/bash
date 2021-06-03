# shellcheck disable=2120
say() {
	echo -e "${@-""}" >&2
}
