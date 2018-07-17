pub extern fn SDL_LoadFunction(handle: ?*c_void, name: ?[*]const u8) ?*c_void;
pub extern fn SDL_LoadObject(sofile: ?[*]const u8) ?*c_void;
pub extern fn SDL_UnloadObject(handle: ?*c_void) void;
