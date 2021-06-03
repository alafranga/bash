os.is() {
	local predicate

	for predicate; do
		[[ $predicate =~ '=' ]] || predicate="dist=$predicate"

		local feature=${predicate%%=*} expected=${predicate#*=}

		case $feature in
		dist)
			case $expected in
			proxmox)
				{ command -v pveversion &>/dev/null && uname -a | grep -q -i pve; } || return 1
				continue
				;;
			esac
			;;
		codename)
			case $expected in
			sid|unstable|testing)
				grep -qwE '(sid|unstable)' /etc/debian_version 2>/dev/null || return 1
				continue
				;;
			stable)
				grep -qvwE '(sid|unstable)' /etc/debian_version 2>/dev/null || return 1
				continue
				;;
			esac
			;;
		esac

		[[ $(os.which "$feature") = "$expected" ]] || return 1
	done

	return 0
}
