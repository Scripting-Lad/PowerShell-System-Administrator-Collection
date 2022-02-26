function get-remotedesktopconfig

{if ((get-itemproperty -path 'HKLM:\system\CurrentControlSet\Control\Terminal Server').fdenytsconnections -eq 1)

    {"Connections not allowed"}

elseif ((Get-ItemProperty -path 'HKLM:\system\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp').userauthentication -eq 1)

    {"Only secure connections allowed"}

else {"All Connections Allowed"}

}