# LuaU Utilty Scripts
## How to use the *Notification Library*
```lua
-- [[ THIS IS A SNIPPET ]] --
-- [[ IF U HAVE NO IDEA WHAT THIS DOES, UR A SKID ]] --

-- Import the Library
local fnl = loadstring(game:HttpGetAsync 'https://raw.githubusercontent.com/Code1Tech/utils/main/notification.lua')()

-- Make a Notification
fnl:MakeNotification({
	Title = "Your Title Here", -- Between the quotes ("), put your notification title
	Text = "Your Text Here", -- Between the quotes ("), put your notification text
	Duration = 5 -- Put your duration without the quotes ("). THIS IS IN SECONDS!
})
```

## A more ***"complex"*** example
```lua
-- [[ THIS IS A SNIPPET ]] --
-- [[ IF U HAVE NO IDEA WHAT THIS DOES, UR A SKID ]] --

-- Import the Library
local fnl = loadstring(game:HttpGetAsync 'https://raw.githubusercontent.com/Code1Tech/utils/main/notification.lua')()

-- Make a Notification function
function notify(title, text, duration)
  title = title or "Notification"
  text = text or "No text provided."
  duration = duration or 5
  
  fnl:MakeNotification({
    Title = Title,
    Text = Text,
    Duration = Duration
  })
end

-- Use the func
notify("Test!", "Testing 123", 3)
```
