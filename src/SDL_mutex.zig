pub const struct_SDL_mutex = @OpaqueType();
pub const SDL_mutex = struct_SDL_mutex;

pub const struct_SDL_semaphore = @OpaqueType();
pub const SDL_sem = struct_SDL_semaphore;

pub const struct_SDL_cond = @OpaqueType();
pub const SDL_cond = struct_SDL_cond;

pub extern fn SDL_CondBroadcast(cond: ?*SDL_cond) c_int;
pub extern fn SDL_CondSignal(cond: ?*SDL_cond) c_int;
pub extern fn SDL_CondWait(cond: ?*SDL_cond, mutex: ?*SDL_mutex) c_int;
pub extern fn SDL_CondWaitTimeout(cond: ?*SDL_cond, mutex: ?*SDL_mutex, ms: u32) c_int;
pub extern fn SDL_CreateCond() ?*SDL_cond;
pub extern fn SDL_CreateMutex() ?*SDL_mutex;
pub extern fn SDL_CreateSemaphore(initial_value: u32) ?*SDL_sem;
pub extern fn SDL_DestroyCond(cond: ?*SDL_cond) void;
pub extern fn SDL_DestroyMutex(mutex: ?*SDL_mutex) void;
pub extern fn SDL_DestroySemaphore(sem: ?*SDL_sem) void;
pub extern fn SDL_LockMutex(mutex: ?*SDL_mutex) c_int;
pub extern fn SDL_SemPost(sem: ?*SDL_sem) c_int;
pub extern fn SDL_SemTryWait(sem: ?*SDL_sem) c_int;
pub extern fn SDL_SemValue(sem: ?*SDL_sem) u32;
pub extern fn SDL_SemWait(sem: ?*SDL_sem) c_int;
pub extern fn SDL_SemWaitTimeout(sem: ?*SDL_sem, ms: u32) c_int;
pub extern fn SDL_TryLockMutex(mutex: ?*SDL_mutex) c_int;
pub extern fn SDL_UnlockMutex(mutex: ?*SDL_mutex) c_int;
