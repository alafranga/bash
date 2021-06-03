can.overwrite-() {
	can.overwrite "$@" || die- "File/directory not found or overwritable" "$@"
}
