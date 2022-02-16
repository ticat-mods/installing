set -euo pipefail
. "`cd $(dirname ${BASH_SOURCE[0]}) && pwd`/../helper/bash.helper/helper.bash"

env=`cat "${1}/env"`

ticat=`must_env_val "${env}" 'sys.paths.ticat'`
dir=`dirname "${ticat}"`
if [ -z "${dir}" ]; then
	echo "[:(] get ticat dir failed" >&2
	exit 1
fi

add_bin_dir_to_sys_path "${dir}"
echo "[:)] done"
