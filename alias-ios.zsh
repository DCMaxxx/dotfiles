# Opens a project in xcode and gitup
alias oprj='open *.xcworkspace && gitup'

# Quits Xcode and GitUp
alias qprj='killall Xcode ; osascript -e "quit app \"GitUp\""'

# Run it in order to fix xcode
alias xcode_fix='killall Xcode ; rm -rf ~/Library/Developer/Xcode/DerivedData ; open /Applications/Xcode.app'

# Run it to reset a project's window configuration, if Xcode crashes when you open it
alias xcode_fix_windows='rm -f ./*.xcworkspace/xcuserdata/*.xcuserdatad/UserInterfaceState.xcuserstate'

# Run it if for some reason, cocoapods takes forever to install
alias cocoapods_fix='bundle exec pod repo remove master && bundle exec pod setup && bundle exec pod install'

record_simulator() {
    NAME="${1:-`date`}"
    xcrun simctl io booted recordVideo "$NAME"
}
