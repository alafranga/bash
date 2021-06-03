virt.any() {
	local feature

	for feature; do
		if virt.is "$feature"; then
			return 0
		fi
	done

	return 1
}
