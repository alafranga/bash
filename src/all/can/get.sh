can.get() {
	curl --output /dev/null --silent --head --fail "${1?${FUNCNAME[0]}: missing argument}"
}
