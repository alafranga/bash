path.ext() {
	local -n path_ext_=${1?${FUNCNAME[0]}: missing argument}; shift

	path_ext_=${path_ext_##*/}

	case $path_ext_ in
	*.*)
		path_ext_=${path_ext_##*.}
		;;
	*)
		path_ext_=
		;;
	esac
}
