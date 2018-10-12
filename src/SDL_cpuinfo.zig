use @import("SDL_stdinc.zig");

pub extern fn SDL_GetCPUCacheLineSize() c_int;
pub extern fn SDL_GetCPUCount() c_int;
pub extern fn SDL_GetSystemRAM() c_int;
pub extern fn SDL_Has3DNow() SDL_bool;
pub extern fn SDL_HasAVX() SDL_bool;
pub extern fn SDL_HasAVX2() SDL_bool;
pub extern fn SDL_HasAltiVec() SDL_bool;
pub extern fn SDL_HasMMX() SDL_bool;
pub extern fn SDL_HasNEON() SDL_bool;
pub extern fn SDL_HasRDTSC() SDL_bool;
pub extern fn SDL_HasSSE() SDL_bool;
pub extern fn SDL_HasSSE2() SDL_bool;
pub extern fn SDL_HasSSE3() SDL_bool;
pub extern fn SDL_HasSSE41() SDL_bool;
pub extern fn SDL_HasSSE42() SDL_bool;
