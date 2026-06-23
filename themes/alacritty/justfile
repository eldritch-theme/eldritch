default: write

_deploy_palette VARIANT \
    background \
    foreground comment \
    cyan green \
    purple red \
    yellow \
    cursor_accent vi_cursor_accent \
    search_match_bg hint_bg \
    selection_bg \
    black white \
    bright_black bright_red bright_green bright_yellow \
    bright_comment bright_purple bright_cyan bright_white:
    sed \
        -e "s/@@BACKGROUND@@/{{background}}/g" \
        -e "s/@@FOREGROUND@@/{{foreground}}/g" \
        -e "s/@@COMMENT@@/{{comment}}/g" \
        -e "s/@@CYAN@@/{{cyan}}/g" \
        -e "s/@@GREEN@@/{{green}}/g" \
        -e "s/@@PURPLE@@/{{purple}}/g" \
        -e "s/@@RED@@/{{red}}/g" \
        -e "s/@@YELLOW@@/{{yellow}}/g" \
        -e "s/@@CURSOR_ACCENT@@/{{cursor_accent}}/g" \
        -e "s/@@VI_CURSOR_ACCENT@@/{{vi_cursor_accent}}/g" \
        -e "s/@@SEARCH_MATCH_BG@@/{{search_match_bg}}/g" \
        -e "s/@@HINT_BG@@/{{hint_bg}}/g" \
        -e "s/@@SELECTION_BG@@/{{selection_bg}}/g" \
        -e "s/@@BLACK@@/{{black}}/g" \
        -e "s/@@WHITE@@/{{white}}/g" \
        -e "s/@@BRIGHT_BLACK@@/{{bright_black}}/g" \
        -e "s/@@BRIGHT_RED@@/{{bright_red}}/g" \
        -e "s/@@BRIGHT_GREEN@@/{{bright_green}}/g" \
        -e "s/@@BRIGHT_YELLOW@@/{{bright_yellow}}/g" \
        -e "s/@@BRIGHT_COMMENT@@/{{bright_comment}}/g" \
        -e "s/@@BRIGHT_PURPLE@@/{{bright_purple}}/g" \
        -e "s/@@BRIGHT_CYAN@@/{{bright_cyan}}/g" \
        -e "s/@@BRIGHT_WHITE@@/{{bright_white}}/g" \
        .eldritch-@@VARIANT@@.toml > themes/eldritch-{{VARIANT}}.toml

write:
    mkdir -p themes

    # Cthulhu palette
    just _deploy_palette "cthulhu" \
        "#212337" \
        "#ebfafa" "#7081d0" \
        "#04d1f9" "#37f499" \
        "#a48cf2" "#f16c75" \
        "#f1fc79" \
        "#f7c67f" "#a48cf2" \
        "#f7c67f" "#f1fc79" \
        "#323449" \
        "#454759" "#f0f3f4" \
        "#5b5c66" "#fb5b66" "#38ff9f" "#fff952" \
        "#5b73dc" "#8a69f7" "#0ad6ff" "#ebfafa"

    # Abyss palette
    just _deploy_palette "abyss" \
        "#171928" \
        "#d8e6e6" "#506299" \
        "#0396b3" "#2dcc82" \
        "#8b75d9" "#cc5860" \
        "#ccd663" \
        "#d4a666" "#8b75d9" \
        "#d4a666" "#ccd663" \
        "#252738" \
        "#353746" "#d8e6e6" \
        "#474852" "#f16c75" "#37f499" "#f1fc79" \
        "#7081d0" "#a48cf2" "#04d1f9" "#ebfafa"

    # Dusk palette
    just _deploy_palette "dusk" \
        "#f0f3f4" \
        "#1e2029" "#5b73dc" \
        "#0ad6ff" "#38ff9f" \
        "#8a69f7" "#fb5b66" \
        "#ffaf4d" \
        "#ffaf4d" "#8a69f7" \
        "#ffaf4d" "#8a69f7" \
        "#e2e6e8" \
        "#e2e6e8" "#353746" \
        "#d5d9db" "#fb5b66" "#38ff9f" "#ffaf4d" \
        "#5b73dc" "#8a69f7" "#0ad6ff" "#474852"
