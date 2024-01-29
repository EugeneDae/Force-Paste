set numbers_key_codes to {49, 50, 51, 52, 53, 54, 55, 56, 57, 48}

set input to do shell script "pbpaste"

if (input is not missing value and length of input is less than 250) then
    tell application "System Events"
        repeat with char in the characters of input
            set charIndex to offset of char in "0123456789 "  -- Get index within number string
            if charIndex is not 0 then  -- Check if it's a number or space
                try
                    key code numbers_key_codes's item charIndex  -- Use correct index for key code
                on error
                    keystroke char  -- Fallback to keystroke for non-numbers
                end try
            else
                keystroke space  -- Handle space explicitly
            end if
        end repeat
    end tell
end if
