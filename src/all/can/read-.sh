can.read-() {
	can.read "$@" || die- "File/directory not found or readable" "$@"
}
