pub extern fn SDL_ClearError() void;
pub extern fn SDL_GetError() ?[*]const u8;
pub extern fn SDL_SetError(fmt: ?[*]const u8) c_int;
