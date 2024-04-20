#!/bin/zsh
key="$1"
# Ejecuta lsusb y busca el ID del dispositivo OLKB Preonic
lsusb_output=$(lsusb)
if echo "$lsusb_output" | grep -q "03a8:a649"; then
    case $1 in
        "1")
            i3-dmenu-desktop
            ;;
        "2")
            rofi -show drun -show-icons
            ;;
        "3")
            i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -B 'Yes, exit i3' 'i3-msg exit'
            ;;
        "4")
            nautilus
            ;;
        "5")
            gnome-control-center
            ;;
        "6")
            ;;
        "7")
            ;;
        "9")
            ;;
        "0")
            i3lock -c 000000
            ;;
        ".")
            ;;
        ",")
            ;;
        "ñ")
            ;;
        "p")
            i3-msg kill
            ;;
        "y")
            ;;
        "f")
            ;;
        "g")
            /home/mauro/.config/dotfiles/polybar/forest/scripts/powermenu.sh
            ;;
        "c")
            i3-msg workspace prev
            ;;
        "h")
            i3-msg workspace next
            ;;
        "l")
            i3-msg mode resize
            ;;
        "a")
            i3-msg workspace 1
            ;;
        "o")
            i3-msg workspace 2
            ;;
        "e")
            i3-msg workspace 3
            ;;
        "u")
            i3-msg workspace 4
            ;;
        "i")
            i3-msg workspace 5
            ;;
        d)
            i3-msg workspace 6 
            ;;
        "r") 
            i3-msg workspace 7
            ;;
        "t")
            i3-msg workspace 8
            ;;
        "n")
            i3-msg workspace 9
            ;;
        "s")
            i3-msg workspace 10
            ;;  
        "-") 
            ;;
        "q")
            notify-send -i /usr/share/icons/Win11-blue-dark/status/22/yum-indicator-info.svg "reload"
            i3-msg reload
            ;;
        "j")
            notify-send -i /usr/share/icons/Win11-blue-dark/status/22/yum-indicator-info.svg "restart"
            i3-msg restart
            ;;
        "k")
            ;;
        "x")
            ;;
        "b")
            ;;
        "m")
            i3-msg split v
            ;;
        "w")
            i3-msg split h
            ;;
        "v")
            ;;
        "z")
            i3-msg focus parent
            ;;
        "S1")
            ;;
        "S2")
            ;;
        "S3")
            ;;
        "S4")
            ;;
        "S5")
            ;;
        "S6")
            ;;
        "S7")
            ;;
        "S8")
            ;;
        "S9")
            ;;
        "S0")
            ;;
        "S.")
            ;;
        "S,")
            ;;
        "Sñ")
            ;;
        "Sp")
            ;;
        "Sy")
            ;;
        "Sf")
            ;;
        "Sg")
            ;;
        "Sc")
            ;;
        "Sh")
            ;;
        "Sl")
            ;;
        "Sa")
            i3-msg move window to workspace 1  
            ;;
        "So")
            i3-msg move window to workspace 2  
            ;;
        "Se")
            i3-msg move window to workspace 3  
            ;;
        "Su")
            i3-msg move window to workspace 4  
            ;;
        "Si")
            i3-msg move window to workspace 5  
            ;;
        "Sd")
            i3-msg move window to workspace 6  
            ;;
        "Sr")
            i3-msg move window to workspace 7  
            ;;
        "St")
            i3-msg move window to workspace 8  
            ;;
        "Sn")
            i3-msg move window to workspace 9  
            ;;
        "Ss")
            i3-msg move window to workspace 10  
            ;;
        "S-")
            ;;
        "Sq")
            ;;
        "Sj")
            ;;
        "Sk")
            ;;
        "Sx")
            ;;
        "Sb")
            ;;
        "Sm")
            ;;
        "Sw")
            ;;
        "Sv")
            ;;
        "Sz")
            ;;
        "C1")
            ;;
        "C2")
            ;;
        "C3")
            ;;
        "C4")
            ;;
        "C5")
            ;;
        "C6")
            ;;
        "C7")
            ;;
        "C8")
            ;;
        "C9")
            ;;
        "C0")
            ;;
        "C.")
            ;;
        "C,")
            ;;
        "Cñ")
            ;;
        "Cp")
            ;;
        "Cy")
            ;;
        "Cf")
            ;;
        "Cg")
            ;;
        "Cc")
            ;;
        "Cl")
            ;;
        "Ca")
            ;;
        "Co")
            ;;
        "Ce")
            ;;
        "Cu")
            ;;
        "Ci")
            ;;
        "Cd")
            ;;
        "Cr")
            ;;
        "Ct")
            ;;
        "Cn")
            ;;
        "Cs")
            ;;
        "C-")
            ;;
        "Cq")
            ;;
        "Cj")
            ;;
        "Ck")
            ;;
        "Cx")
            ;;
        "Cb")
            ;;
        "Cm")
            ;;
        "Cw")
            ;;
        "Cv")
            ;;
        "Cz")
            ;;
        *)
            echo "default"
            ;;
    esac
else
    echo "El dispositivo OLKB Preonic no está conectado."
fi