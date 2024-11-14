#!/bin/bash

source "${SCRIPTS}/color/styles.sh"

#
# Prints a styled message.
#
# The messages is styled using the following format:
# 
# <esc> [ <style> ; <fg_color> ; <bg_color> m <text_to_style> <reset>
#
print_styled() {
    local style
    local fg_color
    local bg_color
    local message

    style=$1
    fg_color=$2
    bg_color=$3
    message=$4

    echo -e "${ESC}[${style};${fg_color};${bg_color}m${message}${RESET}"
}

#
# Prints a success message to stdout using green text as the only styling.
#
print_success() {
    local message
    message=$1
    print_styled "$STYLE_NORMAL" "$FG_GREEN" "$BG_NORMAL" "$message"
}

#
# Prints a warning message to stderr using yellow text as the only styling.
#
print_warn() {
    local message
    message=$1
    print_styled "$STYLE_NORMAL" "$FG_YELLOW" "$BG_NORMAL" "$message" >&2
}

#
# Prints a warning message to stderr using red text as the only styling.
#
print_error() {
    local message
    message=$1
    print_styled "$STYLE_NORMAL" "$FG_RED" "$BG_NORMAL" "$message" >&2
}