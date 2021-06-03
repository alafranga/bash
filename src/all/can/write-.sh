can.write-() {
	can.write "$@" || die- "File/directory not found or writable" "$@"
}
