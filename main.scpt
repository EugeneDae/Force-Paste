set numbers_key_codes to {29, 18, 19, 20, 21, 23, 22, 26, 28, 25}

set input to do shell script "pbpaste"

if (input is not missing value) then
	tell application "System Events"
		repeat with char in the characters of input
			try
				set test to char as number
				key code numbers_key_codes's item (char + 1)
			on error
				keystroke char
			end try
		end repeat
	end tell
end if