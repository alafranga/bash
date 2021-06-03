can.sudo-() {
	can.sudo || die- 'Root permissions required; use sudo(1)' "$@"
}
