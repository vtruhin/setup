#!/bin/zsh

brewcaskinstall "Flux"
openifnot "Flux" "/Applications/Flux.app"

# Trim enable for non Apple SSD
brewcaskinstall "Trim Enabler"

# from AppStore
openifnot "Tweetbot" "/Applications/Tweetbot.app"

# from AppStore
# todo get this app not from appstore
# https://github.com/TermiT/Flycut/issues/56
openifnot "Flycut" "/Applications/Flycut.app"
plistbuddy "Application Support/Flycut/com.generalarcade.flycut" "Set stickyBezel 1"
plistbuddy "Application Support/Flycut/com.generalarcade.flycut" "Set displayNum 40"
plistbuddy "Application Support/Flycut/com.generalarcade.flycut" "Set rememberNum 99"
plistbuddy "Application Support/Flycut/com.generalarcade.flycut" "Set menuIcon 1"
plistbuddy "Application Support/Flycut/com.generalarcade.flycut" "Set loadOnStartup 1"
plistbuddy "Application Support/Flycut/com.generalarcade.flycut" "Set removeDuplicates 1"

brewcaskinstall "Prefs Editor"

# enhance OS X with some small utilities
brewcaskinstall "AppCleaner"

brewcaskinstall "Day-O"
defaults write com.shauninman.Day-O autoLaunch 1
defaults write com.shauninman.Day-O showIcon 1
defaults write com.shauninman.Day-O firstRun 0
defaults write com.shauninman.Day-O format ""
openifnot "Day-O" "/Applications/Day-O.app"

brewcaskinstall "/opt/homebrew-cask/Caskroom/menumeters" "menumeters"
# append menumeter & do not touch other menu extras
defaults write com.apple.systemuiserver menuExtras -array-add \
  "/opt/homebrew-cask/Caskroom/menumeters/latest/MenuMeters Installer.app/Contents/Resources/MenuMeters.prefPane/Contents/Resources/MenuMeterMem.menu" \
  "/opt/homebrew-cask/Caskroom/menumeters/latest/MenuMeters Installer.app/Contents/Resources/MenuMeters.prefPane/Contents/Resources/MenuMeterCPU.menu" \
  "/opt/homebrew-cask/Caskroom/menumeters/latest/MenuMeters Installer.app/Contents/Resources/MenuMeters.prefPane/Contents/Resources/MenuCracker.menu"
defaults write com.ragingmenace.MenuMeters CPUAverageMultiProcs -int 1
defaults write com.ragingmenace.MenuMeters CPUDisplayMode -int 2
defaults write com.ragingmenace.MenuMeters CPUGraphLength -int 20
defaults write com.ragingmenace.MenuMeters CPUInterval -int 1
defaults write com.ragingmenace.MenuMeters CPUSystemColor -data 040b73747265616d747970656481e803840140848484074e53436f6c6f72008484084e534f626a656374008584016301840466666666836479783f831b677c3f83bf80733f0186
defaults write com.ragingmenace.MenuMeters CPUUserColor -data 040b73747265616d747970656481e803840140848484074e53436f6c6f72008484084e534f626a656374008584016301840466666666834822d63e8310c6ce3e83da09d93e0186
defaults write com.ragingmenace.MenuMeters MemDisplayMode -int 1
defaults write com.ragingmenace.MenuMeters MemInterval -int 10
defaults write com.ragingmenace.MenuMeters MemFreeColor -data 040b73747265616d747970656481e803840140848484074e53436f6c6f72008484084e534f626a65637400858401630284046666666600830000003f000186
defaults write com.ragingmenace.MenuMeters MemUsedColor -data 040b73747265616d747970656481e803840140848484074e53436f6c6f72008484084e534f626a656374008584016302840466666666830000003f00000186
defaults write com.ragingmenace.MenuMeters MemInactiveColor -data 040b73747265616d747970656481e803840140848484074e53436f6c6f72008484084e534f626a65637400858401630184046666666683f8e06d3e83f8e06d3e83f8e06d3e0186
defaults write com.ragingmenace.MenuMeters MemWireColor -data 040b73747265616d747970656481e803840140848484074e53436f6c6f72008484084e534f626a656374008584016301840466666666836570e63e831761e03e83ee0cea3e0186

# QuickLook plugins from https://github.com/sindresorhus/quick-look-plugins
brewcaskinstall "/opt/homebrew-cask/Caskroom/qlcolorcode" "qlcolorcode"
brewcaskinstall "/opt/homebrew-cask/Caskroom/qlstephen" "qlstephen"
brewcaskinstall "/opt/homebrew-cask/Caskroom/qlmarkdown" "qlmarkdown"
brewcaskinstall "/opt/homebrew-cask/Caskroom/quicklook-json" "quicklook-json"
brewcaskinstall "/opt/homebrew-cask/Caskroom/qlprettypatch" "qlprettypatch"
brewcaskinstall "/opt/homebrew-cask/Caskroom/quicklook-csv" "quicklook-csv"
brewcaskinstall "/opt/homebrew-cask/Caskroom/betterzipql" "betterzipql"
brewcaskinstall "/opt/homebrew-cask/Caskroom/webp-quicklook" "webp-quicklook"
brewcaskinstall "/opt/homebrew-cask/Caskroom/suspicious-package" "suspicious-package"

# reset QuickLook plugins
qlmanage -r &> /dev/null