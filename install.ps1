$ErrorActionPreference = "Stop"

$CONFIG = "install.conf.yaml"
$DOTBOT_DIR = "dotbot"

$DOTBOT_BIN = "bin/dotbot"
$BASEDIR = $PSScriptRoot

$PLUGINSDIR = "dotbot-plugins"

Set-Location $BASEDIR
git -C $DOTBOT_DIR submodule sync --quiet --recursive
git submodule update --init --recursive $DOTBOT_DIR
git submodule update --init dotbot-windows
Copy-Item .\dotbot-windows\dotbot_windows.py $PLUGINSDIR

foreach ($PYTHON in ('python', 'python3')) {
    # Python redirects to Microsoft Store in Windows 10 when not installed
    if (& { $ErrorActionPreference = "SilentlyContinue"
            ![string]::IsNullOrEmpty((&$PYTHON -V))
            $ErrorActionPreference = "Stop" }) {
        &$PYTHON $(Join-Path $BASEDIR -ChildPath $DOTBOT_DIR | Join-Path -ChildPath $DOTBOT_BIN) --plugin-dir $PLUGINSDIR -d $BASEDIR -c $CONFIG $Args
        return
    }
}
Write-Error "Error: Cannot find Python."
