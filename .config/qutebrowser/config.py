# 🌸 pink_dream qutebrowser



# ─── Palette ─────────────────────────────────────
base     = "#2a1f2d"
mantle   = "#1f1621"
text     = "#f8e7f3"
subtext  = "#c9a9c4"
pink     = "#ff9ec7"
pink2    = "#ff7eb6"
lavender = "#e7c6ff"
mint     = "#b8e0d2"
yellow   = "#f9e2af"
blue     = "#a6c8ff"
comment  = "#8a6f8f"

# ─── Fonts ───────────────────────────────────────
c.fonts.default_family = "JetBrainsMono Nerd Font"
c.fonts.default_size   = "11pt"
c.fonts.tabs.selected  = "default_size default_family"
c.fonts.tabs.unselected = "default_size default_family"
c.fonts.statusbar      = "default_size default_family"
c.fonts.completion.entry = "default_size default_family"
c.fonts.completion.category = "bold default_size default_family"
c.fonts.hints          = "bold default_size default_family"

# ─── Status bar ──────────────────────────────────
c.statusbar.show = "always"
c.statusbar.widgets = [
    "keypress",
    "url",
    "scroll",
    "progress",
    "history",
    "tabs",
]
c.colors.statusbar.normal.bg = base
c.colors.statusbar.normal.fg = text
c.colors.statusbar.command.bg = mantle
c.colors.statusbar.command.fg = pink
c.colors.statusbar.command.private.bg = mantle
c.colors.statusbar.command.private.fg = lavender
c.colors.statusbar.insert.bg = pink
c.colors.statusbar.insert.fg = base
c.colors.statusbar.passthrough.bg = lavender
c.colors.statusbar.passthrough.fg = base
c.colors.statusbar.private.bg = mantle
c.colors.statusbar.private.fg = lavender
c.colors.statusbar.progress.bg = pink
c.colors.statusbar.url.fg = pink
c.colors.statusbar.url.success.https.fg = mint
c.colors.statusbar.url.success.http.fg = pink2
c.colors.statusbar.url.error.fg = pink2
c.colors.statusbar.url.warn.fg = yellow
c.colors.statusbar.url.hover.fg = blue

# ─── Tabs ────────────────────────────────────────
c.tabs.show = "multiple"
c.tabs.position = "top"
c.tabs.title.format = "{index}: {current_title}"
c.tabs.title.format_pinned = "{index}"
c.tabs.width = "12%"
c.tabs.indicator.width = 3
c.tabs.indicator.padding = {"top": 4, "bottom": 4, "left": 0, "right": 6}

c.colors.tabs.bar.bg = mantle
c.colors.tabs.odd.bg = mantle
c.colors.tabs.odd.fg = subtext
c.colors.tabs.even.bg = base
c.colors.tabs.even.fg = subtext
c.colors.tabs.selected.odd.bg = pink
c.colors.tabs.selected.odd.fg = base
c.colors.tabs.selected.even.bg = pink
c.colors.tabs.selected.even.fg = base
c.colors.tabs.indicator.start = lavender
c.colors.tabs.indicator.stop = mint
c.colors.tabs.indicator.error = pink2
c.colors.tabs.indicator.system = "rgb"

c.colors.tabs.pinned.odd.bg = base
c.colors.tabs.pinned.odd.fg = pink
c.colors.tabs.pinned.even.bg = base
c.colors.tabs.pinned.even.fg = pink
c.colors.tabs.pinned.selected.odd.bg = pink
c.colors.tabs.pinned.selected.odd.fg = base
c.colors.tabs.pinned.selected.even.bg = pink
c.colors.tabs.pinned.selected.even.fg = base

# ─── Completion menu ─────────────────────────────
c.completion.shrink = True
c.colors.completion.fg = [text, text, text]
c.colors.completion.odd.bg = mantle
c.colors.completion.even.bg = base
c.colors.completion.category.fg = pink
c.colors.completion.category.bg = mantle
c.colors.completion.category.border.top = mantle
c.colors.completion.category.border.bottom = mantle
c.colors.completion.item.selected.fg = base
c.colors.completion.item.selected.bg = pink
c.colors.completion.item.selected.border.top = pink
c.colors.completion.item.selected.border.bottom = pink
c.colors.completion.item.selected.match.fg = pink2
c.colors.completion.match.fg = lavender
c.colors.completion.scrollbar.fg = pink
c.colors.completion.scrollbar.bg = mantle

# ─── Downloads ───────────────────────────────────
c.colors.downloads.bar.bg = mantle
c.colors.downloads.start.fg = base
c.colors.downloads.start.bg = lavender
c.colors.downloads.stop.fg = base
c.colors.downloads.stop.bg = mint
c.colors.downloads.error.fg = base
c.colors.downloads.error.bg = pink2
c.colors.downloads.system.fg = "rgb"
c.colors.downloads.system.bg = "rgb"

# ─── Hints ───────────────────────────────────────
c.hints.border = f"2px solid {pink}"
c.colors.hints.bg = pink
c.colors.hints.fg = base
c.colors.hints.match.fg = lavender

# ─── Keyhints ────────────────────────────────────
c.colors.keyhint.fg = text
c.colors.keyhint.suffix.fg = pink
c.colors.keyhint.bg = mantle

# ─── Messages ────────────────────────────────────
c.colors.messages.error.fg = base
c.colors.messages.error.bg = pink2
c.colors.messages.error.border = pink2
c.colors.messages.warning.fg = base
c.colors.messages.warning.bg = yellow
c.colors.messages.warning.border = yellow
c.colors.messages.info.fg = text
c.colors.messages.info.bg = mantle
c.colors.messages.info.border = mantle

# ─── Prompts ─────────────────────────────────────
c.colors.prompts.fg = text
c.colors.prompts.bg = mantle
c.colors.prompts.selected.bg = pink
c.colors.prompts.selected.fg = base
c.colors.prompts.border = f"1px solid {pink}"

# ─── Webpage defaults ────────────────────────────
c.colors.webpage.preferred_color_scheme = "dark"
c.colors.webpage.darkmode.enabled = True
c.colors.webpage.darkmode.algorithm = "lightness-cielab"
c.colors.webpage.darkmode.policy.images = "smart"
c.colors.webpage.darkmode.policy.page = "smart"
c.colors.webpage.darkmode.threshold.background = 200
c.colors.webpage.darkmode.threshold.foreground = 100
c.colors.webpage.bg = base

# ─── Selection & caret ───────────────────────────
c.colors.webpage.darkmode.contrast = 0.0

# ─── Quality of life ─────────────────────────────
c.auto_save.session = True
c.session.lazy_restore = True
c.scrolling.smooth = True
c.editor.command = ["alacritty", "-e", "helix", "{file}"]
c.downloads.location.directory = "~/Downloads"
c.url.start_pages = ["https://duckduckgo.com"]
c.url.searchengines = {
    "DEFAULT": "https://duckduckgo.com/?q={}",
    "g": "https://www.google.com/search?q={}",
    "yt": "https://youtube.com/results?search_query={}",
    "gh": "https://github.com/search?q={}",
    "aw": "https://wiki.archlinux.org/?search={}",
    "dw": "https://dictionary.cambridge.org/dictionary/english/={}",
    "dp": "https://dictionary.cambridge.org/pronunciation/english/={}",
}


config.bind(",y", 'spawn mpv -f "bestvideo[height<=480]+bestaudio/best[height<=480]" {url}')
config.load_autoconfig()
