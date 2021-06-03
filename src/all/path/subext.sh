path.subext() {
	local -n path_subext_=${1?${FUNCNAME[0]}: missing argument}; shift
	local    ext=${1?${FUNCNAME[0]}: missing argument};          shift

	case $path_subext_ in
	*.*)
		path_subext_=${path_subext_%.*}
		path_subext_=${path_subext_}.${ext}
		;;
	*)
		;;
	esac
}
