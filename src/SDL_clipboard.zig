use @import("SDL_stdinc.zig");

pub extern fn SDL_GetClipboardText() ?[*]u8;
pub extern fn SDL_HasClipboardText() SDL_bool;
pub extern fn SDL_SetClipboardText(text: ?[*]const u8) c_int;
