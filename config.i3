set $mod Mod1

# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below.
#font pango:monospace 8
font pango:Hack 9

# This font is widely installed, provides lots of unicode glyphs, right-to-left
# text rendering and scalability on retina/hidpi displays (thanks to pango).
#font pango:DejaVu Sans Mono 8

# Before i3 v4.8, we used to recommend this one as the default:
# font -misc-fixed-medium-r-normal--13-120-75-75-C-70-iso10646-1
# The font above is very space-efficient, that is, it looks good, sharp and
# clear in small sizes. However, its unicode glyph coverage is limited, the old
# X core fonts rendering does not support right-to-left and this being a bitmap
# font, it doesn’t scale on retina/hidpi displays.

# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# start a terminal
bindsym $mod+Return exec i3-sensible-terminal

# kill focused window
bindsym $mod+Shift+q kill

# start dmenu (a program launcher)
bindsym $mod+d exec --no-startup-id rofi -show run

# switching window with win+tab
bindsym $mod+Tab exec --no-startup-id rofi -show window

# use these keys for focus, movement, and resize directions
set $left   j
set $down   k
set $up     l
set $right  semicolon

# define names for workspaces
set $ws1    "1:1: " 
#set $ws1    "1:   Terminal "
set $ws2    "2:   Code "
set $ws3    "3:   Chromium "
set $ws4    "4:   Files "
set $ws5    "5:   Documents "
set $ws6    "6:   Media "
set $ws7    "7:   Design "
set $ws8    "8:   Chat "
set $ws9    "9:   General "
set $ws10   "10:   Settings "

# use $mod+Mouse to drag floating windows to their wanted position
floating_modifier $mod

# control focused window when follows the mouse movements
focus_follows_mouse no

# window border settings
#default_border          none
#default_floating_border none

# hiding borders adjacent to the screen edges
hide_edge_borders none

# set popups during fullscreen mode
popup_during_fullscreen smart

# assign program to workspace
assign [class="terminal"]           → $ws1
assign [class="Chromium"]           → $ws3
assign [class="Firefox"]            → $ws3
assign [class="Telegram"]           → $ws8
assign [class="Menu"]               → $ws10

# change focus
bindsym $mod+$left  focus left
bindsym $mod+$down  focus down
bindsym $mod+$up    focus up
bindsym $mod+$right focus right

# alternatively, you can use the cursor keys:
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# move focused window
bindsym $mod+Shift+$left    move left
bindsym $mod+Shift+$down    move down
bindsym $mod+Shift+$up      move up
bindsym $mod+Shift+$right   move right

# alternatively, you can use the cursor keys:
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# split in horizontal orientation
bindsym $mod+h split h

# split in vertical orientation
bindsym $mod+v split v

# enter fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+s layout stacking
bindsym $mod+w layout tabbed
bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

# focus the parent container
bindsym $mod+a focus parent

# focus the child container
#bindsym $mod+d focus child

# move the currently focused window to the scratchpad
bindsym $mod+Shift+minus move scratchpad

# show the next scratchpad window or hide the focused scratchpad window
bindsym $mod+minus scratchpad show

# tmux dropdown scratchpad
exec --no-startup-id xfce4-terminal --title scratch -e 'sh -c "tmux attach -t scratch || tmux new-session -s scratch"'
for_window [title="scratch"] floating enable
for_window [title="scratch"] move scratchpad, scratchpad show, move scratchpad

bindsym $mod+u [title="scratch"] scratchpad show

# move focused floating window to the center of all outputs
bindsym $mod+Shift+h move absolute position center

# move focused floating window to the current position of the cursor
bindsym $mod+Shift+m move position mouse

# set a window to stick to the glass
bindsym $mod+Shift+s sticky toggle

# shortcut to change window border
bindsym $mod+t border normal    0
bindsym $mod+y border pixel     1
bindsym $mod+g border none

# switch to workspace
bindsym $mod+1 workspace $ws1
bindsym $mod+2 workspace $ws2
bindsym $mod+3 workspace $ws3
bindsym $mod+4 workspace $ws4
bindsym $mod+5 workspace $ws5
bindsym $mod+6 workspace $ws6
bindsym $mod+7 workspace $ws7
bindsym $mod+8 workspace $ws8
bindsym $mod+9 workspace $ws9
bindsym $mod+0 workspace $ws10

# move focused container to workspace
bindsym $mod+Shift+1 move container to workspace $ws1
bindsym $mod+Shift+2 move container to workspace $ws2
bindsym $mod+Shift+3 move container to workspace $ws3
bindsym $mod+Shift+4 move container to workspace $ws4
bindsym $mod+Shift+5 move container to workspace $ws5
bindsym $mod+Shift+6 move container to workspace $ws6
bindsym $mod+Shift+7 move container to workspace $ws7
bindsym $mod+Shift+8 move container to workspace $ws8
bindsym $mod+Shift+9 move container to workspace $ws9
bindsym $mod+Shift+0 move container to workspace $ws10


# reload the configuration file
bindsym $mod+Shift+c reload
# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+r restart
# exit i3 (logs you out of your X session)
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

# resize window (you can also use the mouse for that)
#mode "resize" {
#        # These bindings trigger as soon as you enter the resize mode
#
        # Pressing left will shrink the window’s width.
        # Pressing right will grow the window’s width.
        # Pressing up will shrink the window’s height.
        # Pressing down will grow the window’s height.
#        bindsym j resize shrink width 10 px or 10 ppt
#        bindsym k resize grow height 10 px or 10 ppt
#        bindsym l resize shrink height 10 px or 10 ppt
#        bindsym semicolon resize grow width 10 px or 10 ppt

        # same bindings, but for the arrow keys
#        bindsym Left resize shrink width 10 px or 10 ppt
#        bindsym Down resize grow height 10 px or 10 ppt
#        bindsym Up resize shrink height 10 px or 10 ppt
#        bindsym Right resize grow width 10 px or 10 ppt

        # back to normal: Enter or Escape
#        bindsym Return mode "default"
#        bindsym Escape mode "default"
#}

#bindsym $mod+r mode "resize"

# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
#bar {
#        status_command i3blocks
#	position top
#}
# start i3bar to display a workspace bar

# shortcut applications
bindsym Print                   exec --no-startup-id gnome-screenshot
bindsym $mod+Shift+x            exec --no-startup-id i3lock-fancy -f Source-Sans-Pro

# volume
bindsym XF86AudioLowerVolume    exec --no-startup-id amixer -q -D pulse sset Master 5%- unmute
bindsym XF86AudioRaiseVolume    exec --no-startup-id amixer -q -D pulse sset Master 5%+ unmute
bindsym XF86AudioMute           exec --no-startup-id amixer -q -D pulse sset Master toggle

# resize window
bindsym $mod+r mode "  "
mode "  " {
    # pressing left and up will shrink the window's width and height
    # pressing right and down will grow the window's width and height
    bindsym $left   resize shrink width 10 px or 10 ppt
    bindsym $down   resize grow height 10 px or 10 ppt
    bindsym $up     resize shrink height 10 px or 10 ppt
    bindsym $right  resize grow width 10 px or 10 ppt

    # same bindings, but for the arrow keys
    bindsym Left    resize shrink width 10 px or 10 ppt
    bindsym Down    resize grow height 10 px or 10 ppt
    bindsym Up      resize shrink height 10 px or 10 ppt
    bindsym Right   resize grow width 10 px or 10 ppt

    # back to normal: Enter or win+r
    bindsym Return mode "default"
    bindsym $mod+r mode "default"
    bindsym Escape mode "default"
}


# set specific windows to floating mode
for_window [window_role="app"]                      floating enable
for_window [window_role="pop-up"]                   floating enable
for_window [window_role="task_dialog"]              floating enable
for_window [title="Preferences$"]                   floating enable
for_window [class="Lxappearance"]                   floating enable
for_window [class="Menu"]                           floating enable
for_window [class="Software-properties-gtk"]        floating enable

#2B83A6
# class                 border  backgr. text    indicator child_border
client.focused          #2B83A6 #2B83A6 #FFFFFF #DDDDDD   #2B83A6
client.focused_inactive #212121 #212121 #86888C #292D2E   #5A5A5A
client.unfocused        #212121 #212121 #86888C #292D2E   #5A5A5A
client.urgent           #D64E4E #D64E4E #FFFFFF #D64E4E   #D64E4E
client.placeholder      #212121 #0C0C0C #FFFFFF #212121   #262626
client.background       #212121

bar {
    status_command          i3blocks
    bindsym button4         nop
    bindsym button5         nop
    position                bottom
    tray_output             primary
    separator_symbol        "·"
    workspace_buttons       yes
    strip_workspace_numbers yes

    colors {
        background  #212121
        statusline  #DDDDDD
        separator   #666666
        # class             border  backgr. text
        focused_workspace   #2B83A6 #2B83A6 #FFFFFF
        active_workspace    #212121 #212121 #FFFFFF
        inactive_workspace  #212121 #212121 #86888C
        urgent_workspace    #D64E4E #D64E4E #FFFFFF
    }
}

exec --no-startup-id xautolock -time 10 -locker "i3lock-fancy -f Source-Sans-Pro"
exec --no-startup-id nm-applet
exec --no-startup-id mate-volume-control-applet
exec --no-startup-id compton --config ~/.config/compton/compton.conf

# Run mate-settings-daemon for gnome-keyring
# gnome-keyring-daemon is handled by ~/.profile
exec --no-startup-id /usr/lib/mate-settings-daemon/mate-settings-daemon

# Notifications
exec dunst
