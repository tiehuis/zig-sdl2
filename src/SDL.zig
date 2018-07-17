pub const SDL_INIT_TIMER = 0x00000001;
pub const SDL_INIT_AUDIO = 0x00000010;
pub const SDL_INIT_VIDEO = 0x00000020; // SDL_INIT_VIDEO implies SDL_INIT_EVENTS
pub const SDL_INIT_JOYSTICK = 0x00000200; // SDL_INIT_JOYSTICK implies SDL_INIT_EVENTS
pub const SDL_INIT_HAPTIC = 0x00001000;
pub const SDL_INIT_GAMECONTROLLER = 0x00002000; // SDL_INIT_GAMECONTROLLER implies SDL_INIT_JOYSTICK
pub const SDL_INIT_EVENTS = 0x00004000;
pub const SDL_INIT_NOPARACHUTE = 0x00100000; // compatibility; this flag is ignored.
pub const SDL_INIT_EVERYTHING = (SDL_INIT_TIMER | SDL_INIT_AUDIO | SDL_INIT_VIDEO | SDL_INIT_EVENTS |
    SDL_INIT_JOYSTICK | SDL_INIT_HAPTIC | SDL_INIT_GAMECONTROLLER);

pub extern fn SDL_Init(flags: u32) c_int;
pub extern fn SDL_InitSubSystem(flags: u32) c_int;
pub extern fn SDL_Quit() void;
pub extern fn SDL_QuitSubSystem(flags: u32) void;
pub extern fn SDL_SetMainReady() void;
pub extern fn SDL_WasInit(flags: u32) u32;
// omit: SDL_WinRTRunApp
