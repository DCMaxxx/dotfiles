# Opens a project in xcode and gitup
alias oprj='open *.xcworkspace && gitup'

# Updates the plugins to allow to run for xcode
alias update_xcode_plugins='find ~/Library/Application\ Support/Developer/Shared/Xcode/Plug-ins -name Info.plist -maxdepth 3 | xargs -I{} defaults write {} DVTPlugInCompatibilityUUIDs -array-add `defaults read /Applications/Xcode.app/Contents/Info DVTPlugInCompatibilityUUID`'

# Run it in order to fix xcode
alias fix_xcode='killall Xcode && rm -rf ~/Library/Developer/Xcode/DerivedData ; open /Applications/Xcode.app'

# Run it in order to fix xcode
alias fix_xcode7='killall Xcode\ 7 && rm -rf ~/Library/Developer/Xcode/DerivedData ; open /Applications/Xcode\ 7.app'

# Run it if for some reason, cocoapods takes forever to install
alias clear_pod_repo='bundle exec pod repo remove master && bundle exec pod setup && bundle exec pod install'
