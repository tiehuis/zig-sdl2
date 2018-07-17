pub const SDL_LOG_CATEGORY_APPLICATION = 0;
pub const SDL_LOG_CATEGORY_ERROR = 1;
pub const SDL_LOG_CATEGORY_ASSERT = 2;
pub const SDL_LOG_CATEGORY_SYSTEM = 3;
pub const SDL_LOG_CATEGORY_AUDIO = 4;
pub const SDL_LOG_CATEGORY_VIDEO = 5;
pub const SDL_LOG_CATEGORY_RENDER = 6;
pub const SDL_LOG_CATEGORY_INPUT = 7;
pub const SDL_LOG_CATEGORY_TEST = 8;
pub const SDL_LOG_CATEGORY_RESERVED1 = 9;
pub const SDL_LOG_CATEGORY_RESERVED2 = 10;
pub const SDL_LOG_CATEGORY_RESERVED3 = 11;
pub const SDL_LOG_CATEGORY_RESERVED4 = 12;
pub const SDL_LOG_CATEGORY_RESERVED5 = 13;
pub const SDL_LOG_CATEGORY_RESERVED6 = 14;
pub const SDL_LOG_CATEGORY_RESERVED7 = 15;
pub const SDL_LOG_CATEGORY_RESERVED8 = 16;
pub const SDL_LOG_CATEGORY_RESERVED9 = 17;
pub const SDL_LOG_CATEGORY_RESERVED10 = 18;
pub const SDL_LOG_CATEGORY_CUSTOM = 19;

pub const SDL_LOG_PRIORITY_VERBOSE = 1;
pub const SDL_LOG_PRIORITY_DEBUG = 2;
pub const SDL_LOG_PRIORITY_INFO = 3;
pub const SDL_LOG_PRIORITY_WARN = 4;
pub const SDL_LOG_PRIORITY_ERROR = 5;
pub const SDL_LOG_PRIORITY_CRITICAL = 6;
pub const SDL_NUM_LOG_PRIORITIES = 7;
pub const SDL_LogPriority = extern enum {
    SDL_LOG_PRIORITY_VERBOSE = 1,
    SDL_LOG_PRIORITY_DEBUG = 2,
    SDL_LOG_PRIORITY_INFO = 3,
    SDL_LOG_PRIORITY_WARN = 4,
    SDL_LOG_PRIORITY_ERROR = 5,
    SDL_LOG_PRIORITY_CRITICAL = 6,
    SDL_NUM_LOG_PRIORITIES = 7,
};

pub const SDL_LogOutputFunction = ?extern fn (?*c_void, c_int, SDL_LogPriority, [*]const u8) void;

// NOTE: varargs function
pub extern fn SDL_Log(fmt: [*]const u8) void;
pub extern fn SDL_LogCritical(category: c_int, fmt: [*]const u8) void;
pub extern fn SDL_LogDebug(category: c_int, fmt: [*]const u8) void;
pub extern fn SDL_LogError(category: c_int, fmt: [*]const u8) void;
pub extern fn SDL_LogGetOutputFunction(callback: *SDL_LogOutputFunction, userdata: ?*?*c_void) void;
pub extern fn SDL_LogGetPriority(category: c_int) SDL_LogPriority;
pub extern fn SDL_LogInfo(category: c_int, fmt: [*]const u8) void;
pub extern fn SDL_LogMessage(category: c_int, priority: SDL_LogPriority, fmt: [*]const u8) void;
pub extern fn SDL_LogMessageV(category: c_int, priority: SDL_LogPriority, fmt: [*]const u8, ap: *struct___va_list_tag) void;
pub extern fn SDL_LogResetPriorities() void;
pub extern fn SDL_LogSetAllPriority(priority: SDL_LogPriority) void;
pub extern fn SDL_LogSetOutputFunction(callback: SDL_LogOutputFunction, userdata: ?*c_void) void;
pub extern fn SDL_LogSetPriority(category: c_int, priority: SDL_LogPriority) void;
pub extern fn SDL_LogVerbose(category: c_int, fmt: [*]const u8) void;
pub extern fn SDL_LogWarn(category: c_int, fmt: [*]const u8) void;

