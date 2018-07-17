pub const SDL_ASSERTION_RETRY = 0;
pub const SDL_ASSERTION_BREAK = 1;
pub const SDL_ASSERTION_ABORT = 2;
pub const SDL_ASSERTION_IGNORE = 3;
pub const SDL_ASSERTION_ALWAYS_IGNORE = 4;

pub const SDL_AssertState = extern enum {
    SDL_ASSERTION_RETRY = 0,
    SDL_ASSERTION_BREAK = 1,
    SDL_ASSERTION_ABORT = 2,
    SDL_ASSERTION_IGNORE = 3,
    SDL_ASSERTION_ALWAYS_IGNORE = 4,
};

pub const SDL_assert_data = SDL_AssertData;
pub const struct_SDL_AssertData = extern struct {
    always_ignore: c_int,
    trigger_count: c_uint,
    condition: ?[*]const u8,
    filename: ?[*]const u8,
    linenum: c_int,
    function: ?[*]const u8,
    next: ?*const struct_SDL_AssertData,
};
pub const SDL_AssertData = struct_SDL_AssertData;

pub const SDL_AssertionHandler = ?extern fn (*const SDL_AssertData, ?*c_void) SDL_AssertState;

pub extern fn SDL_GetAssertionHandler(puserdata: ?*?*c_void) SDL_AssertionHandler;
pub extern fn SDL_GetAssertionReport() ?*const SDL_AssertData;
pub extern fn SDL_GetDefaultAssertionHandler() SDL_AssertionHandler;
pub extern fn SDL_ResetAssertionReport() void;
pub extern fn SDL_SetAssertionHandler(handler: SDL_AssertionHandler, userdata: ?*c_void) void;
// NOTE: platform-specific macro by default
pub inline fn SDL_TriggerBreakpoint() void {
    @breakpoint();
}

// NOTE: following are macro-enabled assertion statements which we ignore
// omit: SDL_assert
// omit: SDL_assert_paranoid
// omit: SDL_assert_release
