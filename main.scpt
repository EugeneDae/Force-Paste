-- Force-Paste: Optimized and Robust Character Handling
-- Addresses "0 instead of space" bug and improves layout compatibility.

set digitCodes to {82, 83, 84, 85, 86, 87, 88, 89, 91, 92} -- Numpad 0-9 codes

try
    set clipboardContent to do shell script "pbpaste"
on error
    return -- Exit if clipboard is empty or inaccessible
end try

if (clipboardContent is not missing value and length of clipboardContent > 0) then
    -- Cap length at 500 to prevent system hang while maintaining utility
    if length of clipboardContent > 500 then
        set clipboardContent to text 1 thru 500 of clipboardContent
    end if

    tell application "System Events"
        repeat with char in characters of clipboardContent
            set c to contents of char
            
            -- 1. Structural White Space (Hardware-level Key Codes)
            -- This bypasses software layout mapping which often fails in AppleScript
            if c is " " then
                key code 49 -- Space
            else if c is tab then
                key code 48 -- Tab
            else if c is return or c is linefeed then
                key code 36 -- Return
                
            -- 2. Numeric Digits (Explicit check to prevent math errors)
            else if c is in "0123456789" then
                set digitIdx to (c as integer) + 1
                key code (item digitIdx of digitCodes)
                
            -- 3. Standard Characters (Letters, Symbols, Emojis)
            else
                keystroke c
            end if
        end repeat
    end tell
end if