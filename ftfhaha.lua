local ver = "v0.6.79" -- FTF admin Panel by Xyrozzy

-- Global Connection Tracker for Clean UI Destruction
local activeConnections = {}
local function trackConnection(conn)
    if conn then table.insert(activeConnections, conn) end
end

-- ==================== TOGGLE VARIABLES ====================
local podstoggle = false
local pctoggle = false
local playertoggle = false
local bestpctoggle = false
local exitstoggle = false
local beastcamtoggle = false
local neverfailtoggle = false
local autointeracttoggle = false
local autoplaytoggle = false
local speedtoggle = false
local jumptoggle = false
local nocliptoggle = false

local nofogtoggle = false
local fullbrighttoggle = false
local smartesptoggle = false
local fovtoggle = false
local lowgravtoggle = false
local proximitytoggle = false

-- Variables to memorize the original map lighting
local origFogEnd, origFogStart, origAtmDensity, origAtmOffset
local origAmbient, origOutdoorAmbient
-- ==========================================================

local FTFHAX = Instance.new("ScreenGui")
local MenusTabFrame = Instance.new("Frame")
local CheatButton = Instance.new("ImageButton")
local TextLabel = Instance.new("TextLabel")
local ESPMenuWindow = Instance.new("Frame")
local Body = Instance.new("Frame")
local TitleLabel = Instance.new("TextLabel")
local ButtonsFrame = Instance.new("Frame")
local BestPCESPButton = Instance.new("TextButton")
local PCESPButton = Instance.new("TextButton")
local TbdButton = Instance.new("TextButton")
local PlayerESPButton = Instance.new("TextButton")
local PodsESPButton = Instance.new("TextButton")
local ExitsESPButton = Instance.new("TextButton")
local UIGridLayout = Instance.new("UIGridLayout")
local TopBar = Instance.new("Frame")
local CloseButton = Instance.new("TextButton")
local BackButton = Instance.new("TextButton")
local CreditTotalText = Instance.new("TextLabel")
local PageTitleText = Instance.new("TextLabel")
local MainMenuWindow = Instance.new("Frame")
local TopBar_2 = Instance.new("Frame")
local CloseButton_2 = Instance.new("TextButton")
local CreditTotalText_2 = Instance.new("TextLabel")
local PageTitleText_2 = Instance.new("TextLabel")
local Body_2 = Instance.new("ScrollingFrame")
local UIGridLayout_2 = Instance.new("UIGridLayout")
local ESPButton = Instance.new("ImageButton")
local BottomText = Instance.new("TextLabel")
local TempIcon = Instance.new("ImageLabel")
local ToolsButton = Instance.new("ImageButton")
local BottomText_2 = Instance.new("TextLabel")
local TempIcon_2 = Instance.new("ImageLabel")
local ToolsMenuWindow = Instance.new("Frame")
local Body_3 = Instance.new("Frame")
local TitleLabel_2 = Instance.new("TextLabel")
local ButtonsFrame_2 = Instance.new("Frame")
local UIGridLayout_3 = Instance.new("UIGridLayout")
local NeverFailButton = Instance.new("TextButton")
local AutoPlayButton = Instance.new("TextButton")
local AutoInteractButton = Instance.new("TextButton")
local BeastCamButton = Instance.new("TextButton")
local TopBar_3 = Instance.new("Frame")
local CloseButton_3 = Instance.new("TextButton")
local BackButton_2 = Instance.new("TextButton")
local CreditTotalText_3 = Instance.new("TextLabel")
local PageTitleText_3 = Instance.new("TextLabel")
local ViewportFrame = Instance.new("ViewportFrame")

FTFHAX.Name = "FTFHAX"
FTFHAX.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
FTFHAX.ResetOnSpawn = false

MenusTabFrame.Name = "MenusTabFrame"
MenusTabFrame.Parent = FTFHAX
MenusTabFrame.AnchorPoint = Vector2.new(1, 0.5)
MenusTabFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MenusTabFrame.BackgroundTransparency = 1.000
MenusTabFrame.BorderColor3 = Color3.fromRGB(63, 63, 63)
MenusTabFrame.BorderSizePixel = 0
MenusTabFrame.Position = UDim2.new(1, 0, 0.5, 0)
MenusTabFrame.Size = UDim2.new(0.0799999982, 0, 0.159999996, 0)
MenusTabFrame.SizeConstraint = Enum.SizeConstraint.RelativeYY

CheatButton.Name = "CheatButton"
CheatButton.Parent = MenusTabFrame
CheatButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CheatButton.BackgroundTransparency = 0.500
CheatButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
CheatButton.BorderSizePixel = 0
CheatButton.Position = UDim2.new(0, 0, 1, 0)
CheatButton.Size = UDim2.new(1, 0, 1, 0)
CheatButton.SizeConstraint = Enum.SizeConstraint.RelativeXX
CheatButton.Image = "rbxassetid://11570895459"
CheatButton.ImageColor3 = Color3.fromRGB(223, 223, 223)

TextLabel.Parent = CheatButton
TextLabel.AnchorPoint = Vector2.new(0, 1)
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0, 0, 1, 0)
TextLabel.Size = UDim2.new(1, 0, 0.200000003, 0)
TextLabel.Font = Enum.Font.ArialBold
TextLabel.Text = "FTF admin Panel"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 12.000
TextLabel.TextStrokeTransparency = 0.000
TextLabel.TextWrapped = true
TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom

ESPMenuWindow.Name = "ESPMenuWindow"
ESPMenuWindow.Parent = FTFHAX
ESPMenuWindow.AnchorPoint = Vector2.new(0.5, 0.5)
ESPMenuWindow.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
ESPMenuWindow.BorderColor3 = Color3.fromRGB(0, 0, 0)
ESPMenuWindow.BorderSizePixel = 2
ESPMenuWindow.ClipsDescendants = true
ESPMenuWindow.Position = UDim2.new(0.5, 0, 0.5, -18)
ESPMenuWindow.Size = UDim2.new(0, 480, 0, 175)
ESPMenuWindow.SizeConstraint = Enum.SizeConstraint.RelativeYY
ESPMenuWindow.Visible = false

Body.Name = "Body"
Body.Parent = ESPMenuWindow
Body.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Body.BackgroundTransparency = 1.000
Body.BorderSizePixel = 0
Body.Position = UDim2.new(0, 0, 0, 40)
Body.Size = UDim2.new(1, 0, 1, -40)

TitleLabel.Name = "TitleLabel"
TitleLabel.Parent = Body
TitleLabel.AnchorPoint = Vector2.new(0.5, 0)
TitleLabel.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
TitleLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TitleLabel.BorderSizePixel = 0
TitleLabel.Position = UDim2.new(0.5, 0, -1.06500006, 150)
TitleLabel.Size = UDim2.new(1, -10, 0.0235044118, 30)
TitleLabel.Text = "ESP"
TitleLabel.TextColor3 = Color3.fromRGB(149, 255, 237)
TitleLabel.TextScaled = true
TitleLabel.TextSize = 14.000
TitleLabel.TextWrapped = true

ButtonsFrame.Name = "ButtonsFrame"
ButtonsFrame.Parent = Body
ButtonsFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ButtonsFrame.BackgroundTransparency = 1.000
ButtonsFrame.Position = UDim2.new(0, 5, 0, 45)
ButtonsFrame.Size = UDim2.new(1, -10, -0.00555555569, 85)

BestPCESPButton.Name = "BestPCESPButton"
BestPCESPButton.Parent = ButtonsFrame
BestPCESPButton.BackgroundColor3 = Color3.fromRGB(191, 0, 0)
BestPCESPButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
BestPCESPButton.BorderSizePixel = 0
BestPCESPButton.LayoutOrder = 4
BestPCESPButton.Size = UDim2.new(0, 200, 0, 50)
BestPCESPButton.Text = "Best PC"
BestPCESPButton.TextColor3 = Color3.fromRGB(255, 255, 255)
BestPCESPButton.TextScaled = true
BestPCESPButton.TextSize = 14.000
BestPCESPButton.TextWrapped = true

PCESPButton.Name = "PCESPButton"
PCESPButton.Parent = ButtonsFrame
PCESPButton.BackgroundColor3 = Color3.fromRGB(191, 0, 0)
PCESPButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
PCESPButton.BorderSizePixel = 0
PCESPButton.Size = UDim2.new(0, 200, 0, 50)
PCESPButton.Text = "PC"
PCESPButton.TextColor3 = Color3.fromRGB(255, 255, 255)
PCESPButton.TextScaled = true
PCESPButton.TextSize = 14.000
PCESPButton.TextWrapped = true

TbdButton.Name = "TbdButton"
TbdButton.Parent = ButtonsFrame
TbdButton.BackgroundColor3 = Color3.fromRGB(191, 0, 0)
TbdButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TbdButton.BorderSizePixel = 0
TbdButton.LayoutOrder = 5
TbdButton.Size = UDim2.new(0, 200, 0, 50)
TbdButton.Visible = false
TbdButton.Text = "nothing"
TbdButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TbdButton.TextScaled = true
TbdButton.TextSize = 14.000
TbdButton.TextWrapped = true

PlayerESPButton.Name = "PlayerESPButton"
PlayerESPButton.Parent = ButtonsFrame
PlayerESPButton.BackgroundColor3 = Color3.fromRGB(191, 0, 0)
PlayerESPButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
PlayerESPButton.BorderSizePixel = 0
PlayerESPButton.LayoutOrder = 1
PlayerESPButton.Size = UDim2.new(0, 200, 0, 50)
PlayerESPButton.Text = "Player"
PlayerESPButton.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayerESPButton.TextScaled = true
PlayerESPButton.TextSize = 14.000
PlayerESPButton.TextWrapped = true

PodsESPButton.Name = "PodsESPButton"
PodsESPButton.Parent = ButtonsFrame
PodsESPButton.BackgroundColor3 = Color3.fromRGB(191, 0, 0)
PodsESPButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
PodsESPButton.BorderSizePixel = 0
PodsESPButton.LayoutOrder = 2
PodsESPButton.Size = UDim2.new(0, 200, 0, 50)
PodsESPButton.Text = "Pods"
PodsESPButton.TextColor3 = Color3.fromRGB(255, 255, 255)
PodsESPButton.TextScaled = true
PodsESPButton.TextSize = 14.000
PodsESPButton.TextWrapped = true

ExitsESPButton.Name = "ExitsESPButton"
ExitsESPButton.Parent = ButtonsFrame
ExitsESPButton.BackgroundColor3 = Color3.fromRGB(191, 0, 0)
ExitsESPButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExitsESPButton.BorderSizePixel = 0
ExitsESPButton.LayoutOrder = 3
ExitsESPButton.Size = UDim2.new(0, 200, 0, 50)
ExitsESPButton.Text = "Exits"
ExitsESPButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ExitsESPButton.TextScaled = true
ExitsESPButton.TextSize = 14.000
ExitsESPButton.TextWrapped = true

UIGridLayout.Parent = ButtonsFrame
UIGridLayout.FillDirection = Enum.FillDirection.Vertical
UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellPadding = UDim2.new(0, 6, 0, 6)
UIGridLayout.CellSize = UDim2.new(0, 152, 0, 39)

TopBar.Name = "TopBar"
TopBar.Parent = ESPMenuWindow
TopBar.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
TopBar.BorderSizePixel = 0
TopBar.Size = UDim2.new(1, 0, 0, 40)
TopBar.ZIndex = 5

CloseButton.Name = "CloseButton"
CloseButton.Parent = TopBar
CloseButton.AnchorPoint = Vector2.new(1, 0)
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CloseButton.BorderColor3 = Color3.fromRGB(191, 191, 191)
CloseButton.BorderSizePixel = 0
CloseButton.Position = UDim2.new(1, -1, 0, 1)
CloseButton.Size = UDim2.new(0, 36, 0, 36)
CloseButton.SizeConstraint = Enum.SizeConstraint.RelativeYY
CloseButton.ZIndex = 5
CloseButton.Modal = true
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextScaled = true
CloseButton.TextSize = 14.000
CloseButton.TextWrapped = true

BackButton.Name = "BackButton"
BackButton.Parent = TopBar
BackButton.AnchorPoint = Vector2.new(1, 0)
BackButton.BackgroundColor3 = Color3.fromRGB(95, 95, 95)
BackButton.BorderColor3 = Color3.fromRGB(191, 191, 191)
BackButton.BorderSizePixel = 0
BackButton.Position = UDim2.new(1, -41, 0, 1)
BackButton.Size = UDim2.new(1, -4, 1, -4)
BackButton.SizeConstraint = Enum.SizeConstraint.RelativeYY
BackButton.ZIndex = 5
BackButton.Text = "<"
BackButton.TextColor3 = Color3.fromRGB(255, 255, 255)
BackButton.TextScaled = true
BackButton.TextSize = 14.000
BackButton.TextWrapped = true

CreditTotalText.Name = "CreditTotalText"
CreditTotalText.Parent = TopBar
CreditTotalText.AnchorPoint = Vector2.new(1, 0)
CreditTotalText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CreditTotalText.BackgroundTransparency = 1.000
CreditTotalText.BorderSizePixel = 0
CreditTotalText.Position = UDim2.new(1, -45, 0, 0)
CreditTotalText.Size = UDim2.new(0, 100, 1, 0)
CreditTotalText.ZIndex = 5
CreditTotalText.Text = ver
CreditTotalText.TextColor3 = Color3.fromRGB(255, 255, 0)
CreditTotalText.TextScaled = true
CreditTotalText.TextWrapped = true
CreditTotalText.TextXAlignment = Enum.TextXAlignment.Right

PageTitleText.Name = "PageTitleText"
PageTitleText.Parent = TopBar
PageTitleText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PageTitleText.BackgroundTransparency = 1.000
PageTitleText.BorderSizePixel = 0
PageTitleText.Position = UDim2.new(0, 10, 0, 0)
PageTitleText.Size = UDim2.new(0, 200, 1, 0)
PageTitleText.ZIndex = 5
PageTitleText.Text = "FTF admin Panel"
PageTitleText.TextColor3 = Color3.fromRGB(255, 255, 255)
PageTitleText.TextScaled = true
PageTitleText.TextWrapped = true
PageTitleText.TextXAlignment = Enum.TextXAlignment.Left

MainMenuWindow.Name = "MainMenuWindow"
MainMenuWindow.Parent = FTFHAX
MainMenuWindow.AnchorPoint = Vector2.new(0.5, 0.5)
MainMenuWindow.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
MainMenuWindow.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainMenuWindow.BorderSizePixel = 2
MainMenuWindow.ClipsDescendants = true
MainMenuWindow.Position = UDim2.new(0.5, 0, 0.5, -18)
MainMenuWindow.Size = UDim2.new(0, 420, 0, 360)
MainMenuWindow.SizeConstraint = Enum.SizeConstraint.RelativeYY
MainMenuWindow.Visible = false

TopBar_2.Name = "TopBar"
TopBar_2.Parent = MainMenuWindow
TopBar_2.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
TopBar_2.BorderSizePixel = 0
TopBar_2.Size = UDim2.new(1, 0, 0, 40)
TopBar_2.ZIndex = 5

CloseButton_2.Name = "CloseButton"
CloseButton_2.Parent = TopBar_2
CloseButton_2.AnchorPoint = Vector2.new(1, 0)
CloseButton_2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CloseButton_2.BorderColor3 = Color3.fromRGB(191, 191, 191)
CloseButton_2.BorderSizePixel = 0
CloseButton_2.Position = UDim2.new(1, -1, 0, 1)
CloseButton_2.Size = UDim2.new(0, 36, 0, 36)
CloseButton_2.SizeConstraint = Enum.SizeConstraint.RelativeYY
CloseButton_2.ZIndex = 5
CloseButton_2.Modal = true
CloseButton_2.Text = "X"
CloseButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton_2.TextScaled = true
CloseButton_2.TextSize = 14.000
CloseButton_2.TextWrapped = true

CreditTotalText_2.Name = "CreditTotalText"
CreditTotalText_2.Parent = TopBar_2
CreditTotalText_2.AnchorPoint = Vector2.new(1, 0)
CreditTotalText_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CreditTotalText_2.BackgroundTransparency = 1.000
CreditTotalText_2.BorderSizePixel = 0
CreditTotalText_2.Position = UDim2.new(1, -45, 0, 0)
CreditTotalText_2.Size = UDim2.new(0, 100, 1, 0)
CreditTotalText_2.ZIndex = 5
CreditTotalText_2.Text = ver
CreditTotalText_2.TextColor3 = Color3.fromRGB(255, 255, 0)
CreditTotalText_2.TextScaled = true
CreditTotalText_2.TextWrapped = true
CreditTotalText_2.TextXAlignment = Enum.TextXAlignment.Right

PageTitleText_2.Name = "PageTitleText"
PageTitleText_2.Parent = TopBar_2
PageTitleText_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PageTitleText_2.BackgroundTransparency = 1.000
PageTitleText_2.BorderSizePixel = 0
PageTitleText_2.Position = UDim2.new(0, 10, 0, 0)
PageTitleText_2.Size = UDim2.new(0, 200, 1, 0)
PageTitleText_2.ZIndex = 5
PageTitleText_2.Text = "FTF admin Panel"
PageTitleText_2.TextColor3 = Color3.fromRGB(255, 255, 255)
PageTitleText_2.TextScaled = true
PageTitleText_2.TextWrapped = true
PageTitleText_2.TextXAlignment = Enum.TextXAlignment.Left

Body_2.Name = "Body"
Body_2.Parent = MainMenuWindow
Body_2.AnchorPoint = Vector2.new(0.5, 0)
Body_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Body_2.BackgroundTransparency = 1.000
Body_2.BorderSizePixel = 0
Body_2.Position = UDim2.new(0.5, 0, 0, 45)
Body_2.Size = UDim2.new(1, -10, 1, -75)
Body_2.ScrollBarThickness = 0 -- Hides the scrollbar so it still looks clean
Body_2.AutomaticCanvasSize = Enum.AutomaticSize.Y

UIGridLayout_2.Parent = Body_2
UIGridLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIGridLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout_2.VerticalAlignment = Enum.VerticalAlignment.Top -- Pushes items up so scrolling works perfectly
UIGridLayout_2.CellSize = UDim2.new(0, 132, 0, 132)

-- ==================== MATCHING MAIN MENU BUTTONS ====================
ESPButton.Name = "ESPButton"
ESPButton.Parent = Body_2
ESPButton.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
ESPButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ESPButton.BorderSizePixel = 0
ESPButton.LayoutOrder = 1
ESPButton.Size = UDim2.new(0, 100, 0, 100)

BottomText.Name = "BottomText"
BottomText.Parent = ESPButton
BottomText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BottomText.BackgroundTransparency = 1.000
BottomText.BorderSizePixel = 0
BottomText.Position = UDim2.new(0, 0, 0.800000012, 0)
BottomText.Size = UDim2.new(1, 0, 0.200000003, 0)
BottomText.Text = "ESP"
BottomText.TextColor3 = Color3.fromRGB(255, 255, 255)
BottomText.Font = Enum.Font.SourceSans
BottomText.TextScaled = false
BottomText.TextSize = 24.000

TempIcon.Name = "TempIcon"
TempIcon.Parent = ESPButton
TempIcon.AnchorPoint = Vector2.new(0.5, 0)
TempIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TempIcon.BackgroundTransparency = 1.000
TempIcon.Position = UDim2.new(0.5, 0, 0, 0)
TempIcon.Size = UDim2.new(0.800000012, 0, 0.800000012, 0)
TempIcon.Image = "rbxassetid://2594274683"
TempIcon.ScaleType = Enum.ScaleType.Fit

ToolsButton.Name = "ToolsButton"
ToolsButton.Parent = Body_2
ToolsButton.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
ToolsButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ToolsButton.BorderSizePixel = 0
ToolsButton.LayoutOrder = 2
ToolsButton.Size = UDim2.new(0, 100, 0, 100)

BottomText_2.Name = "BottomText"
BottomText_2.Parent = ToolsButton
BottomText_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BottomText_2.BackgroundTransparency = 1.000
BottomText_2.BorderSizePixel = 0
BottomText_2.Position = UDim2.new(0, 0, 0.800000012, 0)
BottomText_2.Size = UDim2.new(1, 0, 0.200000003, 0)
BottomText_2.Text = "Tools"
BottomText_2.TextColor3 = Color3.fromRGB(255, 255, 255)
BottomText_2.Font = Enum.Font.SourceSans
BottomText_2.TextScaled = false
BottomText_2.TextSize = 24.000

TempIcon_2.Name = "TempIcon"
TempIcon_2.Parent = ToolsButton
TempIcon_2.AnchorPoint = Vector2.new(0.5, 0)
TempIcon_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TempIcon_2.BackgroundTransparency = 1.000
TempIcon_2.Position = UDim2.new(0.5, 0, 0, 0)
TempIcon_2.Size = UDim2.new(0.800000012, 0, 0.800000012, 0)
TempIcon_2.Image = "rbxassetid://12403104094"
TempIcon_2.ScaleType = Enum.ScaleType.Fit

local TPButton = Instance.new("ImageButton")
TPButton.Name = "TPButton"
TPButton.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
TPButton.BorderSizePixel = 0
TPButton.ZIndex = 10
TPButton.Parent = Body_2

local TPIcon = Instance.new("ImageLabel", TPButton)
TPIcon.BackgroundTransparency = 1
TPIcon.AnchorPoint = Vector2.new(0.5, 0)
TPIcon.Position = UDim2.new(0.5, 0, 0, 0)
TPIcon.Size = UDim2.new(0.800000012, 0, 0.800000012, 0)
TPIcon.Image = "rbxassetid://2249604078"
TPIcon.ImageColor3 = Color3.fromRGB(255, 100, 100)
TPIcon.ScaleType = Enum.ScaleType.Fit
TPIcon.ZIndex = 11

local TPText = Instance.new("TextLabel")
TPText.BackgroundTransparency = 1
TPText.Position = UDim2.new(0, 0, 0.800000012, 0)
TPText.Size = UDim2.new(1, 0, 0.200000003, 0)
TPText.Text = "TP"
TPText.TextColor3 = Color3.new(1,1,1)
TPText.Font = Enum.Font.SourceSans
TPText.TextScaled = false
TPText.TextSize = 24.000
TPText.ZIndex = 11
TPText.Parent = TPButton

local PlayerTabButton = Instance.new("ImageButton")
PlayerTabButton.Name = "PlayerTabButton"
PlayerTabButton.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
PlayerTabButton.BorderSizePixel = 0
PlayerTabButton.ZIndex = 10
PlayerTabButton.Parent = Body_2

local PlayerIcon = Instance.new("ImageLabel", PlayerTabButton)
PlayerIcon.BackgroundTransparency = 1
PlayerIcon.AnchorPoint = Vector2.new(0.5, 0)
PlayerIcon.Position = UDim2.new(0.5, 0, 0, 0)
PlayerIcon.Size = UDim2.new(0.800000012, 0, 0.800000012, 0)
PlayerIcon.Image = "rbxassetid://6031265976" 
PlayerIcon.ScaleType = Enum.ScaleType.Fit
PlayerIcon.ZIndex = 11

local PlayerText = Instance.new("TextLabel")
PlayerText.BackgroundTransparency = 1
PlayerText.Position = UDim2.new(0, 0, 0.800000012, 0)
PlayerText.Size = UDim2.new(1, 0, 0.200000003, 0)
PlayerText.Text = "Player"
PlayerText.TextColor3 = Color3.new(1,1,1)
PlayerText.Font = Enum.Font.SourceSans
PlayerText.TextScaled = false
PlayerText.TextSize = 24.000
PlayerText.ZIndex = 11
PlayerText.Parent = PlayerTabButton

local MiscTabButton = Instance.new("ImageButton")
MiscTabButton.Name = "MiscTabButton"
MiscTabButton.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
MiscTabButton.BorderSizePixel = 0
MiscTabButton.ZIndex = 10
MiscTabButton.Parent = Body_2

local MiscIcon = Instance.new("ImageLabel", MiscTabButton)
MiscIcon.BackgroundTransparency = 1
MiscIcon.AnchorPoint = Vector2.new(0.5, 0)
MiscIcon.Position = UDim2.new(0.5, 0, 0.1, 0)
MiscIcon.Size = UDim2.new(0.6, 0, 0.6, 0)
MiscIcon.Image = "rbxassetid://6031280882"
MiscIcon.ScaleType = Enum.ScaleType.Fit
MiscIcon.ZIndex = 11

local MiscText = Instance.new("TextLabel")
MiscText.BackgroundTransparency = 1
MiscText.Position = UDim2.new(0, 0, 0.800000012, 0)
MiscText.Size = UDim2.new(1, 0, 0.200000003, 0)
MiscText.Text = "Misc"
MiscText.TextColor3 = Color3.new(1,1,1)
MiscText.Font = Enum.Font.SourceSans
MiscText.TextScaled = false
MiscText.TextSize = 24.000
MiscText.ZIndex = 11
MiscText.Parent = MiscTabButton

local RiskTabButton = Instance.new("ImageButton")
RiskTabButton.Name = "RiskTabButton"
RiskTabButton.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
RiskTabButton.BorderSizePixel = 0
RiskTabButton.ZIndex = 10
RiskTabButton.Parent = Body_2

local RiskIcon = Instance.new("ImageLabel", RiskTabButton)
RiskIcon.BackgroundTransparency = 1
RiskIcon.AnchorPoint = Vector2.new(0.5, 0)
RiskIcon.Position = UDim2.new(0.5, 0, 0.1, 0)
RiskIcon.Size = UDim2.new(0.6, 0, 0.6, 0)
RiskIcon.Image = "rbxassetid://6031268673" -- Warning/Shield Icon
RiskIcon.ScaleType = Enum.ScaleType.Fit
RiskIcon.ZIndex = 11

local RiskText = Instance.new("TextLabel")
RiskText.BackgroundTransparency = 1
RiskText.Position = UDim2.new(0, 0, 0.800000012, 0)
RiskText.Size = UDim2.new(1, 0, 0.200000003, 0)
RiskText.Text = "Risk Lvl"
RiskText.TextColor3 = Color3.new(1,1,1)
RiskText.Font = Enum.Font.SourceSans
RiskText.TextScaled = false
RiskText.TextSize = 24.000
RiskText.ZIndex = 11
RiskText.Parent = RiskTabButton

local KillPanelButton = Instance.new("TextButton")
KillPanelButton.Name = "KillPanelButton"
KillPanelButton.Size = UDim2.new(0, 132, 0, 132)
KillPanelButton.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
KillPanelButton.Text = "KILL\nPANEL"
KillPanelButton.TextColor3 = Color3.new(1,1,1)
KillPanelButton.Font = Enum.Font.SourceSans
KillPanelButton.TextScaled = false
KillPanelButton.TextSize = 24.000
KillPanelButton.Parent = Body_2
Instance.new("UICorner", KillPanelButton).CornerRadius = UDim.new(0, 12)

trackConnection(KillPanelButton.MouseButton1Click:Connect(function()
    neverfailtoggle = false
    podstoggle = false
    pctoggle = false
    playertoggle = false
    bestpctoggle = false
    exitstoggle = false
    beastcamtoggle = false
    autoplaytoggle = false
    autointeracttoggle = false
    speedtoggle = false
    jumptoggle = false
    nocliptoggle = false
    nofogtoggle = false
    fullbrighttoggle = false
    smartesptoggle = false
    fovtoggle = false
    lowgravtoggle = false
    proximitytoggle = false

    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 0
    end

    local lighting = game:GetService("Lighting")
    if origFogEnd then lighting.FogEnd = origFogEnd end
    if origFogStart then lighting.FogStart = origFogStart end
    if origAmbient then lighting.Ambient = origAmbient end
    if origOutdoorAmbient then lighting.OutdoorAmbient = origOutdoorAmbient end
    local atmosphere = lighting:FindFirstChild("Atmosphere")
    if atmosphere and origAtmDensity then
        atmosphere.Density = origAtmDensity
        atmosphere.Offset = origAtmOffset
    end
    workspace.CurrentCamera.FieldOfView = 70
    workspace.Gravity = 196.2

    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("Highlight") then v:Destroy() end
    end
    
    for _, conn in pairs(activeConnections) do
        if conn and conn.Connected then conn:Disconnect() end
    end

    if ViewportFrame then ViewportFrame:Destroy() end
    task.wait(0.1)
    FTFHAX:Destroy()
end))
-- ==========================================================

ToolsMenuWindow.Name = "ToolsMenuWindow"
ToolsMenuWindow.Parent = FTFHAX
ToolsMenuWindow.AnchorPoint = Vector2.new(0.5, 0.5)
ToolsMenuWindow.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
ToolsMenuWindow.BorderColor3 = Color3.fromRGB(0, 0, 0)
ToolsMenuWindow.BorderSizePixel = 2
ToolsMenuWindow.ClipsDescendants = true
ToolsMenuWindow.Position = UDim2.new(0.5, 0, 0.5, -18)
ToolsMenuWindow.Size = UDim2.new(0, 480, 0, 175)
ToolsMenuWindow.SizeConstraint = Enum.SizeConstraint.RelativeYY
ToolsMenuWindow.Visible = false

Body_3.Name = "Body"
Body_3.Parent = ToolsMenuWindow
Body_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Body_3.BackgroundTransparency = 1.000
Body_3.BorderSizePixel = 0
Body_3.Position = UDim2.new(0, 0, 0, 40)
Body_3.Size = UDim2.new(1, 0, 1, -40)

TitleLabel_2.Name = "TitleLabel"
TitleLabel_2.Parent = Body_3
TitleLabel_2.AnchorPoint = Vector2.new(0.5, 0)
TitleLabel_2.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
TitleLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TitleLabel_2.BorderSizePixel = 0
TitleLabel_2.Position = UDim2.new(0.5, 0, -1.06500006, 150)
TitleLabel_2.Size = UDim2.new(1, -10, 0.0235044118, 30)
TitleLabel_2.Text = "Tools"
TitleLabel_2.TextColor3 = Color3.fromRGB(144, 255, 161)
TitleLabel_2.TextScaled = true
TitleLabel_2.TextSize = 14.000
TitleLabel_2.TextWrapped = true

ButtonsFrame_2.Name = "ButtonsFrame"
ButtonsFrame_2.Parent = Body_3
ButtonsFrame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ButtonsFrame_2.BackgroundTransparency = 1.000
ButtonsFrame_2.Position = UDim2.new(0, 5, 0, 45)
ButtonsFrame_2.Size = UDim2.new(1, -10, -0.00555555569, 85)

UIGridLayout_3.Parent = ButtonsFrame_2
UIGridLayout_3.FillDirection = Enum.FillDirection.Vertical
UIGridLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIGridLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout_3.CellPadding = UDim2.new(0, 6, 0, 6)
UIGridLayout_3.CellSize = UDim2.new(0, 152, 0, 39)

NeverFailButton.Name = "NeverFailButton"
NeverFailButton.Parent = ButtonsFrame_2
NeverFailButton.BackgroundColor3 = Color3.fromRGB(191, 0, 0)
NeverFailButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
NeverFailButton.BorderSizePixel = 0
NeverFailButton.Size = UDim2.new(0, 200, 0, 50)
NeverFailButton.Text = "Never Fail"
NeverFailButton.TextColor3 = Color3.fromRGB(255, 255, 255)
NeverFailButton.TextScaled = true
NeverFailButton.TextSize = 14.000
NeverFailButton.TextWrapped = true

AutoPlayButton.Name = "AutoPlayButton"
AutoPlayButton.Parent = ButtonsFrame_2
AutoPlayButton.BackgroundColor3 = Color3.fromRGB(191, 0, 0)
AutoPlayButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
AutoPlayButton.BorderSizePixel = 0
AutoPlayButton.LayoutOrder = 1
AutoPlayButton.Size = UDim2.new(0, 200, 0, 50)
AutoPlayButton.Text = "Auto-Play"
AutoPlayButton.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoPlayButton.TextScaled = true
AutoPlayButton.TextSize = 14.000
AutoPlayButton.TextWrapped = true

AutoInteractButton.Name = "AutoInteractButton"
AutoInteractButton.Parent = ButtonsFrame_2
AutoInteractButton.BackgroundColor3 = Color3.fromRGB(191, 0, 0)
AutoInteractButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
AutoInteractButton.BorderSizePixel = 0
AutoInteractButton.LayoutOrder = 2
AutoInteractButton.Size = UDim2.new(0, 200, 0, 50)
AutoInteractButton.Text = "Auto Interact"
AutoInteractButton.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoInteractButton.TextScaled = true
AutoInteractButton.TextSize = 14.000
AutoInteractButton.TextWrapped = true

BeastCamButton.Name = "BeastCamButton"
BeastCamButton.Parent = ButtonsFrame_2
BeastCamButton.BackgroundColor3 = Color3.fromRGB(191, 0, 0)
BeastCamButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
BeastCamButton.BorderSizePixel = 0
BeastCamButton.LayoutOrder = 3
BeastCamButton.Size = UDim2.new(0, 200, 0, 50)
BeastCamButton.Text = "Beast Cam"
BeastCamButton.TextColor3 = Color3.fromRGB(255, 255, 255)
BeastCamButton.TextScaled = true
BeastCamButton.TextSize = 14.000
BeastCamButton.TextWrapped = true

TopBar_3.Name = "TopBar"
TopBar_3.Parent = ToolsMenuWindow
TopBar_3.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
TopBar_3.BorderSizePixel = 0
TopBar_3.Size = UDim2.new(1, 0, 0, 40)
TopBar_3.ZIndex = 5

CloseButton_3.Name = "CloseButton"
CloseButton_3.Parent = TopBar_3
CloseButton_3.AnchorPoint = Vector2.new(1, 0)
CloseButton_3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CloseButton_3.BorderColor3 = Color3.fromRGB(191, 191, 191)
CloseButton_3.BorderSizePixel = 0
CloseButton_3.Position = UDim2.new(1, -1, 0, 1)
CloseButton_3.Size = UDim2.new(0, 36, 0, 36)
CloseButton_3.SizeConstraint = Enum.SizeConstraint.RelativeYY
CloseButton_3.ZIndex = 5
CloseButton_3.Modal = true
CloseButton_3.Text = "X"
CloseButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton_3.TextScaled = true
CloseButton_3.TextSize = 14.000
CloseButton_3.TextWrapped = true

BackButton_2.Name = "BackButton"
BackButton_2.Parent = TopBar_3
BackButton_2.AnchorPoint = Vector2.new(1, 0)
BackButton_2.BackgroundColor3 = Color3.fromRGB(95, 95, 95)
BackButton_2.BorderColor3 = Color3.fromRGB(191, 191, 191)
BackButton_2.BorderSizePixel = 0
BackButton_2.Position = UDim2.new(1, -41, 0, 1)
BackButton_2.Size = UDim2.new(1, -4, 1, -4)
BackButton_2.SizeConstraint = Enum.SizeConstraint.RelativeYY
BackButton_2.ZIndex = 5
BackButton_2.Text = "<"
BackButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
BackButton_2.TextScaled = true
BackButton_2.TextSize = 14.000
BackButton_2.TextWrapped = true

CreditTotalText_3.Name = "CreditTotalText"
CreditTotalText_3.Parent = TopBar_3
CreditTotalText_3.AnchorPoint = Vector2.new(1, 0)
CreditTotalText_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CreditTotalText_3.BackgroundTransparency = 1.000
CreditTotalText_3.BorderSizePixel = 0
CreditTotalText_3.Position = UDim2.new(1, -45, 0, 0)
CreditTotalText_3.Size = UDim2.new(0, 100, 1, 0)
CreditTotalText_3.ZIndex = 5
CreditTotalText_3.Text = ver
CreditTotalText_3.TextColor3 = Color3.fromRGB(255, 255, 0)
CreditTotalText_3.TextScaled = true
CreditTotalText_3.TextWrapped = true
CreditTotalText_3.TextXAlignment = Enum.TextXAlignment.Right

PageTitleText_3.Name = "PageTitleText"
PageTitleText_3.Parent = TopBar_3
PageTitleText_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PageTitleText_3.BackgroundTransparency = 1.000
PageTitleText_3.BorderSizePixel = 0
PageTitleText_3.Position = UDim2.new(0, 10, 0, 0)
PageTitleText_3.Size = UDim2.new(0, 200, 1, 0)
PageTitleText_3.ZIndex = 5
PageTitleText_3.Text = "FTF admin Panel - Tools"
PageTitleText_3.TextColor3 = Color3.fromRGB(255, 255, 255)
PageTitleText_3.TextScaled = true
PageTitleText_3.TextWrapped = true
PageTitleText_3.TextXAlignment = Enum.TextXAlignment.Left

ViewportFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ViewportFrame.Parent = FTFHAX
ViewportFrame.Position = UDim2.new(0, 5, 0.666000009, -5)
ViewportFrame.Size = UDim2.new(0.333, 0, 0.333, 0)
ViewportFrame.Ambient = Color3.fromRGB(147,147,147)
ViewportFrame.LightDirection = Vector3.new(0,1,0)
ViewportFrame.BackgroundColor3 = Color3.fromRGB(50,50,50)
ViewportFrame.BackgroundTransparency = 0.9
ViewportFrame.Visible = false

-- ==================== DYNAMIC MAP CHECK ====================
local function getMap()
    local mapFolder = game.ReplicatedStorage:FindFirstChild("CurrentMap")
    if mapFolder and mapFolder.Value then
        return mapFolder.Value
    end
    return nil
end

-- ==================== FIXED TP MENU ====================
local TPMenu = ESPMenuWindow:Clone()
TPMenu.Name = "TPMenu"
TPMenu.Visible = false
TPMenu.Parent = FTFHAX
TPMenu.Body.TitleLabel.Text = "TELEPORT"
TPMenu.TopBar.PageTitleText.Text = "FTF admin Panel - TP"

for _, v in pairs(TPMenu.Body.ButtonsFrame:GetChildren()) do
    if v:IsA("TextButton") then v:Destroy() end
end

local lp = game.Players.LocalPlayer

local function AddTP(name, func)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0, 200, 0, 50)
    btn.BackgroundColor3 = Color3.fromRGB(191, 0, 0)
    btn.Text = name
    btn.TextColor3 = Color3.new(1,1,1)
    btn.Font = Enum.Font.SourceSans
    btn.TextScaled = true
    btn.Parent = TPMenu.Body.ButtonsFrame
    trackConnection(btn.MouseButton1Click:Connect(function()
        pcall(func)
    end))
end

AddTP("Nearest PC", function()
    if not lp.Character or not lp.Character:FindFirstChild("HumanoidRootPart") then return end
    local map = getMap()
    if not map then return end
    local closest, dist = nil, math.huge
    local pos = lp.Character.HumanoidRootPart.Position
    for _, v in pairs(map:GetDescendants()) do
        if v.Name == "ComputerTable" then
            local d = (v:GetPivot().Position - pos).Magnitude
            if d < dist then dist = d; closest = v end
        end
    end
    if closest then lp.Character.HumanoidRootPart.CFrame = closest:GetPivot() + Vector3.new(0, 5, 0) end
end)

AddTP("Safest PC (Best)", function()
    if not lp.Character or not lp.Character:FindFirstChild("HumanoidRootPart") then return end
    local best = getBestPC()
    if best and best[1] and best[1].pc then
        lp.Character.HumanoidRootPart.CFrame = best[1].pc:GetPivot() + Vector3.new(0, 5, 0)
    end
end)

AddTP("Nearest Pod", function()
    if not lp.Character or not lp.Character:FindFirstChild("HumanoidRootPart") then return end
    local map = getMap()
    if not map then return end
    local closest, dist = nil, math.huge
    local pos = lp.Character.HumanoidRootPart.Position
    for _, v in pairs(map:GetDescendants()) do
        if v.Name == "FreezePod" then
            local d = (v:GetPivot().Position - pos).Magnitude
            if d < dist then dist = d; closest = v end
        end
    end
    if closest then lp.Character.HumanoidRootPart.CFrame = closest:GetPivot() + Vector3.new(0, 5, 0) end
end)

AddTP("Frozen Teammate", function()
    if not lp.Character or not lp.Character:FindFirstChild("HumanoidRootPart") then return end
    local map = getMap()
    if not map then return end
    for _, v in pairs(map:GetDescendants()) do
        if v.Name == "FreezePod" and v:FindFirstChild("Occupant") and v.Occupant.Value ~= nil then
            lp.Character.HumanoidRootPart.CFrame = v:GetPivot() + Vector3.new(0, 5, 0)
            break
        end
    end
end)

AddTP("Exit Door", function()
    if not lp.Character or not lp.Character:FindFirstChild("HumanoidRootPart") then return end
    local map = getMap()
    if not map then return end
    for _, v in pairs(map:GetDescendants()) do
        if v.Name == "ExitDoor" then
            lp.Character.HumanoidRootPart.CFrame = v:GetPivot() + Vector3.new(0, 5, 0)
            break
        end
    end
end)

AddTP("TP to Beast", function()
    if not lp.Character or not lp.Character:FindFirstChild("HumanoidRootPart") then return end
    local beast = getBeast()
    if beast and beast.Character and beast.Character:FindFirstChild("HumanoidRootPart") then
        lp.Character.HumanoidRootPart.CFrame = beast.Character.HumanoidRootPart.CFrame + Vector3.new(0, 5, 0)
    end
end)

AddTP("Nearest Teammate", function()
    if not lp.Character or not lp.Character:FindFirstChild("HumanoidRootPart") then return end
    local closest, dist = nil, math.huge
    local beast = getBeast()
    for _, p in pairs(game.Players:GetPlayers()) do
        if p ~= lp and p ~= beast and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
            local d = (lp.Character.HumanoidRootPart.Position - p.Character.HumanoidRootPart.Position).Magnitude
            if d < dist then dist = d; closest = p end
        end
    end
    if closest and closest.Character and closest.Character:FindFirstChild("HumanoidRootPart") then
        lp.Character.HumanoidRootPart.CFrame = closest.Character.HumanoidRootPart.CFrame + Vector3.new(5, 0, 0)
    end
end)

AddTP("Spawn", function()
    if not lp.Character or not lp.Character:FindFirstChild("HumanoidRootPart") then return end
    local spawn = workspace:FindFirstChild("SpawnLocation") or workspace:FindFirstChild("Spawns") and workspace.Spawns:FindFirstChildOfClass("SpawnLocation")
    if spawn then
        lp.Character.HumanoidRootPart.CFrame = spawn.CFrame + Vector3.new(0, 10, 0)
    end
end)

AddTP("Map Center", function()
    if not lp.Character or not lp.Character:FindFirstChild("HumanoidRootPart") then return end
    local map = getMap()
    if map then
        local cf = map:GetBoundingBox()
        lp.Character.HumanoidRootPart.CFrame = cf.Position + Vector3.new(0, 80, 0)
    end
end)

AddTP("Random PC", function()
    if not lp.Character or not lp.Character:FindFirstChild("HumanoidRootPart") then return end
    local map = getMap()
    if not map then return end
    local pcs = {}
    for _, v in pairs(map:GetDescendants()) do
        if v.Name == "ComputerTable" then table.insert(pcs, v) end
    end
    if #pcs > 0 then
        local rand = pcs[math.random(1, #pcs)]
        lp.Character.HumanoidRootPart.CFrame = rand:GetPivot() + Vector3.new(0, 5, 0)
    end
end)

-- ==================== PLAYER MENU ====================
local PlayerMenu = ESPMenuWindow:Clone()
PlayerMenu.Name = "PlayerMenu"
PlayerMenu.Visible = false
PlayerMenu.Parent = FTFHAX
PlayerMenu.Body.TitleLabel.Text = "PLAYER MODS"
PlayerMenu.TopBar.PageTitleText.Text = "FTF admin Panel - Player"

for _, v in pairs(PlayerMenu.Body.ButtonsFrame:GetChildren()) do
    if v:IsA("TextButton") then v:Destroy() end
end

local function AddPlayerToggle(name, callback)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0, 200, 0, 50)
    btn.BackgroundColor3 = Color3.fromRGB(191, 0, 0)
    btn.Text = name
    btn.TextColor3 = Color3.new(1,1,1)
    btn.Font = Enum.Font.SourceSans
    btn.TextScaled = true
    btn.Parent = PlayerMenu.Body.ButtonsFrame
    
    trackConnection(btn.MouseButton1Click:Connect(function()
        local newState = callback()
        btn.BackgroundColor3 = newState and Color3.new(0, 0.74902, 0) or Color3.new(0.74902, 0, 0)
    end))
end

AddPlayerToggle("WalkSpeed (24)", function()
    speedtoggle = not speedtoggle
    if not speedtoggle then
        local char = game.Players.LocalPlayer.Character
        if char and char:FindFirstChild("Humanoid") then
            char.Humanoid.WalkSpeed = 16
        end
    end
    return speedtoggle
end)

AddPlayerToggle("JumpPower (50)", function()
    jumptoggle = not jumptoggle
    if not jumptoggle then
        local char = game.Players.LocalPlayer.Character
        if char and char:FindFirstChild("Humanoid") then
            char.Humanoid.JumpPower = 0 -- Reset to 0 since players can't jump in FTF!
        end
    end
    return jumptoggle
end)

AddPlayerToggle("Noclip", function()
    nocliptoggle = not nocliptoggle
    if not nocliptoggle then
        local char = game.Players.LocalPlayer.Character
        if char then
            for _, part in pairs(char:GetChildren()) do
                if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
                    part.CanCollide = true
                end
            end
        end
    end
    return nocliptoggle
end)

-- ==================== RISK LEVEL MENU ====================
local RiskMenu = ESPMenuWindow:Clone()
RiskMenu.Name = "RiskMenu"
RiskMenu.Visible = false
RiskMenu.Parent = FTFHAX
RiskMenu.Body.TitleLabel.Text = "RISK LEVELS"
RiskMenu.TopBar.PageTitleText.Text = "FTF admin Panel - Risk"

RiskMenu.Body.ButtonsFrame:Destroy()

local RiskScroll = Instance.new("ScrollingFrame")
RiskScroll.Name = "ButtonsFrame"
RiskScroll.Parent = RiskMenu.Body
RiskScroll.BackgroundTransparency = 1
RiskScroll.Position = UDim2.new(0, 5, 0, 45)
RiskScroll.Size = UDim2.new(1, -10, 1, -55)
RiskScroll.ScrollBarThickness = 4
RiskScroll.AutomaticCanvasSize = Enum.AutomaticSize.Y

local RiskList = Instance.new("UIListLayout")
RiskList.Parent = RiskScroll
RiskList.SortOrder = Enum.SortOrder.LayoutOrder
RiskList.Padding = UDim.new(0, 5)

local function AddRiskItem(title, desc, color)
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(1, -10, 0, 75)
    frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    frame.BorderSizePixel = 0
    frame.Parent = RiskScroll
    
    local titleLbl = Instance.new("TextLabel")
    titleLbl.Size = UDim2.new(1, -10, 0.35, 0)
    titleLbl.Position = UDim2.new(0, 5, 0, 5)
    titleLbl.BackgroundTransparency = 1
    titleLbl.Text = title
    titleLbl.TextColor3 = color
    titleLbl.TextXAlignment = Enum.TextXAlignment.Left
    titleLbl.Font = Enum.Font.SourceSansBold
    titleLbl.TextSize = 18
    titleLbl.Parent = frame
    
    local descLbl = Instance.new("TextLabel")
    descLbl.Size = UDim2.new(1, -10, 0.6, 0)
    descLbl.Position = UDim2.new(0, 5, 0.35, 2)
    descLbl.BackgroundTransparency = 1
    descLbl.Text = desc
    descLbl.TextColor3 = Color3.new(0.9, 0.9, 0.9)
    descLbl.TextXAlignment = Enum.TextXAlignment.Left
    descLbl.TextYAlignment = Enum.TextYAlignment.Top
    descLbl.TextWrapped = true
    descLbl.Font = Enum.Font.SourceSans
    descLbl.TextSize = 15
    descLbl.Parent = frame
end

AddRiskItem("🟢 SAFE (Undetectable)", "All ESPs, No Fog, Fullbright, Beast Alert, Beast Cam, Custom FOV, Delete Doors, Invis Walls.", Color3.fromRGB(100, 255, 100))
AddRiskItem("🟡 MODERATE (Use Caution)", "Smart ESP (obvious tracking), WalkSpeed 24 (sneaky), Low Gravity, Jump Power 50, Anti-AFK.", Color3.fromRGB(255, 255, 100))
AddRiskItem("🔴 HIGH RISK (Ban Chance)", "Noclip (flags part-clipping checks), Fixed TP (Anti-cheat trigger), Auto-Play, Auto-Interact.", Color3.fromRGB(255, 100, 100))

-- ==================== MISC MENU ====================
local MiscMenu = ESPMenuWindow:Clone()
MiscMenu.Name = "MiscMenu"
MiscMenu.Visible = false
MiscMenu.Parent = FTFHAX
MiscMenu.Body.TitleLabel.Text = "MISC MODS"
MiscMenu.TopBar.PageTitleText.Text = "FTF admin Panel - Misc"

MiscMenu.Body.ButtonsFrame:Destroy()

local MiscScroll = Instance.new("ScrollingFrame")
MiscScroll.Name = "ButtonsFrame"
MiscScroll.Parent = MiscMenu.Body
MiscScroll.BackgroundTransparency = 1
MiscScroll.Position = UDim2.new(0, 5, 0, 45)
MiscScroll.Size = UDim2.new(1, -10, 1, -55)
MiscScroll.ScrollBarThickness = 4
MiscScroll.AutomaticCanvasSize = Enum.AutomaticSize.Y

local MiscGrid = Instance.new("UIGridLayout")
MiscGrid.Parent = MiscScroll
MiscGrid.FillDirection = Enum.FillDirection.Horizontal -- FIXED THIS LINE
MiscGrid.HorizontalAlignment = Enum.HorizontalAlignment.Center
MiscGrid.SortOrder = Enum.SortOrder.LayoutOrder
MiscGrid.CellPadding = UDim2.new(0, 6, 0, 6)
MiscGrid.CellSize = UDim2.new(0, 152, 0, 39)

-- ==================== CLICK ROUTING ====================
trackConnection(CheatButton.MouseButton1Click:Connect(function()
    ESPMenuWindow.Visible = false
    ToolsMenuWindow.Visible = false
    TPMenu.Visible = false
    PlayerMenu.Visible = false
    if MiscMenu then MiscMenu.Visible = false end
    if RiskMenu then RiskMenu.Visible = false end
    MainMenuWindow.Visible = not MainMenuWindow.Visible
end))

trackConnection(CloseButton_2.MouseButton1Click:Connect(function()
    MainMenuWindow.Visible = false
end))

trackConnection(CloseButton.MouseButton1Click:Connect(function()
    ESPMenuWindow.Visible = false
end))

trackConnection(CloseButton_3.MouseButton1Click:Connect(function()
    ToolsMenuWindow.Visible = false
end))

trackConnection(BackButton.MouseButton1Click:Connect(function()
    ESPMenuWindow.Visible = false
    ToolsMenuWindow.Visible = false
    TPMenu.Visible = false
    PlayerMenu.Visible = false
    if MiscMenu then MiscMenu.Visible = false end
    if RiskMenu then RiskMenu.Visible = false end
    MainMenuWindow.Visible = true
end))

trackConnection(BackButton_2.MouseButton1Click:Connect(function()
    ESPMenuWindow.Visible = false
    ToolsMenuWindow.Visible = false
    TPMenu.Visible = false
    PlayerMenu.Visible = false
    if MiscMenu then MiscMenu.Visible = false end
    if RiskMenu then RiskMenu.Visible = false end
    MainMenuWindow.Visible = true
end))

trackConnection(ESPButton.MouseButton1Click:Connect(function()
    ESPMenuWindow.Visible = true
    ToolsMenuWindow.Visible = false
    TPMenu.Visible = false
    PlayerMenu.Visible = false
    if MiscMenu then MiscMenu.Visible = false end
    if RiskMenu then RiskMenu.Visible = false end
    MainMenuWindow.Visible = false
end))

trackConnection(ToolsButton.MouseButton1Click:Connect(function()
    ESPMenuWindow.Visible = false
    ToolsMenuWindow.Visible = true
    TPMenu.Visible = false
    PlayerMenu.Visible = false
    if MiscMenu then MiscMenu.Visible = false end
    if RiskMenu then RiskMenu.Visible = false end
    MainMenuWindow.Visible = false
end))

trackConnection(TPButton.MouseButton1Click:Connect(function()
    ESPMenuWindow.Visible = false
    ToolsMenuWindow.Visible = false
    PlayerMenu.Visible = false
    if MiscMenu then MiscMenu.Visible = false end
    if RiskMenu then RiskMenu.Visible = false end
    MainMenuWindow.Visible = false
    TPMenu.Visible = true
end))

trackConnection(PlayerTabButton.MouseButton1Click:Connect(function()
    ESPMenuWindow.Visible = false
    ToolsMenuWindow.Visible = false
    TPMenu.Visible = false
    if MiscMenu then MiscMenu.Visible = false end
    if RiskMenu then RiskMenu.Visible = false end
    MainMenuWindow.Visible = false
    PlayerMenu.Visible = true
end))

trackConnection(MiscTabButton.MouseButton1Click:Connect(function()
    ESPMenuWindow.Visible = false
    ToolsMenuWindow.Visible = false
    TPMenu.Visible = false
    PlayerMenu.Visible = false
    if RiskMenu then RiskMenu.Visible = false end
    MainMenuWindow.Visible = false
    MiscMenu.Visible = true
end))

trackConnection(RiskTabButton.MouseButton1Click:Connect(function()
    ESPMenuWindow.Visible = false
    ToolsMenuWindow.Visible = false
    TPMenu.Visible = false
    PlayerMenu.Visible = false
    if MiscMenu then MiscMenu.Visible = false end
    MainMenuWindow.Visible = false
    RiskMenu.Visible = true
end))

trackConnection(TPMenu.TopBar.BackButton.MouseButton1Click:Connect(function()
    TPMenu.Visible = false
    MainMenuWindow.Visible = true
end))

trackConnection(PlayerMenu.TopBar.BackButton.MouseButton1Click:Connect(function()
    PlayerMenu.Visible = false
    MainMenuWindow.Visible = true
end))

trackConnection(MiscMenu.TopBar.BackButton.MouseButton1Click:Connect(function()
    MiscMenu.Visible = false
    MainMenuWindow.Visible = true
end))

trackConnection(RiskMenu.TopBar.BackButton.MouseButton1Click:Connect(function()
    RiskMenu.Visible = false
    MainMenuWindow.Visible = true
end))

-- Helper functions to fetch game data safely
function getBeast()
    local players = game.Players:GetChildren()
    for i=1, #players do
        local plr = players[i]
        local stats = plr:FindFirstChild("TempPlayerStatsModule")
        if (stats and stats:FindFirstChild("IsBeast") and stats.IsBeast.Value == true) then
            return plr
        end
        local character = plr.Character
        if character and character:FindFirstChild("BeastPowers") then
            return plr
        end
    end
    return nil
end

function getBestPC()
    local beast = getBeast()
    local pcs = {}
    local map = getMap()
    
    if map then
        for _, pc in pairs(map:GetChildren()) do
            if pc.Name == "ComputerTable" and pc:FindFirstChild("Screen") and pc.Screen.BrickColor ~= BrickColor.new("Dark green") then
                local magnitude = math.huge
                if beast and beast.Character and beast.Character:FindFirstChild("HumanoidRootPart") then
                    magnitude = (pc.Screen.Position - beast.Character.HumanoidRootPart.Position).Magnitude
                end
                table.insert(pcs, {magnitude=magnitude, pc=pc})
            end
        end
    end
    table.sort(pcs, function(a, b) return a.magnitude > b.magnitude end)
    return pcs
end

function isPlayerTyping()
    local char = game.Players.LocalPlayer.Character
    if not char then return false end
    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hum then return false end
    local anims = hum:GetPlayingAnimationTracks()
    for i=1,#anims do
        if anims[i].Name == "AnimTyping" then return true end
    end
    return false
end

-- ESP Highlight Applier
function reloadESP()
    local map = getMap()
    if map then
        local mapstuff = map:GetChildren()
        for i=1,#mapstuff do
            local item = mapstuff[i]
            if item.Name == "ComputerTable" then
                if item:FindFirstChild("Highlight") and not pctoggle then
                    item.Highlight:Destroy()
                elseif pctoggle and not item:FindFirstChild("Highlight") then
                    local a = Instance.new("Highlight", item)
                    a.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                end
            elseif item.Name == "FreezePod" then
                if item:FindFirstChild("Highlight") and not podstoggle then
                    item.Highlight:Destroy()
                elseif podstoggle and not item:FindFirstChild("Highlight") then
                    local a = Instance.new("Highlight", item)
                    a.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                    a.FillColor = Color3.fromRGB(120,200,255)
                    a.OutlineColor = Color3.fromRGB(160,255,255)
                end
            elseif item.Name == "ExitDoor" then
                if item:FindFirstChild("Highlight") and not exitstoggle then
                    item.Highlight:Destroy()
                elseif exitstoggle and not item:FindFirstChild("Highlight") then
                    local a = Instance.new("Highlight", item)
                    a.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                    a.FillColor = Color3.fromRGB(252, 255, 100)
                    a.OutlineColor = Color3.fromRGB(255,255,160)
                end
            end
        end
    end

    local players = game.Players:GetPlayers()
    for i=1, #players do
        local plr = players[i]
        if plr ~= game.Players.LocalPlayer and plr.Character then
            if plr.Character:FindFirstChild("Highlight") and not playertoggle then
                plr.Character.Highlight:Destroy()
            elseif playertoggle and not plr.Character:FindFirstChild("Highlight") then
                local a = Instance.new("Highlight", plr.Character)
                a.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            end
        end
    end
end

-- Dedicated RunService Loop for ESP Colors (OPTIMIZED)
local espTick = 0
local cachedBest = nil
trackConnection(game:GetService("RunService").Heartbeat:Connect(function()
    espTick = espTick + 1
    if espTick % 10 == 0 then -- Only calculate Best PC 6 times a second instead of 60!
        cachedBest = getBestPC()
    end

    if pctoggle then
        local map = getMap()
        if map then
            for _, pc in pairs(map:GetChildren()) do
                if pc.Name == "ComputerTable" and pc:FindFirstChild("Highlight") and pc:FindFirstChild("Screen") then
                    local a = pc.Highlight
                    a.FillColor = pc.Screen.Color
                    if bestpctoggle and cachedBest and cachedBest[1] and cachedBest[1].pc == pc then
                        a.OutlineColor = Color3.fromRGB(200, 0, 255)
                    else
                        a.OutlineColor = Color3.fromRGB(math.clamp(a.FillColor.R*400,0,255), math.clamp(a.FillColor.G*400,0,255), math.clamp(a.FillColor.B*400,0,255))
                    end
                end
            end
        end
    end

    if playertoggle then
        local beast = getBeast()
        for _, plr in pairs(game.Players:GetPlayers()) do
            if plr ~= game.Players.LocalPlayer and plr.Character and plr.Character:FindFirstChild("Highlight") then
                local a = plr.Character.Highlight
                if plr == beast then
                    a.FillColor = Color3.fromRGB(255,0,0)
                    a.OutlineColor = Color3.fromRGB(255,127,127)
                else
                    a.FillColor = Color3.fromRGB(0,255,0)
                    a.OutlineColor = Color3.fromRGB(127,255,127)
                end
            end
        end
    end
end))

function reloadBeastCam()
    ViewportFrame:ClearAllChildren()
    if beastcamtoggle and game.ReplicatedStorage:FindFirstChild("CurrentMap") and game.ReplicatedStorage.CurrentMap.Value then
        local beast = getBeast()
        local cam = Instance.new("Camera", ViewportFrame)
        cam.CameraType = Enum.CameraType.Scriptable
        cam.FieldOfView = 70
        
        local map = game.ReplicatedStorage.CurrentMap.Value
        local mapclone = map:Clone()
        mapclone.Name = "map"
        
        for _, item in pairs(mapclone:GetDescendants()) do
            if item.Name == "SingleDoor" or item.Name == "DoubleDoor" or item:IsA("Sound") or item:IsA("BaseScript") then
                item:Destroy() 
            end
        end

        mapclone.Parent = ViewportFrame
        ViewportFrame.CurrentCamera = cam

        task.spawn(function()
            while beastcamtoggle and mapclone.Parent do
                task.wait()
                local currentBeast = getBeast()
                if currentBeast and currentBeast.Character and currentBeast.Character:FindFirstChild("Head") then
                    cam.CFrame = currentBeast.Character.Head.CFrame
                end
            end
        end)

        task.spawn(function()
            local dummy = Instance.new("Folder", ViewportFrame)
            dummy.Name = "dummy"
            local doors = Instance.new("Folder", ViewportFrame)
            doors.Name = "doors"

            while beastcamtoggle and mapclone.Parent do
                task.wait(0.3)
                dummy:ClearAllChildren()
                doors:ClearAllChildren()
                
                for _, door in pairs(map:GetChildren()) do
                    if door.Name == "SingleDoor" or door.Name == "DoubleDoor" then
                        door:Clone().Parent = doors
                    end
                end

                for _, plr in pairs(game.Players:GetPlayers()) do
                    if plr ~= getBeast() and plr.Character then
                        plr.Character.Archivable = true
                        local dummyclone = plr.Character:Clone()
                        for _, part in pairs(dummyclone:GetDescendants()) do
                            if part:IsA("Sound") or part:IsA("BaseScript") then
                                part:Destroy() 
                            end
                        end
                        dummyclone.Parent = dummy
                    end
                end
            end
        end)
    end
end

-- Button Listeners
trackConnection(PodsESPButton.MouseButton1Click:Connect(function()
    podstoggle = not podstoggle
    PodsESPButton.BackgroundColor3 = podstoggle and Color3.new(0, 0.74902, 0) or Color3.new(0.74902, 0, 0)
    reloadESP()
end))

trackConnection(PCESPButton.MouseButton1Click:Connect(function()
    pctoggle = not pctoggle
    PCESPButton.BackgroundColor3 = pctoggle and Color3.new(0, 0.74902, 0) or Color3.new(0.74902, 0, 0)
    reloadESP()
end))

trackConnection(PlayerESPButton.MouseButton1Click:Connect(function()
    playertoggle = not playertoggle
    PlayerESPButton.BackgroundColor3 = playertoggle and Color3.new(0, 0.74902, 0) or Color3.new(0.74902, 0, 0)
    reloadESP()
end))

trackConnection(BestPCESPButton.MouseButton1Click:Connect(function()
    bestpctoggle = not bestpctoggle
    BestPCESPButton.BackgroundColor3 = bestpctoggle and Color3.new(0, 0.74902, 0) or Color3.new(0.74902, 0, 0)
    reloadESP()
end))

trackConnection(ExitsESPButton.MouseButton1Click:Connect(function()
    exitstoggle = not exitstoggle
    ExitsESPButton.BackgroundColor3 = exitstoggle and Color3.new(0, 0.74902, 0) or Color3.new(0.74902, 0, 0)
    reloadESP()
end))

trackConnection(NeverFailButton.MouseButton1Click:Connect(function()
    neverfailtoggle = not neverfailtoggle
    NeverFailButton.BackgroundColor3 = neverfailtoggle and Color3.new(0, 0.74902, 0) or Color3.new(0.74902, 0, 0)
end))

trackConnection(AutoInteractButton.MouseButton1Click:Connect(function()
    autointeracttoggle = not autointeracttoggle
    AutoInteractButton.BackgroundColor3 = autointeracttoggle and Color3.new(0, 0.74902, 0) or Color3.new(0.74902, 0, 0)
end))

trackConnection(BeastCamButton.MouseButton1Click:Connect(function()
    beastcamtoggle = not beastcamtoggle
    BeastCamButton.BackgroundColor3 = beastcamtoggle and Color3.new(0, 0.74902, 0) or Color3.new(0.74902, 0, 0)
    if beastcamtoggle then
        ViewportFrame.Visible = true
        reloadBeastCam()
    else
        ViewportFrame:ClearAllChildren()
        ViewportFrame.Visible = false
    end
end))

trackConnection(AutoPlayButton.MouseButton1Click:Connect(function()
    autoplaytoggle = not autoplaytoggle
    AutoPlayButton.BackgroundColor3 = autoplaytoggle and Color3.new(0, 0.74902, 0) or Color3.new(0.74902, 0, 0)
end))

-- Game Event Listeners
trackConnection(game.ReplicatedStorage:WaitForChild("CurrentMap").Changed:Connect(function()
    task.wait(5)
    reloadESP()
    if beastcamtoggle then reloadBeastCam() end
end))

trackConnection(game.ReplicatedStorage:WaitForChild("IsGameActive").Changed:Connect(function()
    reloadESP()
    if beastcamtoggle then reloadBeastCam() end
end))

trackConnection(game:GetService("Players").PlayerAdded:Connect(function(player)
    trackConnection(player.CharacterAdded:Connect(function() reloadESP() end))
    trackConnection(player.CharacterRemoving:Connect(function() reloadESP() end))
end))

-- Never Fail Hooking
task.spawn(function()
    local mt = getrawmetatable(game)
    local old = mt.__namecall
    setreadonly(mt, false)
    mt.__namecall = newcclosure(function(self, ...)
        local args = {...}
        if getnamecallmethod() == 'FireServer' and args[1] == 'SetPlayerMinigameResult' and neverfailtoggle then
            args[2] = true
        end
        return old(self, unpack(args))
    end)
end)

-- Auto Interact Dynamic Hook (Fixes Respawn Bug)
local function setupAutoInteract(character)
    local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    local screenGui = playerGui:WaitForChild("ScreenGui", 10)
    if screenGui then
        local actionBox = screenGui:WaitForChild("ActionBox", 10)
        if actionBox then
            trackConnection(actionBox:GetPropertyChangedSignal("Visible"):Connect(function()
                if autointeracttoggle and actionBox.Visible then
                    game.ReplicatedStorage.RemoteEvent:FireServer("Input", "Action", true)
                end
            end))
        end
    end
end

trackConnection(game.Players.LocalPlayer.CharacterAdded:Connect(setupAutoInteract))
if game.Players.LocalPlayer.Character then
    setupAutoInteract(game.Players.LocalPlayer.Character)
end

-- Auto Play Loop
task.spawn(function()
    while true do
        task.wait(3)
        if autoplaytoggle then        
            local beast = getBeast()
            local map = game.ReplicatedStorage.CurrentMap.Value
            if map then
                for _, item in pairs(map:GetChildren()) do
                    if item.Name == "SingleDoor" or item.Name == "DoubleDoor" then
                        for _, doorPart in pairs(item:GetDescendants()) do
                            if doorPart:IsA("Part") and doorPart.Name ~= "Frame" then
                                if not doorPart:FindFirstChild("PathfindingModifier") then
                                    local a = Instance.new("PathfindingModifier", doorPart)
                                    a.PassThrough = true
                                end
                            elseif doorPart.Name == "Frame" and not doorPart:FindFirstChild("PathfindingModifier") then
                                local a = Instance.new("PathfindingModifier", doorPart)
                                a.PassThrough = false
                                a.Label = "avoid"
                            end
                        end
                    end
                end
            end

            local pcs = getBestPC()
            local PathfindingService = game:GetService("PathfindingService")
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("Humanoid") and char:FindFirstChild("HumanoidRootPart") then
                local Humanoid = char.Humanoid
                local Root = char.HumanoidRootPart
                
                local agentParams = {
                    AgentRadius = 2.4,
                    AgentHeight = 2,
                    AgentCanJump = true,
                    AgentWalkableClimb = 4,
                    WaypointSpacing = 2,
                    Costs = { avoid = 10.0 }
                }

                local beastNearby = beast and beast.Character and beast.Character:FindFirstChild("HumanoidRootPart") and 
                                    ((Root.Position - beast.Character.HumanoidRootPart.Position).Magnitude < 50)
                
                if beastNearby then print("beast nearby") end

                for _, pcData in ipairs(pcs) do
                    if isPlayerTyping() and not beastNearby then break end
                    
                    local pc = pcData.pc
                    if pc and pc:FindFirstChild("ComputerTrigger1") then
                        local goal = pc.ComputerTrigger1.Position
                        local path = PathfindingService:CreatePath(agentParams)
                        path:ComputeAsync(Root.Position, goal)
                        
                        if path.Status == Enum.PathStatus.Success then
                            local waypoints = path:GetWaypoints()
                            for i, waypoint in ipairs(waypoints) do
                                local ray = Ray.new(waypoint.Position, Vector3.new(0, 1, 0) * 3)
                                local part = workspace:FindPartOnRay(ray)
                                if part and part.CanCollide then
                                    print("need to crouch :)")
                                end

                                Humanoid:MoveTo(waypoint.Position)
                                if waypoint.Action == Enum.PathWaypointAction.Jump then
                                    Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                                end

                                local a = Instance.new("Part", workspace)
                                a.Shape = Enum.PartType.Ball
                                a.Position = waypoint.Position
                                a.BrickColor = BrickColor.new("Pink")
                                a.Material = Enum.Material.Neon
                                a.Size = Vector3.new(2,2,2)
                                a.Anchored = true
                                a.CanCollide = false
                                local touch = false

                                task.spawn(function()
                                    local conn
                                    conn = a.Touched:Connect(function(hit)
                                        if hit.Parent and hit.Parent.Name == char.Name then
                                            touch = true
                                            if conn then conn:Disconnect() end
                                            a:Destroy()
                                        end
                                    end)
                                    task.wait(10)
                                    if a.Parent then a:Destroy() touch = true end
                                end)
                                
                                repeat task.wait(0.05) until touch
                            end
                            break
                        end
                    end
                end
            end
        end
    end
end)

-- Player Mods Loop
trackConnection(game:GetService("RunService").Stepped:Connect(function()
    local char = game.Players.LocalPlayer.Character
    if char and char:FindFirstChild("Humanoid") then
        local hum = char.Humanoid
        
        if speedtoggle then
            hum.WalkSpeed = 24
        end
        
        if jumptoggle then
            hum.UseJumpPower = true
            hum.JumpPower = 50
        end
        
        if nocliptoggle then
            for _, part in pairs(char:GetDescendants()) do
                if part:IsA("BasePart") and part.CanCollide then
                    part.CanCollide = false
                end
            end
        end
    end
end))

-- ==================== MISC MENU FEATURES ====================
local function AddMiscButton(name, func)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0, 200, 0, 50)
    btn.BackgroundColor3 = Color3.fromRGB(191, 0, 0)
    btn.Text = name
    btn.TextColor3 = Color3.new(1,1,1)
    btn.Font = Enum.Font.SourceSans
    btn.TextScaled = true
    btn.Parent = MiscMenu.Body.ButtonsFrame
    trackConnection(btn.MouseButton1Click:Connect(function()
        pcall(func)
    end))
end

local function AddMiscToggle(name, callback)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0, 200, 0, 50)
    btn.BackgroundColor3 = Color3.fromRGB(191, 0, 0)
    btn.Text = name
    btn.TextColor3 = Color3.new(1,1,1)
    btn.Font = Enum.Font.SourceSans
    btn.TextScaled = true
    btn.Parent = MiscMenu.Body.ButtonsFrame
    
    trackConnection(btn.MouseButton1Click:Connect(function()
        local newState = callback()
        btn.BackgroundColor3 = newState and Color3.new(0, 0.74902, 0) or Color3.new(0.74902, 0, 0)
    end))
end

-- 1. Perfectly Reversible No Fog
AddMiscToggle("No Fog", function()
    nofogtoggle = not nofogtoggle
    local lighting = game:GetService("Lighting")
    local atmosphere = lighting:FindFirstChild("Atmosphere")
    
    if nofogtoggle then
        -- Memorize the map's original fog
        origFogEnd = lighting.FogEnd
        origFogStart = lighting.FogStart
        if atmosphere then
            origAtmDensity = atmosphere.Density
            origAtmOffset = atmosphere.Offset
        end
        
        -- Apply No Fog
        lighting.FogEnd = 100000
        lighting.FogStart = 100000
        if atmosphere then
            atmosphere.Density = 0
            atmosphere.Offset = 0
        end
    else
        -- Restore the exact original map fog
        if origFogEnd then lighting.FogEnd = origFogEnd end
        if origFogStart then lighting.FogStart = origFogStart end
        if atmosphere and origAtmDensity then
            atmosphere.Density = origAtmDensity
            atmosphere.Offset = origAtmOffset
        end
    end
    return nofogtoggle
end)

-- 2. Nuke FPS Booster (Fixes Beast Lag)
AddMiscButton("FPS Booster", function()
    local lighting = game:GetService("Lighting")
    
    -- Deletes the Beast's heartbeat screen blur and lighting overhead
    lighting.GlobalShadows = false
    for _, v in pairs(lighting:GetChildren()) do
        if v:IsA("PostEffect") or v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") or v:IsA("ColorCorrectionEffect") then
            v:Destroy()
        end
    end

    -- Deletes physics overhead from moving particles
    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("BasePart") then
            v.Material = Enum.Material.SmoothPlastic
        elseif v:IsA("PointLight") or v:IsA("SpotLight") or v:IsA("SurfaceLight") then
            v:Destroy()
        elseif v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Fire") or v:IsA("Trail") or v:IsA("Beam") then
            v:Destroy()
        elseif v:IsA("Texture") or v:IsA("Decal") then
            v:Destroy()
        end
    end
end)

-- 3. Smart ESP Render Distance (150 Studs)
AddMiscToggle("Smart ESP (150s)", function()
    smartesptoggle = not smartesptoggle
    return smartesptoggle
end)

-- Hooking Smart ESP into Heartbeat (OPTIMIZED)
local smartEspTick = 0
trackConnection(game:GetService("RunService").Heartbeat:Connect(function()
    smartEspTick = smartEspTick + 1
    if smartEspTick % 15 ~= 0 then return end -- Only check distances 4 times a second!

    if smartesptoggle and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        
        -- Check only players (very fast)
        for _, p in pairs(game.Players:GetPlayers()) do
            if p.Character and p.Character:FindFirstChild("Highlight") then
                if (p.Character:GetPivot().Position - pos).Magnitude > 150 then
                    p.Character.Highlight.Enabled = false
                else
                    p.Character.Highlight.Enabled = true
                end
            end
        end
        
        -- Check only the map folder (no GetDescendants)
        local map = getMap()
        if map then
            for _, item in pairs(map:GetChildren()) do
                if item:FindFirstChild("Highlight") then
                    if (item:GetPivot().Position - pos).Magnitude > 150 then
                        item.Highlight.Enabled = false
                    else
                        item.Highlight.Enabled = true
                    end
                end
            end
        end
    else
        -- Re-enable safely if toggled off
        if not smartesptoggle then
            for _, p in pairs(game.Players:GetPlayers()) do
                if p.Character and p.Character:FindFirstChild("Highlight") then p.Character.Highlight.Enabled = true end
            end
            local map = getMap()
            if map then
                for _, item in pairs(map:GetChildren()) do
                    if item:FindFirstChild("Highlight") then item.Highlight.Enabled = true end
                end
            end
        end
    end
end))

-- 4. Perfectly Reversible Fullbright
AddMiscToggle("Fullbright", function()
    fullbrighttoggle = not fullbrighttoggle
    local lighting = game:GetService("Lighting")
    
    if fullbrighttoggle then
        -- Memorize original lighting
        origAmbient = lighting.Ambient
        origOutdoorAmbient = lighting.OutdoorAmbient
        
        -- Make it bright
        lighting.Ambient = Color3.new(1, 1, 1)
        lighting.OutdoorAmbient = Color3.new(1, 1, 1)
    else
        -- Restore original lighting
        if origAmbient then lighting.Ambient = origAmbient end
        if origOutdoorAmbient then lighting.OutdoorAmbient = origOutdoorAmbient end
    end
    return fullbrighttoggle
end)

-- 5. Anti-AFK
AddMiscButton("Anti-AFK", function()
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:Connect(function()
        vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        task.wait(1)
        vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
end)

-- 6. Delete Doors
AddMiscButton("Delete Doors", function()
    local map = getMap()
    if map then
        for _, v in pairs(map:GetDescendants()) do
            if v.Name == "SingleDoor" or v.Name == "DoubleDoor" then
                v:Destroy()
            end
        end
    end
end)

-- 7. Custom FOV (120)
AddMiscToggle("FOV 120", function()
    fovtoggle = not fovtoggle
    if fovtoggle then
        workspace.CurrentCamera.FieldOfView = 120
    else
        workspace.CurrentCamera.FieldOfView = 70
    end
    return fovtoggle
end)

-- 8. Remove Invisible Walls
AddMiscButton("Remove Invis Walls", function()
    local map = getMap()
    if map then
        for _, v in pairs(map:GetDescendants()) do
            if v:IsA("BasePart") and v.Transparency >= 1 and v.CanCollide then
                v.CanCollide = false
            end
        end
    end
end)

-- 9. Low Gravity
AddMiscToggle("Low Gravity", function()
    lowgravtoggle = not lowgravtoggle
    if lowgravtoggle then
        workspace.Gravity = 50
    else
        workspace.Gravity = 196.2
    end
    return lowgravtoggle
end)

-- 10. Beast Proximity Alert
local AlertLabel = Instance.new("TextLabel")
AlertLabel.Size = UDim2.new(0, 400, 0, 50)
AlertLabel.Position = UDim2.new(0.5, -200, 0.8, 0)
AlertLabel.BackgroundTransparency = 1
AlertLabel.Text = "⚠️ BEAST NEARBY ⚠️"
AlertLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
AlertLabel.TextStrokeTransparency = 0
AlertLabel.Font = Enum.Font.SourceSansBold
AlertLabel.TextScaled = true
AlertLabel.Visible = false
AlertLabel.ZIndex = 100
AlertLabel.Parent = FTFHAX

AddMiscToggle("Beast Alert", function()
    proximitytoggle = not proximitytoggle
    if not proximitytoggle then
        AlertLabel.Visible = false
    end
    return proximitytoggle
end)

trackConnection(game:GetService("RunService").RenderStepped:Connect(function()
    if proximitytoggle and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local beast = getBeast()
        if beast and beast.Character and beast.Character:FindFirstChild("HumanoidRootPart") then
            local dist = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - beast.Character.HumanoidRootPart.Position).Magnitude
            if dist <= 45 then
                AlertLabel.Visible = true
            else
                AlertLabel.Visible = false
            end
        else
            AlertLabel.Visible = false
        end
    end
end))

local creditMain = Instance.new("TextLabel")
creditMain.Name = "XyrozzyCredit"
creditMain.Size = UDim2.new(1, 0, 0, 25)
creditMain.Position = UDim2.new(0, 0, 1, -25)
creditMain.BackgroundTransparency = 1
creditMain.Text = "Made by Xyrozzy"
creditMain.TextColor3 = Color3.fromRGB(200, 200, 200)
creditMain.Font = Enum.Font.SourceSans
creditMain.TextScaled = false
creditMain.TextSize = 14
creditMain.TextStrokeTransparency = 0.9
creditMain.Parent = MainMenuWindow

print("FTF admin Panel v0.6.79 • Final Assembled Script ✨")
