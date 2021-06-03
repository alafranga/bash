# shellcheck disable=2120
net.wait() {
	local tries=${1:-10}

	while ! ip route get 1.1.1.1 &>/dev/null; do
		sleep 0.1

		((tries--)); [[ $tries -gt 0 ]] || die 'Network not available'
	done
}
