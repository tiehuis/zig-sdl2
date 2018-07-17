pub const SDL_TimerCallback = ?extern fn (u32, ?*c_void) u32;
pub const SDL_TimerID = c_int;

pub extern fn SDL_GetTicks() u32;
pub extern fn SDL_GetPerformanceCounter() u64;
pub extern fn SDL_GetPerformanceFrequency() u64;
pub extern fn SDL_Delay(ms: u32) void;
pub extern fn SDL_AddTimer(interval: u32, callback: SDL_TimerCallback, param: ?*c_void) SDL_TimerID;
pub extern fn SDL_RemoveTimer(id: SDL_TimerID) SDL_bool;
