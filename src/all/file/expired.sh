file.expired() {
	local -i expiry=${1?${FUNCNAME[0]}: missing argument}; shift

	case $expiry in
	-1) return 1 ;;
	0)  return 0 ;;
	esac

	local file
	for file; do
		local t=d

		[[ -d $file ]] || t=f

		if [[ -e $file ]] && [[ -z $(find "$file" -maxdepth 0 -type "$t" -mmin +"$expiry" 2>/dev/null) ]]; then
			return 1
		fi
	done

	return 0
}
