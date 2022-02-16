set -euo pipefail
. "`cd $(dirname ${BASH_SOURCE[0]}) && pwd`/../helper/bash.helper/helper.bash"

# Skip env arg
shift

cmd_check="${1}"
if [ -z "${cmd_check}" ]; then
	echo "[:(] arg 'command' is empty" >&2
	exit 1
fi

cmd_install="${2}"
if [ -z "${cmd_check}" ]; then
	cmd_install="${cmd_check}"
fi

check_or_install "${cmd_check}" "${cmd_install}"
