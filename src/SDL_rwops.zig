use @import("SDL_stdinc.zig");

pub const struct_SDL_RWops = extern struct {
    size: ?extern fn (?[*]struct_SDL_RWops) i64,
    seek: ?extern fn (?[*]struct_SDL_RWops, i64, c_int) i64,
    read: ?extern fn (?[*]struct_SDL_RWops, ?*c_void, usize, usize) usize,
    write: ?extern fn (?[*]struct_SDL_RWops, ?*const c_void, usize, usize) usize,
    close: ?extern fn (?[*]struct_SDL_RWops) c_int,
    type: u32,
    hidden: extern union {
        stdio: extern struct {
            autoclose: SDL_bool,
            fp: ?[*]FILE,
        },
        mem: extern struct {
            base: ?[*]u8,
            here: ?[*]u8,
            stop: ?[*]u8,
        },
        unknown: extern struct {
            data1: ?*c_void,
            data2: ?*c_void,
        },
    },
};
pub const SDL_RWops = struct_SDL_RWops;

pub const RW_SEEK_SET = 0;
pub const RW_SEEK_CUR = 1;
pub const RW_SEEK_END = 2;

pub extern fn SDL_AllocRW() ?*SDL_RWops;
pub extern fn SDL_FreeRW(area: *SDL_RWops) void;
pub extern fn SDL_LoadFile_RW(src: *SDL_RWops, datasize: ?*usize, freesrc: c_int) ?*c_void;
pub extern fn SDL_RWFromConstMem(mem: ?*const c_void, size: c_int) ?[*]SDL_RWops;
pub extern fn SDL_RWFromFP(fp: *FILE, autoclose: SDL_bool) ?[*]SDL_RWops;
pub extern fn SDL_RWFromFile(file: [*]const u8, mode: [*]const u8) ?[*]SDL_RWops;
pub extern fn SDL_RWFromMem(mem: *c_void, size: c_int) ?[*]SDL_RWops;
// NOTE: manual
pub inline fn SDL_RWclose(ctx: *SDL_RWops) c_int {
    return ctx.close(ctx);
}
pub inline fn SDL_RWread(ctx: *SDL_RWops, ptr: [*]c_void, size: usize, maxnum: usize) usize {
    return ctx.read(ctx, ptr, size, maxnum);
}
pub inline fn SDL_RWseek(ctx: *SDL_RWops, offset: i64, whence: c_int) i64 {
    return ctx.seek(ctx, offset, whence);
}
pub inline fn SDL_RWsize(ctx: *SDL_RWops) i64 {
    return ctx.size(ctx);
}
pub inline fn SDL_RWtell(ctx: *SDL_RWops) i64 {
    return ctx.tell(ctx, 0, RW_SEEK_CUR);
}
pub inline fn SDL_RWwrite(ctx: *SDL_RWops, ptr: [*]c_void, size: usize, num: usize) usize {
    return ctx.write(ctx, ptr, size, n);
}
pub extern fn SDL_ReadBE16(src: *SDL_RWops) u16;
pub extern fn SDL_ReadBE32(src: *SDL_RWops) u32;
pub extern fn SDL_ReadBE64(src: *SDL_RWops) u64;
pub extern fn SDL_ReadLE16(src: *SDL_RWops) u16;
pub extern fn SDL_ReadLE32(src: *SDL_RWops) u32;
pub extern fn SDL_ReadLE64(src: *SDL_RWops) u64;
pub extern fn SDL_ReadU8(src: *SDL_RWops) u8;
pub extern fn SDL_WriteBE16(dst: *SDL_RWops, value: u16) usize;
pub extern fn SDL_WriteBE32(dst: *SDL_RWops, value: u32) usize;
pub extern fn SDL_WriteBE64(dst: *SDL_RWops, value: u64) usize;
pub extern fn SDL_WriteLE16(dst: *SDL_RWops, value: u16) usize;
pub extern fn SDL_WriteLE32(dst: *SDL_RWops, value: u32) usize;
pub extern fn SDL_WriteLE64(dst: *SDL_RWops, value: u64) usize;
pub extern fn SDL_WriteU8(dst: *SDL_RWops, value: u8) usize;
