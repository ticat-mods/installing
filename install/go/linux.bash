set -euo pipefail
. "`cd $(dirname ${BASH_SOURCE[0]}) && pwd`/../../helper/bash.helper/helper.bash"

if [ -x "$(command -v ${to_check})" ]; then
	echo "[:)] command ${to_check} found, skipped"
	exit
fi

cd ~

pkg='go1.17.7.linux-amd64.tar.gz'
rm -rf "${pkg}"
wget "https://go.dev/dl/${pkg}"

rm -rf './go' && tar -xzvf "${pkg}"

path=`readlink -f './go'`

add_bin_dir_to_sys_path "${path}/bin"
