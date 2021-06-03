dir.climb() {
	local cwd=${1?${FUNCNAME[0]}: missing argument}; shift

	cd "$cwd" || exit

	while :; do
		local try

		for try; do
			if [[ -e $try ]]; then
				return 0
			fi
		done

		# shellcheck disable=2128
		if [[ $PWD == "/" ]]; then
			break
		fi

		cd .. || exit
	done
}
