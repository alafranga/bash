path.suffixize() {
	local -n path_suffixize_=${1?${FUNCNAME[0]}: missing argument}; shift
	local    suffix=${1?${FUNCNAME[0]}: missing argument};          shift

	local -A _
	path.parse_ "$path_suffixize_"

	printf -v path_suffixize_ "%s/%s${suffix}%s" "${_[.dir]:-.}" "${_[.name]}" "${_[.dotext]}"
}

path.parse_() {
	local -n path_parse_=_

	if [[ ${1:-} = -A ]]; then
		shift
		path_parse_=${1?${FUNCNAME[0]}: missing argument}; shift
	fi

	local path=${1?${FUNCNAME[0]}: missing argument}; shift

	local dir=$path base=$path name=$path ext=$path

	path.dir dir
	path.base base
	path.name name
	path.ext ext

	path_parse_[.dir]=$dir
	path_parse_[.base]=$base
	path_parse_[.name]=$name
	path_parse_[.ext]=$ext

	if [[ -n $ext ]]; then
		path_parse_[.dotext]=.$ext
	else
		# shellcheck disable=2034
		path_parse_[.dotext]=$ext
	fi
}
