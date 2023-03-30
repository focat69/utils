--[[
-- = focat's notification lib = --
  _____      .__   
_/ ____\____ |  |  
\   __\/    \|  |  
 |  | |   |  \  |__
 |__| |___|  /____/
           \/      
-- = focat's notification lib = --

[ How To Use - Snippet ]
local fnl = loadstring(game:HttpGetAsync 'https://raw.githubusercontent.com/Code1Tech/utils/main/notification.lua')()

fnl:MakeNotification({
	Title = "Your Title Here",
	Text = "Your Text Here",
	Duration = 5 -- Your Duration (in seconds)
})
[ ez ]

]]--

local Converted = {
	["_focat's notification lib"] = Instance.new("ScreenGui");
	["_Holder"] = Instance.new("Frame");
	["_UIListLayout"] = Instance.new("UIListLayout");
	["_BaseNotification"] = Instance.new("Frame");
	["_UICorner"] = Instance.new("UICorner");
	["_Icon"] = Instance.new("ImageLabel");
	["_UIAspectRatioConstraint"] = Instance.new("UIAspectRatioConstraint");
	["_UIStroke"] = Instance.new("UIStroke");
	["_Title"] = Instance.new("TextLabel");
	["_Text"] = Instance.new("TextLabel");
	["_Library"] = Instance.new("ModuleScript");
}

Converted["_focat's notification lib"].DisplayOrder = 999999999
Converted["_focat's notification lib"].ResetOnSpawn = false
Converted["_focat's notification lib"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Converted["_focat's notification lib"].Name = "focat's notification lib"
if syn then
	syn.protect_gui(Converted["_focat's notification lib"])
end
Converted["_focat's notification lib"].Parent = game:GetService("CoreGui")

Converted["_Holder"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Holder"].BackgroundTransparency = 1
Converted["_Holder"].BorderSizePixel = 0
Converted["_Holder"].Position = UDim2.new(0.991935492, -284, 0.498387098, -270)
Converted["_Holder"].Size = UDim2.new(0, 284, 0, 550)
Converted["_Holder"].Name = "Holder"
Converted["_Holder"].Parent = Converted["_focat's notification lib"]

Converted["_UIListLayout"].Padding = UDim.new(0, 5)
Converted["_UIListLayout"].HorizontalAlignment = Enum.HorizontalAlignment.Right
Converted["_UIListLayout"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout"].VerticalAlignment = Enum.VerticalAlignment.Bottom
Converted["_UIListLayout"].Parent = Converted["_Holder"]

Converted["_BaseNotification"].BackgroundColor3 = Color3.fromRGB(25.000002309679985, 25.000002309679985, 25.000002309679985)
Converted["_BaseNotification"].BorderSizePixel = 0
Converted["_BaseNotification"].Position = UDim2.new(0, 0, 0.815157115, 0)
Converted["_BaseNotification"].Size = UDim2.new(0, 284, 0, 100)
Converted["_BaseNotification"].Visible = false
Converted["_BaseNotification"].Name = "BaseNotification"
Converted["_BaseNotification"].Parent = Converted["_Holder"]

Converted["_UICorner"].Parent = Converted["_BaseNotification"]

Converted["_Icon"].Image = "rbxassetid://7072706001"
Converted["_Icon"].ScaleType = Enum.ScaleType.Fit
Converted["_Icon"].BackgroundTransparency = 1
Converted["_Icon"].BorderSizePixel = 0
Converted["_Icon"].Position = UDim2.new(0.0422535203, 0, 0.129999995, 0)
Converted["_Icon"].Size = UDim2.new(0, 25, 0, 25)
Converted["_Icon"].Name = "Icon"
Converted["_Icon"].Parent = Converted["_BaseNotification"]

Converted["_UIAspectRatioConstraint"].Parent = Converted["_Icon"]

Converted["_UIStroke"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke"].Color = Color3.fromRGB(75.00000312924385, 75.00000312924385, 75.00000312924385)
Converted["_UIStroke"].Thickness = 2
Converted["_UIStroke"].Parent = Converted["_BaseNotification"]

Converted["_Title"].Font = Enum.Font.GothamBold
Converted["_Title"].Text = "focat's notification lib"
Converted["_Title"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title"].TextSize = 18
Converted["_Title"].TextTruncate = Enum.TextTruncate.AtEnd
Converted["_Title"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title"].BackgroundTransparency = 1
Converted["_Title"].BorderSizePixel = 0
Converted["_Title"].Position = UDim2.new(0.158450708, 0, 0.129999995, 0)
Converted["_Title"].Size = UDim2.new(0, 227, 0, 25)
Converted["_Title"].Name = "Title"
Converted["_Title"].Parent = Converted["_BaseNotification"]

Converted["_Text"].Font = Enum.Font.GothamMedium
Converted["_Text"].Text = "cool notification :shock:"
Converted["_Text"].TextColor3 = Color3.fromRGB(171.00000500679016, 171.00000500679016, 171.00000500679016)
Converted["_Text"].TextSize = 14
Converted["_Text"].TextTruncate = Enum.TextTruncate.AtEnd
Converted["_Text"].TextWrapped = true
Converted["_Text"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Text"].TextYAlignment = Enum.TextYAlignment.Top
Converted["_Text"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Text"].BackgroundTransparency = 1
Converted["_Text"].BorderSizePixel = 0
Converted["_Text"].Position = UDim2.new(0.0422535203, 0, 0.449999988, 0)
Converted["_Text"].Size = UDim2.new(0, 260, 0, 47)
Converted["_Text"].Name = "Text"
Converted["_Text"].Parent = Converted["_BaseNotification"]

local baseNotif = script.Parent.Holder.BaseNotification

local lib = {}

function tween(go, t, dir)
	dir = dir or "in"
	local obj = go

	local startTransparency = (dir == "in") and 1 or 0
	local endTransparency = (dir == "in") and 0 or 1

	obj.BackgroundTransparency = startTransparency

	local tweenInfo = TweenInfo.new(t, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0)

	local tween = game:GetService("TweenService"):Create(obj, tweenInfo, {
		BackgroundTransparency = endTransparency
	})

	tween:Play()
end

function lib:MakeNotification(notif_table)
	local nt = notif_table or {
		Title = "focat's notification lib",
		Text = "cool notification :shock:",
		Duration = 5
	}

	local title = nt.Title
	local text = nt.Text
	local dur = nt.Duration

	local newNotif = baseNotif:Clone()
	newNotif.Parent = Converted["_BaseNotification"]
	newNotif.Title.Text = title
	newNotif.Text.Text = text
	newNotif.Visible = true

	local holder = Converted["_Holder"]
	local notifications = holder:GetChildren()
	local numNotifications = #notifications

	local layout = holder.UIListLayout
	local layoutOrder = layout.Padding.Offset

	for i, notification in ipairs(notifications) do
		if notification ~= baseNotif and
			notification ~= newNotif and
			notification ~= layout
		then
			if numNotifications == 1 then
				layoutOrder = layoutOrder - 1
			else
				layoutOrder = notification.LayoutOrder + 1
			end
			tween(notification, 0.25)
		end
	end

	newNotif.LayoutOrder = layoutOrder

	tween(newNotif, 0.25, "in")

	spawn(function()
		wait(dur)
		tween(newNotif, 0.25, "out")
		wait(0.25)
		newNotif:Destroy()
	end)
end

return lib
