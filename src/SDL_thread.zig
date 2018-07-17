pub const SDL_THREAD_PRIORITY_LOW = 0;
pub const SDL_THREAD_PRIORITY_NORMAL = 1;
pub const SDL_THREAD_PRIORITY_HIGH = 2;
pub const SDL_ThreadPriority = extern enum {
    SDL_THREAD_PRIORITY_LOW = 0,
    SDL_THREAD_PRIORITY_NORMAL = 1,
    SDL_THREAD_PRIORITY_HIGH = 2,
};

pub const struct_SDL_Thread = @OpaqueType();
pub const SDL_Thread = struct_SDL_Thread;
pub const SDL_threadID = c_ulong;
pub const SDL_TLSID = c_uint;
pub const SDL_ThreadFunction = extern fn (?*c_void) c_int;

pub extern fn SDL_CreateThread(@"fn": SDL_ThreadFunction, name: [*]const u8, data: ?*c_void) ?*SDL_Thread;
pub extern fn SDL_DetachThread(thread: *SDL_Thread) void;
pub extern fn SDL_GetThreadID(thread: *SDL_Thread) SDL_threadID;
pub extern fn SDL_GetThreadName(thread: *SDL_Thread) ?[*]const u8;
pub extern fn SDL_SetThreadPriority(priority: SDL_ThreadPriority) c_int;
pub extern fn SDL_TLSCreate() SDL_TLSID;
pub extern fn SDL_TLSGet(id: SDL_TLSID) ?*c_void;
pub extern fn SDL_TLSSet(id: SDL_TLSID, value: ?*const c_void, destructor: extern fn (?*c_void) void) c_int;
pub extern fn SDL_ThreadID() SDL_threadID;
pub extern fn SDL_WaitThread(thread: *SDL_Thread, status: *c_int) void;
