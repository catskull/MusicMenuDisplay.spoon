local obj={}
obj.__index = obj

-- Metadata
obj.name = "Music Menu Display"
obj.version = "2.0"
obj.author = "catskull <bro@catskull.net>"
obj.license = "MIT"
obj.homepage = "https://github.com/catskull/MusicMenuDisplay.spoon"

obj.app = "spotify"

-- Show current spotify/apple music artist - song in menubar
function obj:makeMusicMenu()
  if obj.app == "spotify" then
    app = hs.spotify
  else
    app = hs.itunes
  end

  if musicMenu == nil then
    musicMenu = hs.menubar.new()
    musicMenu:setClickCallback(function()
      app.playpause()
    end)
  end
  if app.getPlaybackState() ~= app.state_stopped then
    musicMenu:setTitle(app.getCurrentArtist() .. " - " .. app.getCurrentTrack())
  elseif musicMenu:title() ~= '' then
    musicMenu:setTitle('')
  end
end

function obj:start(source, interval)
  obj.app = (source or "spotify")
  musicMenuTimer = hs.timer.new((interval or 5), obj.makeMusicMenu)
  musicMenuTimer:start()
end

return obj