github.asset() {
	local slug=${1?${FUNCNAME[0]}: missing argument};  shift
	local asset=${1?${FUNCNAME[0]}: missing argument}; shift

	local latest

	latest=$(
		net.cat https://api.github.com/repos/"$slug"/releases/latest | grep -Po '"tag_name": "\K.*?(?=")'
	) || die "Unable to get the latest asset tag: $slug"

	echo https://github.com/"$slug"/releases/download/"$latest"/"$asset"
}
