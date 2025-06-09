# #!/bin/bash
# # /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# # This script is used to play system sounds.
# # Script is used by Volume.Sh and ScreenShots.sh 

# theme="freedesktop" # Set the theme for the system sounds.
# mute=false          # Set to true to mute the system sounds.

# # Mute individual sounds here.
# muteScreenshots=false
# muteVolume=false

# # Exit if the system sounds are muted.
# if [[ "$mute" = true ]]; then
#     exit 0
# fi

# # Choose the sound to play.
# if [[ "$1" == "--screenshot" ]]; then
#     if [[ "$muteScreenshots" = true ]]; then
#         exit 0
#     fi
#     soundoption="screen-capture.*"
# elif [[ "$1" == "--volume" ]]; then
#     if [[ "$muteVolume" = true ]]; then
#         exit 0
#     fi
#     soundoption="audio-volume-change.*"
# elif [[ "$1" == "--error" ]]; then
#     if [[ "$muteScreenshots" = true ]]; then
#         exit 0
#     fi
#     soundoption="dialog-error.*"
# else
#     echo -e "Available sounds: --screenshot, --volume, --error"
#     exit 0
# fi

# # Set the directory defaults for system sounds.
# if [ -d "/run/current-system/sw/share/sounds" ]; then
#     systemDIR="/run/current-system/sw/share/sounds" # NixOS
# else
#     systemDIR="/usr/share/sounds"
# fi
# userDIR="$HOME/.local/share/sounds"
# defaultTheme="freedesktop"

# # Prefer the user's theme, but use the system's if it doesn't exist.
# sDIR="$systemDIR/$defaultTheme"
# if [ -d "$userDIR/$theme" ]; then
#     sDIR="$userDIR/$theme"
# elif [ -d "$systemDIR/$theme" ]; then
#     sDIR="$systemDIR/$theme"
# fi

# # Get the theme that it inherits.
# iTheme=$(cat "$sDIR/index.theme" | grep -i "inherits" | cut -d "=" -f 2)
# iDIR="$sDIR/../$iTheme"

# # Find the sound file and play it.
# sound_file=$(find -L $sDIR/stereo -name "$soundoption" -print -quit)
# if ! test -f "$sound_file"; then
#     sound_file=$(find -L $iDIR/stereo -name "$soundoption" -print -quit)
#     if ! test -f "$sound_file"; then
#         sound_file=$(find -L $userDIR/$defaultTheme/stereo -name "$soundoption" -print -quit)
#         if ! test -f "$sound_file"; then
#             sound_file=$(find -L $systemDIR/$defaultTheme/stereo -name "$soundoption" -print -quit)
#             if ! test -f "$sound_file"; then
#                 echo "Error: Sound file not found."
#                 exit 1
#             fi
#         fi
#     fi
# fi

# # pipewire priority, fallback pulseaudio
# pw-play "$sound_file" || pa-play "$sound_file"















#!/bin/bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# This script is used to play custom system sounds.
# Used by Volume.sh and ScreenShots.sh 

# 🔊 CUSTOM CONFIG
customSoundDir="$HOME/.config/hypr/Sounds/"  # ✅ Your custom sound /home/sauce/.config/hypr/Sounds/
mute=false

# Mute specific sounds here
muteScreenshots=false
muteVolume=false

# 🔇 Global mute check
if [[ "$mute" = true ]]; then
    exit 0
fi

# 🎯 Choose the correct sound name
if [[ "$1" == "--screenshot" ]]; then
    if [[ "$muteScreenshots" = true ]]; then
        exit 0
    fi
    sound_file="$customSoundDir/ehehe.ogg"
elif [[ "$1" == "--volume" ]]; then
    if [[ "$muteVolume" = true ]]; then
        exit 0
    fi
    sound_file="$customSoundDir/nigga.ogg"
elif [[ "$1" == "--error" ]]; then
    sound_file="$customSoundDir/uweh.ogg"
else
    echo -e "Available sounds: --screenshot, --volume, --error"
    exit 0
fi

# 🔎 Check if the sound exists
if [[ ! -f "$sound_file" ]]; then
    echo "⚠️ Sound file not found: $sound_file"
    exit 1
fi

# 🔊 Play sound using pipewire or fallback to pulseaudio
pw-play "$sound_file" || paplay "$sound_file"
