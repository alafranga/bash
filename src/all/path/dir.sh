path.dir() {
	local -n path_dir_=${1?${FUNCNAME[0]}: missing argument}; shift

	path.normalize path_dir_

	case $path_dir_ in
	*/*)
		path_dir_=${path_dir_%/*}
		[[ -n $path_dir_ ]] || path_dir_=/
		;;
	*)
		path_dir_=.
		;;
	esac
}
