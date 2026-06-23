default: write

_deploy_palette VARIANT \
    background \
    currentline \
    foreground \
    comment \
    black \
    cyan \
    green \
    purple \
    red \
    yellow \
    bright_red bright_green bright_yellow \
    bright_comment bright_purple bright_cyan \
    bright_white bright_black:
    sed \
        -e "s/@@BACKGROUND@@/{{background}}/g" \
        -e "s/@@CURRENTLINE@@/{{currentline}}/g" \
        -e "s/@@FOREGROUND@@/{{foreground}}/g" \
        -e "s/@@COMMENT@@/{{comment}}/g" \
        -e "s/@@BLACK@@/{{black}}/g" \
        -e "s/@@CYAN@@/{{cyan}}/g" \
        -e "s/@@GREEN@@/{{green}}/g" \
        -e "s/@@PURPLE@@/{{purple}}/g" \
        -e "s/@@RED@@/{{red}}/g" \
        -e "s/@@YELLOW@@/{{yellow}}/g" \
        -e "s/@@BRIGHT_RED@@/{{bright_red}}/g" \
        -e "s/@@BRIGHT_GREEN@@/{{bright_green}}/g" \
        -e "s/@@BRIGHT_YELLOW@@/{{bright_yellow}}/g" \
        -e "s/@@BRIGHT_COMMENT@@/{{bright_comment}}/g" \
        -e "s/@@BRIGHT_PURPLE@@/{{bright_purple}}/g" \
        -e "s/@@BRIGHT_CYAN@@/{{bright_cyan}}/g" \
        -e "s/@@BRIGHT_WHITE@@/{{bright_white}}/g" \
        -e "s/@@BRIGHT_BLACK@@/{{bright_black}}/g" \
        -e "s/@@VARIANT@@/{{VARIANT}}/g" \
        '.Eldritch@@VARIANT@@.colorscheme' > themes/Eldritch{{VARIANT}}.colorscheme

write:
    mkdir -p themes

    # Cthulhu
    just _deploy_palette "Cthulhu" \
        "33,35,55" \
        "50,52,73" \
        "235,250,250" \
        "112,129,208" \
        "69,71,89" \
        "4,209,249" \
        "55,244,153" \
        "164,140,242" \
        "241,108,117" \
        "241,252,121" \
        "251,91,102" "56,255,159" "255,249,82" \
        "91,115,220" "138,105,247" "10,214,255" \
        "235,250,250" "91,92,102"

    # Abyss
    just _deploy_palette "Abyss" \
        "23,25,40" \
        "37,39,56" \
        "216,230,230" \
        "80,98,153" \
        "53,55,70" \
        "3,150,179" \
        "45,204,130" \
        "139,117,217" \
        "204,88,96" \
        "204,214,99" \
        "241,108,117" "55,244,153" "241,252,121" \
        "112,129,208" "164,140,242" "4,209,249" \
        "235,250,250" "71,72,82"

    # Dusk
    just _deploy_palette "Dusk" \
        "240,243,244" \
        "226,230,232" \
        "30,32,41" \
        "91,115,220" \
        "213,217,219" \
        "10,214,255" \
        "56,255,159" \
        "138,105,247" \
        "251,91,102" \
        "255,175,77" \
        "251,91,102" "56,255,159" "255,175,77" \
        "91,115,220" "138,105,247" "10,214,255" \
        "71,72,82" "201,203,205"
