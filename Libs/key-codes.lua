-- This script was originally written in TypeScript.
--- Object to easily use key codes
-- I got them from https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes
-- There are a few left out, namely the OEM-specific keys and unassigned/undefined/reserved keys.
---@enum KeyCodes
KeyCodes = {
    MouseLeft = 1,
    MouseRight = 2,
    ControlBreak = 3,
    MouseMiddle = 4,
    MouseX1 = 5,
    MouseX2 = 6,
    Backspace = 8,
    Tab = 9,
    Clear = 12,
    Enter = 13,
    Shift = 16,
    Ctrl = 17,
    Alt = 18,
    Pause = 19,
    CapsLock = 20,
    IMEKana = 21,
    IMEHanguel = 21,
    IMEHangul = 21,
    IMEOn = 22,
    IMEJunja = 23,
    IMEFinal = 24,
    IMEHanja = 25,
    IMEKanji = 25,
    IMEOff = 26,
    Esc = 27,
    IMEConvert = 28,
    IMENonConvert = 29,
    IMEAccept = 30,
    IMEModeChangeRequest = 31,
    Space = 32,
    PageUp = 33,
    PageDown = 34,
    End = 35,
    Home = 36,
    LeftArrow = 37,
    UpArrow = 38,
    RightArrow = 39,
    DownArrow = 40,
    Select = 41,
    Print = 42,
    Execute = 43,
    PrintScreen = 44,
    Insert = 45,
    Delete = 46,
    Help = 47,
    Num0 = 48,
    Num1 = 49,
    Num2 = 50,
    Num3 = 51,
    Num4 = 52,
    Num5 = 53,
    Num6 = 54,
    Num7 = 55,
    Num8 = 56,
    Num9 = 57,
    KeyA = 65,
    KeyB = 66,
    KeyC = 67,
    KeyD = 68,
    KeyE = 69,
    KeyF = 70,
    KeyG = 71,
    KeyH = 72,
    KeyI = 73,
    KeyJ = 74,
    KeyK = 75,
    KeyL = 76,
    KeyM = 77,
    KeyN = 78,
    KeyO = 79,
    KeyP = 80,
    KeyQ = 81,
    KeyR = 82,
    KeyS = 83,
    KeyT = 84,
    KeyU = 85,
    KeyV = 86,
    KeyW = 87,
    KeyX = 88,
    KeyY = 89,
    KeyZ = 90,
    LeftWindows = 91,
    RightWindows = 92,
    Applications = 93,
    ComputerSleep = 95,
    NumPad0 = 96,
    NumPad1 = 97,
    NumPad2 = 98,
    NumPad3 = 99,
    NumPad4 = 100,
    NumPad5 = 101,
    NumPad6 = 102,
    NumPad7 = 103,
    NumPad8 = 104,
    NumPad9 = 105,
    NumPadMultiply = 106,
    NumPadAdd = 107,
    Separator = 108,
    NumPadSubtract = 109,
    NumPadDecimal = 110,
    NumPadDivide = 111,
    KeyF1 = 112,
    KeyF2 = 113,
    KeyF3 = 114,
    KeyF4 = 115,
    KeyF5 = 116,
    KeyF6 = 117,
    KeyF7 = 118,
    KeyF8 = 119,
    KeyF9 = 120,
    KeyF10 = 121,
    KeyF11 = 122,
    KeyF12 = 123,
    KeyF13 = 124,
    KeyF14 = 125,
    KeyF15 = 126,
    KeyF16 = 127,
    KeyF17 = 128,
    KeyF18 = 129,
    KeyF19 = 130,
    KeyF20 = 131,
    KeyF21 = 132,
    KeyF22 = 133,
    KeyF23 = 134,
    KeyF24 = 135,
    NumLock = 144,
    ScrollLock = 145,
    LeftShift = 160,
    RightShift = 161,
    LeftControl = 162,
    RightControl = 163,
    LeftAlt = 164,
    RightAlt = 165,
    BrowserBack = 166,
    BrowserForward = 167,
    BrowserRefresh = 168,
    BrowserStop = 169,
    BrowserSearch = 170,
    BrowserFavourites = 171,
    BrowserStartHome = 172,
    VolumeMute = 173,
    VolumeDown = 174,
    VolumeUp = 175,
    MediaNextTrack = 176,
    MediaPreviousTrack = 177,
    MediaStop = 178,
    MediaPlayPause = 179,
    MailStart = 180,
    MediaSelect = 181,
    Application1Start = 182,
    Application2Start = 183,
    KeyPlus = 187,
    KeyComma = 188,
    KeyMinus = 189,
    KeyDot = 190,
    IMEProcess = 229,
    VK_PACKET = 231,
    KeyAttn = 246,
    KeyCrSel = 247,
    KeyExSel = 248,
    KeyEraseEOF = 249,
    KeyPlay = 250,
    KeyZoom = 251,
    KeyPA1 = 253,
    KeyClear = 254
}