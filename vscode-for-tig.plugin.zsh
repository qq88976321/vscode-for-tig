# Add the plugin's diretory to user's path
PLUGIN_BIN="$(dirname $0)"
export PATH="${PATH}:${PLUGIN_BIN}"

export TIG_EDITOR=vscode-for-tig
