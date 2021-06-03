file.chmog() {
	local mog=${1?${FUNCNAME[0]}: missing argument}; shift
	local dst=${1?${FUNCNAME[0]}: missing argument}; shift

	local mode owner group
	IFS=: read -r mode owner group <<<"$mog"

	[[ -z ${mode:-}  ]] || chmod "$mode"  "$dst"
	[[ -z ${owner:-} ]] || chown "$owner" "$dst"
	[[ -z ${group:-} ]] || chgrp "$group" "$dst"
}
