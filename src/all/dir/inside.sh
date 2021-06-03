dir.inside() {
	local dir=${1?${FUNCNAME[0]}: missing argument}; shift

	[[ $# -gt 0 ]] || return 0

	builtin pushd "$dir" >/dev/null || exit
	"$@"
	builtin popd         >/dev/null || exit

	if [[ $(type -t "$1" || true) == function ]] && [[ $1 =~ [.]$ ]]; then
		unset -f "$1"
	fi
}
