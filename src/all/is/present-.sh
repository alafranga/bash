is.present-() {
	is.present "$@" || die- "Must be non empty: $1" "$@"
}
