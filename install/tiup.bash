set -euo pipefail

if ! [ -x "$(command -v tiup)" ]; then
	curl --proto '=https' --tlsv1.2 -sSf https://tiup-mirrors.pingcap.com/install.sh | sh
else
	echo "[:)] tiup exists, skipped"
fi
