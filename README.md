# SpotifyMenuDisplay.spoon
 Hammerspoon Spoon to display current Spotify track in menubar

![Example](screenshot.png)

## Installation
1. Make sure that you have Hammerspoon installed.

   If it's not installed already, then use the [Getting Started with Hammerspoon](https://www.hammerspoon.org/go/) guide to learn how to install and use Hammerspoon.

2. Install this Spoon

    The easiest way to do this is to [download the ZIP version of this Spoon](https://github.com/catskull/SpotifyMenuDisplay.spoon/releases/download/1.0/SpotifyMenuDisplay.spoon.zip), unzip it, then double click the SpotifyMenuDisplay.spoon folder. Hammerspoon will install it for you.

    If you plan on modifying the Spoon and sending a pull request to this repo, then you should clone this repo into your `~/.hammerspoon/Spoons`

## Usage
In your Hammerspoon config, load this Spoon: `hs.loadSpoon("SpotifyMenuDisplay")`

Then start the plugin: `spoon.SpotifyMenuDisplay:start()`

`spoon.SpotifyMenuDisplay:start()` takes an optional parameter, a number of seconds it should refresh at. Be default, it is 5. Increase or decrease as you see fit.

You can click the menubar item to pause/play the track.

## Acknowledgements
- [Zoom.spoon](https://github.com/jpf/Zoom.spoon) - inspiration, installation instructions (mostly copied verbatim)
- [Hammerspoon Contributors](https://github.com/Hammerspoon/hammerspoon/blob/master/CREDITS.md) - thanks for Hammerspoon!
- [@joshmenden](https://github.com/joshmenden) - encouragement