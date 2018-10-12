use @import("SDL_stdinc.zig");

pub const struct_SDL_Cursor = @OpaqueType();
pub const SDL_Cursor = struct_SDL_Cursor;
pub const SDL_SYSTEM_CURSOR_ARROW = 0;
pub const SDL_SYSTEM_CURSOR_IBEAM = 1;
pub const SDL_SYSTEM_CURSOR_WAIT = 2;
pub const SDL_SYSTEM_CURSOR_CROSSHAIR = 3;
pub const SDL_SYSTEM_CURSOR_WAITARROW = 4;
pub const SDL_SYSTEM_CURSOR_SIZENWSE = 5;
pub const SDL_SYSTEM_CURSOR_SIZENESW = 6;
pub const SDL_SYSTEM_CURSOR_SIZEWE = 7;
pub const SDL_SYSTEM_CURSOR_SIZENS = 8;
pub const SDL_SYSTEM_CURSOR_SIZEALL = 9;
pub const SDL_SYSTEM_CURSOR_NO = 10;
pub const SDL_SYSTEM_CURSOR_HAND = 11;
pub const SDL_NUM_SYSTEM_CURSORS = 12;
pub const SDL_SystemCursor = extern enum {
    SDL_SYSTEM_CURSOR_ARROW = 0,
    SDL_SYSTEM_CURSOR_IBEAM = 1,
    SDL_SYSTEM_CURSOR_WAIT = 2,
    SDL_SYSTEM_CURSOR_CROSSHAIR = 3,
    SDL_SYSTEM_CURSOR_WAITARROW = 4,
    SDL_SYSTEM_CURSOR_SIZENWSE = 5,
    SDL_SYSTEM_CURSOR_SIZENESW = 6,
    SDL_SYSTEM_CURSOR_SIZEWE = 7,
    SDL_SYSTEM_CURSOR_SIZENS = 8,
    SDL_SYSTEM_CURSOR_SIZEALL = 9,
    SDL_SYSTEM_CURSOR_NO = 10,
    SDL_SYSTEM_CURSOR_HAND = 11,
    SDL_NUM_SYSTEM_CURSORS = 12,
};

pub const SDL_MOUSEWHEEL_NORMAL = 0;
pub const SDL_MOUSEWHEEL_FLIPPED = 1;
pub const SDL_MouseWheelDirection = extern enum {
    SDL_MOUSEWHEEL_NORMAL = 0,
    SDL_MOUSEWHEEL_FLIPPED = 1,
};

pub extern fn SDL_CaptureMouse(enabled: SDL_bool) c_int;
pub extern fn SDL_CreateColorCursor(surface: *SDL_Surface, hot_x: c_int, hot_y: c_int) ?*SDL_Cursor;
pub extern fn SDL_CreateCursor(data: ?[*]const u8, mask: ?[*]const u8, w: c_int, h: c_int, hot_x: c_int, hot_y: c_int) ?*SDL_Cursor;
pub extern fn SDL_CreateSystemCursor(id: SDL_SystemCursor) ?*SDL_Cursor;
pub extern fn SDL_FreeCursor(cursor: *SDL_Cursor) void;
pub extern fn SDL_GetCursor() ?*SDL_Cursor;
pub extern fn SDL_GetDefaultCursor() ?*SDL_Cursor;
pub extern fn SDL_GetGlobalMouseState(x: ?*c_int, y: ?*c_int) u32;
pub extern fn SDL_GetMouseFocus() ?*SDL_Window;
pub extern fn SDL_GetMouseState(x: ?*c_int, y: ?*c_int) u32;
pub extern fn SDL_GetRelativeMouseMode() SDL_bool;
pub extern fn SDL_GetRelativeMouseState(x: ?*c_int, y: ?*c_int) u32;
pub extern fn SDL_SetCursor(cursor: *SDL_Cursor) void;
pub extern fn SDL_SetRelativeMouseMode(enabled: SDL_bool) c_int;
pub extern fn SDL_ShowCursor(toggle: c_int) c_int;
pub extern fn SDL_WarpMouseGlobal(x: c_int, y: c_int) c_int;
pub extern fn SDL_WarpMouseInWindow(window: *SDL_Window, x: c_int, y: c_int) void;
