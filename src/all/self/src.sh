self.src() {
	local path

	path=$(self.path)
	if [[ -t 1 ]]; then
		echo "$path"
	else
		echo "builtin source '$path'"
	fi
}
