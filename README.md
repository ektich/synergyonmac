# Starting Synergy Client on Mac OS X

**Make sure to replace `synergy-server` with the name of your actual synergy server in the `com.symless.synergyc.plist` file on line 13**

Launchd plist and shell scripts to start and stop synergy client on a Mac OS X.

Shell scripts can be used with ControlPlane to start and stop synergyc on some condition, for example on connecting the laptop to a network on which server is running.

LaunchD script (plist file) should be copied into ~/Library/LaunchAgents.

Load the new launchd agent with `launchctl load ~/Library/LaunchAgents/com.symless.synergyc.plist` after copying .plist file into LaunchAgents directory.
