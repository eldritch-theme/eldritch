default: write

_deploy_palette VARIANT \
    background \
    currentline \
    overlay \
    foreground comment \
    cyan green \
    orange pink \
    purple red \
    yellow \
    light_background \
    light_surface light_overlay \
    light_foreground light_comment \
    light_orange light_pink \
    light_purple light_red:
    sed \
        -e "s/@@VARIANT@@/\u{{VARIANT}}/g" \
        -e "s/@@BACKGROUND@@/{{background}}/g" \
        -e "s/@@FOREGROUND@@/{{foreground}}/g" \
        -e "s/@@COMMENT@@/{{comment}}/g" \
        -e "s/@@COMMAND@@/{{cyan}}/g" \
        -e "s/@@PARAM@@/{{pink}}/g" \
        -e "s/@@KEYWORD@@/{{purple}}/g" \
        -e "s/@@QUOTE@@/{{yellow}}/g" \
        -e "s/@@REDIRECTION@@/{{pink}}/g" \
        -e "s/@@END@@/{{orange}}/g" \
        -e "s/@@ERROR@@/{{red}}/g" \
        -e "s/@@MUTED@@/{{overlay}}/g" \
        -e "s/@@SELECTION@@/{{currentline}}/g" \
        -e "s/@@SEARCH_MATCH@@/{{currentline}}/g" \
        -e "s/@@OPTION@@/{{green}}/g" \
        -e "s/@@OPERATOR@@/{{pink}}/g" \
        -e "s/@@ESCAPE@@/{{red}}/g" \
        -e "s/@@AUTOSUGGESTION@@/{{overlay}}/g" \
        -e "s/@@CANCEL@@/{{red}}/g" \
        -e "s/@@CWD@@/{{yellow}}/g" \
        -e "s/@@USER@@/{{cyan}}/g" \
        -e "s/@@HOST@@/{{cyan}}/g" \
        -e "s/@@HOST_REMOTE@@/{{green}}/g" \
        -e "s/@@STATUS@@/{{red}}/g" \
        -e "s/@@PAGER_PROGRESS@@/{{overlay}}/g" \
        -e "s/@@PAGER_PREFIX@@/{{pink}}/g" \
        -e "s/@@PAGER_COMPLETION@@/{{foreground}}/g" \
        -e "s/@@PAGER_DESCRIPTION@@/{{overlay}}/g" \
        -e "s/@@LIGHT_BACKGROUND@@/{{light_background}}/g" \
        -e "s/@@LIGHT_FOREGROUND@@/{{light_foreground}}/g" \
        -e "s/@@LIGHT_COMMENT@@/{{light_comment}}/g" \
        -e "s/@@LIGHT_COMMAND@@/{{light_comment}}/g" \
        -e "s/@@LIGHT_PARAM@@/{{light_pink}}/g" \
        -e "s/@@LIGHT_KEYWORD@@/{{light_purple}}/g" \
        -e "s/@@LIGHT_QUOTE@@/{{light_orange}}/g" \
        -e "s/@@LIGHT_REDIRECTION@@/{{light_pink}}/g" \
        -e "s/@@LIGHT_END@@/{{light_orange}}/g" \
        -e "s/@@LIGHT_ERROR@@/{{light_red}}/g" \
        -e "s/@@LIGHT_MUTED@@/{{light_overlay}}/g" \
        -e "s/@@LIGHT_SELECTION@@/{{light_surface}}/g" \
        -e "s/@@LIGHT_SEARCH_MATCH@@/{{light_surface}}/g" \
        -e "s/@@LIGHT_OPTION@@/{{light_purple}}/g" \
        -e "s/@@LIGHT_OPERATOR@@/{{light_pink}}/g" \
        -e "s/@@LIGHT_ESCAPE@@/{{light_red}}/g" \
        -e "s/@@LIGHT_AUTOSUGGESTION@@/{{light_overlay}}/g" \
        -e "s/@@LIGHT_CANCEL@@/{{light_red}}/g" \
        -e "s/@@LIGHT_CWD@@/{{light_comment}}/g" \
        -e "s/@@LIGHT_USER@@/{{light_comment}}/g" \
        -e "s/@@LIGHT_HOST@@/{{light_comment}}/g" \
        -e "s/@@LIGHT_HOST_REMOTE@@/{{light_orange}}/g" \
        -e "s/@@LIGHT_STATUS@@/{{light_red}}/g" \
        -e "s/@@LIGHT_PAGER_PROGRESS@@/{{light_overlay}}/g" \
        -e "s/@@LIGHT_PAGER_PREFIX@@/{{light_pink}}/g" \
        -e "s/@@LIGHT_PAGER_COMPLETION@@/{{light_foreground}}/g" \
        -e "s/@@LIGHT_PAGER_DESCRIPTION@@/{{light_overlay}}/g" \
        .eldritch-@@VARIANT@@.theme > themes/eldritch-{{VARIANT}}.theme

# Dusk palette (used as the light variant bundled into cthulhu and abyss)
dusk_background    := "f0f3f4"
dusk_surface       := "d5d9db"
dusk_overlay       := "c9cbcd"
dusk_foreground    := "1e2029"
dusk_comment       := "5b73dc"
dusk_orange        := "ffaf4d"
dusk_pink          := "fb5bb6"
dusk_purple        := "8a69f7"
dusk_red           := "fb5b66"

write:
    mkdir -p themes
    # Cthulhu (dark) + Dusk (light)
    just _deploy_palette "cthulhu" \
        "212337" \
        "323449" \
        "5b5c66" \
        "ebfafa" "7081d0" \
        "04d1f9" "37f499" \
        "f7c67f" "f265b5" \
        "a48cf2" "f16c75" \
        "f1fc79" \
        {{dusk_background}} \
        {{dusk_surface}} {{dusk_overlay}} \
        {{dusk_foreground}} {{dusk_comment}} \
        {{dusk_orange}} {{dusk_pink}} \
        {{dusk_purple}} {{dusk_red}}
    # Abyss (dark) + Dusk (light)
    just _deploy_palette "abyss" \
        "171928" \
        "252738" \
        "474852" \
        "d8e6e6" "506299" \
        "0396b3" "2dcc82" \
        "d4a666" "d154a1" \
        "8b75d9" "cc5860" \
        "ccd663" \
        {{dusk_background}} \
        {{dusk_surface}} {{dusk_overlay}} \
        {{dusk_foreground}} {{dusk_comment}} \
        {{dusk_orange}} {{dusk_pink}} \
        {{dusk_purple}} {{dusk_red}}
