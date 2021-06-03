io.out() {
	local arg

	for arg; do
		echo -e "$arg"
	done

	[[ -t 0 ]] || cat
}
