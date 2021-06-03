virt.is() {
	local virt=${1:-virtual}

	case $virt in
	chroot)     systemd-detect-virt -qr ;;
	container)  systemd-detect-virt -qc ;;
	physical) ! systemd-detect-virt -q  ;;
	virtual)    [[ -n ${CI:-} ]] || [[ -n ${PACKER_BUILDER_TYPE:-} ]] || systemd-detect-virt -q ;;
	vm)         systemd-detect-virt -qv ;;
	esac
}
