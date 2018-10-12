use @import("SDL_stdinc.zig");

pub const SDL_SpinLock = c_int;

pub const SDL_atomic_t = extern struct {
    value: c_int,
};

pub extern fn SDL_AtomicAdd(a: *SDL_atomic_t, v: c_int) c_int;
pub extern fn SDL_AtomicCAS(a: *SDL_atomic_t, oldval: c_int, newval: c_int) SDL_bool;
pub extern fn SDL_AtomicCASPtr(a: ?*?*c_void, oldval: ?*c_void, newval: ?*c_void) SDL_bool;
pub extern fn SDL_AtomicGet(a: *SDL_atomic_t) c_int;
pub extern fn SDL_AtomicGetPtr(a: ?*?*c_void) ?*c_void;
pub extern fn SDL_AtomicLock(lock: *SDL_SpinLock) void;
pub extern fn SDL_AtomicSet(a: *SDL_atomic_t, v: c_int) c_int;
pub extern fn SDL_AtomicSetPtr(a: ?*?*c_void, v: ?*c_void) ?*c_void;
pub extern fn SDL_AtomicTryLock(lock: *SDL_SpinLock) SDL_bool;
pub extern fn SDL_AtomicUnlock(lock: *SDL_SpinLock) void;
pub extern fn SDL_MemoryBarrierAcquireFunction() void;
pub extern fn SDL_MemoryBarrierReleaseFunction() void;
pub export fn SDL_CompilerBarrier() void {
    @fence(@import("builtin").AtomicOrder.SeqCst);
}
