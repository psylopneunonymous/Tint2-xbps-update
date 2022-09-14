# Tint2-xbps-update
Module for updating Void Linux
## Installation

Download to the tint2 config folder and get Papirus icons, or change the icon in script to yuor prefered icon.

Open Tint2 settings and make changes that reflect the following image if you have herbstluftwm:

![Tint2Settings](https://github.com/psylopneunonymous/Tint2-xbps-update/blob/main/gscreenshot_2022-09-14-151011.png)

Alternatively use the following in your tint2rc:
```
#-------------------------------------
# Executor 1
execp = new
execp_command = ~/.config/tint2/updates.sh
execp_interval = 21600
execp_has_icon = 1
execp_cache_icon = 1
execp_continuous = 0
execp_markup = 0
execp_monitor = all
execp_tooltip = Left Click - Update || Right Click - Refresh
execp_lclick_command = herbstclient spawn octoxbps
execp_rclick_command = killall tint2 && tint2
execp_mclick_command = 
execp_uwheel_command = 
execp_dwheel_command = 
execp_font = Hack Nerd Font Bold 10
execp_font_color = #94e2d5 100
execp_padding = 2 2
execp_background_id = 0
execp_centered = 1
execp_icon_w = 24
execp_icon_h = 24

```
* If yout use another window manager, use the apropriate opening command on the left click command instead of `herbstclient spawn`.
* If you do not have Nerd Fonts, change the font to your preferred font

Dependencies: octoxbps, tint2, Papyrus Icons, killall (or alias from pkill to killall)

## Usage

Left click to open octoxbps, right click to refresh the bar and icon.
