deb.which() {
	dpkg-query -W -f='${Package}\t${Version}\n' "$@"
}
