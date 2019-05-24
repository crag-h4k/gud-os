on run {input, parameters}
	if (count of input) > 0 then
		tell application "System Events"
			set runs to false
			try
				set p to application process "iTerm"
				set runs to true
			end try
		end tell
		tell application "iTerm"
			activate
			set numItems to the count of items of input
			set launchPaths to ""
			repeat with x from 1 to numItems
				set filePath to quoted form of POSIX path of item x of input
				set launchPaths to launchPaths & " " & filePath
			end repeat
			tell current window
				create tab with default profile command "vim " & launchPaths
			end tell
		end tell
	end if
end run
