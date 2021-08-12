[ -n "${BASH_VERSION:-}"        ] || { echo 'Bash required.' >&2;                     exit 1; }
[[ ${BASH_VERSINFO[0]:-} -ge 4 ]] || { echo 'Bash version 4 or higher required.' >&2; exit 1; }
