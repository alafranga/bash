# shellcheck disable=2120
zip.cat() {
	local file=${1:-/dev/stdin}

	local mime; mime=$(file --mime-type --brief "$file")

	case $mime in
	application/gzip)
		command -v zcat &>/dev/null || die "Required program: zcat"
		zcat "$file"
		;;
	application/x-xz)
		command -v unxz &>/dev/null || die "Required program: unxz"
		unxz "$file"
		;;
	application/x-bzip2)
		command -v bzcat &>/dev/null || die "Required program: bzcat"
		bzcat "$file"
		;;
	application/x-zstd)
		command -v zstdcat &>/dev/null || die "Required program: zstdcat"
		zstdcat -f "$file"
		;;
	application/zip)
		command -v bsdtar &>/dev/null || die "Required program: bsdtar"

		.zcat.() {
			mkdir .unpack && bsdtar -xf "$file" -C .unpack

			local files=(.unpack/*)
			[[ ${#files[@]} -eq 1 ]] || die 'Multiple files found in zip archive'

			cat "${files[0]}"
		}

		intemp .zcat.
		;;
	*)
		cat "$file"
		;;
	esac
}
