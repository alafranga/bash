load() {
	# shellcheck disable=2128
	local _load_old_=$PWD

	[[ -v _load_dirs_ ]] || declare -ag _load_dirs_=(
		"$(dirname "$(readlink -m "$0")")"
	)

	local _load_src_

	for _load_src_; do
		builtin cd "${_load_dirs_[-1]}" || die "Chdir error: ${_load_dirs_[-1]}"

		local _load_src_found_

		for _load_src_found_ in "$_load_src_" "$_load_src_".sh; do
			if [[ -f $_load_src_found_ ]]; then
				_load_src_found_=$(readlink -f "$_load_src_found_")

				_load_dirs_+=("$(dirname "$_load_src_found_")")

				builtin source "$_load_src_found_"
			fi
		done

		unset _load_src_found_
	done

	unset _load_src_

	builtin cd "$_load_old_" || die "Chdir error: $_load_old_"
	unset _load_old_
}
