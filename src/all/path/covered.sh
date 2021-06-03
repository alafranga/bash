path.covered() {
	local path=${1?${FUNCNAME[0]}: missing argument};      shift
	local periphery=${1?${FUNCNAME[0]}: missing argument}; shift

	local relative
	relative=$(realpath --relative-to "$path" "$periphery" 2>/dev/null) || return

	[[ ! $relative =~ ^[.] ]]
}
