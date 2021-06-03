deb.installmissing() {
	[[ $# -gt 0 ]] || return 0

	deb.update

	local missings=()

	local package
	for package; do
		deb.installed "$package" || missings+=("$package")
	done

	[[ ${#missings[@]} -gt 0 ]] || return 0

	waiting 'Installing packages' apt-get install --yes --no-install-recommends "${missings[@]}"
}
