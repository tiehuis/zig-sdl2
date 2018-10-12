use @import("SDL_stdinc.zig");

pub const struct_SDL_Surface = extern struct {
    flags: u32,
    format: *SDL_PixelFormat,
    w: c_int,
    h: c_int,
    pitch: c_int,
    pixels: ?*c_void,
    userdata: ?*c_void,
    locked: c_int,
    lock_data: ?*c_void,
    clip_rect: SDL_Rect,
    map: ?*struct_SDL_BlitMap,
    refcount: c_int,
};
pub const SDL_Surface = struct_SDL_Surface;

// required for SDL_MUSTLOCK
const SDL_SWSURACE = 0;
const SDL_PREALLOC = 0x1;
const SDL_RLEACCEL = 0x2;
const SDL_DONTFREE = 0x4;

pub const SDL_BlitScaled = SDL_UpperBlitScaled;
pub const SDL_BlitSurface = SDL_UpperBlit;
pub extern fn SDL_ConvertPixels(width: c_int, height: c_int, src_format: u32, src: ?*const c_void, src_pitch: c_int, dst_format: u32, dst: ?*c_void, dst_pitch: c_int) c_int;
pub extern fn SDL_ConvertSurface(src: *SDL_Surface, fmt: *const SDL_PixelFormat, flags: u32) ?*SDL_Surface;
pub extern fn SDL_ConvertSurfaceFormat(src: *SDL_Surface, pixel_format: u32, flags: u32) ?*SDL_Surface;
pub extern fn SDL_CreateRGBSurface(flags: u32, width: c_int, height: c_int, depth: c_int, Rmask: u32, Gmask: u32, Bmask: u32, Amask: u32) ?*SDL_Surface;
pub extern fn SDL_CreateRGBSurfaceFrom(pixels: *c_void, width: c_int, height: c_int, depth: c_int, pitch: c_int, Rmask: u32, Gmask: u32, Bmask: u32, Amask: u32) ?*SDL_Surface;
pub extern fn SDL_CreateRGBSurfaceWithFormat(flags: u32, width: c_int, height: c_int, depth: c_int, format: u32) ?*SDL_Surface;
pub extern fn SDL_CreateRGBSurfaceWithFormatFrom(pixels: *c_void, width: c_int, height: c_int, depth: c_int, pitch: c_int, format: u32) ?*SDL_Surface;
pub extern fn SDL_DuplicateSurface(surface: *SDL_Surface) ?*SDL_Surface;
pub extern fn SDL_FillRect(dst: *SDL_Surface, rect: *const SDL_Rect, color: u32) c_int;
pub extern fn SDL_FillRects(dst: *SDL_Surface, rects: [*]const SDL_Rect, count: c_int, color: u32) c_int;
pub extern fn SDL_FreeSurface(surface: *SDL_Surface) void;
pub extern fn SDL_GetClipRect(surface: *SDL_Surface, rect: *SDL_Rect) void;
pub extern fn SDL_GetColorKey(surface: *SDL_Surface, key: *u32) c_int;
pub extern fn SDL_GetSurfaceAlphaMod(surface: *SDL_Surface, alpha: *u8) c_int;
pub extern fn SDL_GetSurfaceBlendMode(surface: *SDL_Surface, blendMode: *SDL_BlendMode) c_int;
pub extern fn SDL_GetSurfaceColorMod(surface: *SDL_Surface, r: *u8, g: *u8, b: *u8) c_int;
// NOTE: manual
pub inline fn SDL_LoadBMP(file: [*]const u8) ?*SDL_Surface {
    return SDL_LoadBMP_RW(SDL_RWFromFile(file, "rb"), 1);
}
pub extern fn SDL_LoadBMP_RW(src: *SDL_RWops, freesrc: c_int) ?*SDL_Surface;
pub extern fn SDL_LockSurface(surface: *SDL_Surface) c_int;
pub extern fn SDL_LowerBlit(src: *SDL_Surface, srcrect: ?*SDL_Rect, dst: *SDL_Surface, dstrect: *SDL_Rect) c_int;
pub extern fn SDL_LowerBlitScaled(src: *SDL_Surface, srcrect: ?*SDL_Rect, dst: *SDL_Surface, dstrect: *SDL_Rect) c_int;
// NOTE: manual
pub inline fn SDL_MUSTLOCK(surface: *SDL_Surface) bool {
    return surface.flags & SDL_RLEACCEL != 0;
}
// NOTE: manual
pub inline fn SDL_SaveBMP(surface: *SDL_Surface, file: [*]const u8) c_int {
    return SDL_SaveBMP_RW(surface, SDL_RWFromFile(file, "wb"), 1);
}
pub extern fn SDL_SaveBMP_RW(surface: *SDL_Surface, dst: *SDL_RWops, freedst: c_int) c_int;
pub extern fn SDL_SetClipRect(surface: *SDL_Surface, rect: ?*const SDL_Rect) SDL_bool;
pub extern fn SDL_SetColorKey(surface: *SDL_Surface, flag: c_int, key: u32) c_int;
pub extern fn SDL_SetSurfaceAlphaMod(surface: *SDL_Surface, alpha: u8) c_int;
pub extern fn SDL_SetSurfaceBlendMode(surface: *SDL_Surface, blendMode: SDL_BlendMode) c_int;
pub extern fn SDL_SetSurfaceColorMod(surface: *SDL_Surface, r: u8, g: u8, b: u8) c_int;
pub extern fn SDL_SetSurfacePalette(surface: *SDL_Surface, palette: *SDL_Palette) c_int;
pub extern fn SDL_SetSurfaceRLE(surface: *SDL_Surface, flag: c_int) c_int;
pub extern fn SDL_UnlockSurface(surface: *SDL_Surface) void;
