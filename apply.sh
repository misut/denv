PATHCURRENT=$(pwd)
LOCALAPPDATA=$(powershell.exe '$env:LocalAppData')
LOCALAPPDATA=$(wslpath -au "${LOCALAPPDATA}")
LOCALAPPDATA=${LOCALAPPDATA:0:-1}

cd "${LOCALAPPDATA}"
cd Packages/Microsoft.WindowsTerminal_*/LocalState
cp -f ${PATHCURRENT}/settings/windows_terminal/settings.json .
