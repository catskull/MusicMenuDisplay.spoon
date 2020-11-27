local obj={}
obj.__index = obj

-- Metadata
obj.name = "Spotify Menu Display"
obj.version = "1.0"
obj.author = "catskull <bro@catskull.net>"
obj.license = "MIT"
obj.homepage = "https://github.com/catskull/SpotifyMenuDisplay.spoon"

-- Show current spotify artist - song in menubar
function obj:makeSpotifyMenu()
  if spotifyMenu == nil then
    spotifyMenu = hs.menubar.new()
    spotifyMenu:setClickCallback(function()
      hs.spotify.playpause()
    end)
  end
  if hs.spotify.getPlaybackState() ~= hs.spotify.state_stopped then
    spotifyMenu:setTitle(hs.spotify.getCurrentArtist() .. " - " .. hs.spotify.getCurrentTrack())
  elseif spotifyMenu:title() ~= '' then
    spotifyMenu:setTitle('')
  end
end

function obj:start(interval)
  spotifyMenuTimer = hs.timer.new((interval or 5), obj.makeSpotifyMenu)
  spotifyMenuTimer:start()
end

return obj