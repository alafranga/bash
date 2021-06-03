os.any() {
	local predicate

	for predicate; do
		if os.is "$predicate"; then
			return 0
		fi
	done

	return 1
}
