<!-- DO NOT CHANGE THIS -->
<p align="center">
<img src="https://raw.github.com/eldritch-theme/eldritch/master/assets/logo/logo.png" width=150>
</p>
<p>
Eldritch is a community-driven dark theme inspired by Lovecraftian horror. With tones from the dark abyss and an emphasis on green and blue, it caters to those who appreciate the darker side of life.
</p>

Main Theme repo can be found [here](https://github.com/eldritch-theme/eldritch)

### Showcase

<!-- Your screenshot should go here -->

**Eldritch** for Warp Terminal:

<img src="screenshot.png" alt="Screenshot of Warp Terminal with Eldritch color theme"/><br/>

**Fancy Eldritch** for Warp Terminal:

<img src="screenshot-fancy.png" alt="Screenshot of Warp Terminal with Fancy Eldritch color theme"/><br/>

Example of Warp Terminal row highlight:

<img src="highlight.png" alt="Screenshot of row highlight in Warp Terminal"/><br/>

### Installation

The easiest way to install this theme is to clone the repository into the `themes` directory of Warp.

1. Set up an environment variable to make life easier:

```bash
# Mac
export WARP_THEME_DIR="${HOME}/.warp/themes"
# Linux
export WARP_THEME_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/warp-terminal/themes"
```

2. Install the theme:

```bash
mkdir -p "${WARP_THEME_DIR}" && \
  git clone --depth=1 https://github.com/eldritch-theme/warp.git \
  "${WARP_THEME_DIR}/eldritch"
```

3. Configure Warp to use either `Eldritch` or `Fancy Eldritch`.
