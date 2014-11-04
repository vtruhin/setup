#!/bin/zsh

defaults write com.googlecode.iterm2 AdjustWindowForFontSizeChange 0;
defaults write com.googlecode.iterm2 AppleAntiAliasingThreshold 1
defaults write com.googlecode.iterm2 AppleScrollAnimationEnabled 0
defaults write com.googlecode.iterm2 AppleSmoothFixedFontsSizeThreshold 1
defaults write com.googlecode.iterm2 CheckTestRelease 1
defaults write com.googlecode.iterm2 SUAutomaticallyUpdate 1
defaults write com.googlecode.iterm2 SUEnableAutomaticChecks 1

defaults write com.googlecode.iterm2 UseBorder 0
defaults write com.googlecode.iterm2 JobName 1

defaults write com.googlecode.iterm2 UseCompactLabel 1
defaults write com.googlecode.iterm2 UseLionStyleFullscreen 1
defaults write com.googlecode.iterm2 WebKitDefaultFontSize 11
defaults write com.googlecode.iterm2 WebKitStandardFont "Lucida Grande"

defaults write com.googlecode.iterm2 PromptOnClose 1
defaults write com.googlecode.iterm2 PromptOnQuit 0
defaults write com.googlecode.iterm2 QuitWhenAllWindowsClosed 0

#ITERM_PROFILE="$(cat $DOTFILES/packages/_cli/preferences/iTerm.bookmark | sed -e ':a' -e 'N' -e '$!ba' -e 's/\n/ /g')" && defaults write com.googlecode.iterm2 "New Bookmarks" $ITERM_PROFILE