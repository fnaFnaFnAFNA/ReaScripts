--[[
 * ReaScript Name: Unselect last selected item.lua
 * Description: items indexed left to right before advancing to next track
 * Instructions: Run
 * Author: FnA
 * Licence: GPL v3
 * Forum Thread: De-select last selected item
 * Forum Thread URI: http://forum.cockos.com/showthread.php?t=191368
 * REAPER: 5.40
 * Extensions: None
 * Version: 1.0
--]]
 
--[[
 * Changelog:
 * v1.0 (2017-05-26)
  + Initial Release
--]]

local r = reaper

function Fn_Unselect_Last()
  local csi = r.CountSelectedMediaItems(0)
  if csi > 0 then
    r.SetMediaItemSelected(r.GetSelectedMediaItem(0,csi-1), false)
    r.UpdateArrange()
  end
end

Fn_Unselect_Last()

function NoUndoPoint () end 
reaper.defer(NoUndoPoint)
