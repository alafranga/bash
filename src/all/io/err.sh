io.err() {
	local arg

	for arg; do
		echo -e "$arg" >&2
	done

	[[ -t 0 ]] || cat >&2
}
