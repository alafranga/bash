net.cat() {
	local url=${1?${FUNCNAME[0]}: missing argument}; shift

	[[ $url =~ ^[^:]+:// ]] || url=https://$url

	curl --output /dev/null --silent --head --fail "$url" || die "URL not gettable: $url"

	getting 'Getting file' curl -fsSL "$url"
}
