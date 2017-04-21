# Sets the keystroke to a much faster rate.
# Resets by setting the keystroke in Settings/Keyboard
# See: http://hints.macworld.com/article.php?story=20090823193018149
KEYSTROKE_RATE_COMMAND="defaults write NSGlobalDomain KeyRepeat -int 1"

# Sets the mission control animations to a be much faster
# See: http://osxdaily.com/2012/02/14/speed-up-misson-control-animations-mac-os-x/
MISSION_CONTROL_ANIMATIONS_COMMAND="defaults write com.apple.dock expose-animation-duration -float 0.1 && killall Dock"
MISSION_CONTROL_ANIMATIONS_RESET_COMMAND="defaults delete com.apple.dock expose-animation-duration && killall Dock"

# Adds duplicate lines, duplicate and delete current line to xcode.
# Needs to setup the custom keyboard shortcuts too
# ⌃⌥⌘D = Duplicate lines
# ⌘D = Duplicate current line
# ⌃⇧K = Delete current line
# See: http://stackoverflow.com/questions/10266170/xcode-duplicate-line
XCODE_COMMANDS_FILE="/Applications/Xcode.app/Contents/Frameworks/IDEKit.framework/Versions/A/Resources/IDETextKeyBindingSet.plist"
XCODE_COMMANDS_CONTENT="
<key>Customized</key>
<dict>
    <key>Duplicate Lines</key>
    <string>selectLine:, copy:, moveToEndOfLine:, insertNewline:, paste:, deleteBackward:</string>
    <key>Duplicate Current Line</key>
    <string>moveToBeginningOfLine:, deleteToEndOfLine:, yank:, insertNewline:, moveToBeginningOfLine:, yank:</string>
    <key>Delete Current Line</key>
    <string>selectLine:, delete:</string>
</dict>
"
