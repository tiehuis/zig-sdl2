use @import("SDL_stdinc.zig");

pub const SDL_PIXELFORMAT_UNKNOWN = 0;
pub const SDL_PIXELFORMAT_INDEX1LSB = 286261504;
pub const SDL_PIXELFORMAT_INDEX1MSB = 287310080;
pub const SDL_PIXELFORMAT_INDEX4LSB = 303039488;
pub const SDL_PIXELFORMAT_INDEX4MSB = 304088064;
pub const SDL_PIXELFORMAT_INDEX8 = 318769153;
pub const SDL_PIXELFORMAT_RGB332 = 336660481;
pub const SDL_PIXELFORMAT_RGB444 = 353504258;
pub const SDL_PIXELFORMAT_RGB555 = 353570562;
pub const SDL_PIXELFORMAT_BGR555 = 357764866;
pub const SDL_PIXELFORMAT_ARGB4444 = 355602434;
pub const SDL_PIXELFORMAT_RGBA4444 = 356651010;
pub const SDL_PIXELFORMAT_ABGR4444 = 359796738;
pub const SDL_PIXELFORMAT_BGRA4444 = 360845314;
pub const SDL_PIXELFORMAT_ARGB1555 = 355667970;
pub const SDL_PIXELFORMAT_RGBA5551 = 356782082;
pub const SDL_PIXELFORMAT_ABGR1555 = 359862274;
pub const SDL_PIXELFORMAT_BGRA5551 = 360976386;
pub const SDL_PIXELFORMAT_RGB565 = 353701890;
pub const SDL_PIXELFORMAT_BGR565 = 357896194;
pub const SDL_PIXELFORMAT_RGB24 = 386930691;
pub const SDL_PIXELFORMAT_BGR24 = 390076419;
pub const SDL_PIXELFORMAT_RGB888 = 370546692;
pub const SDL_PIXELFORMAT_RGBX8888 = 371595268;
pub const SDL_PIXELFORMAT_BGR888 = 374740996;
pub const SDL_PIXELFORMAT_BGRX8888 = 375789572;
pub const SDL_PIXELFORMAT_ARGB8888 = 372645892;
pub const SDL_PIXELFORMAT_RGBA8888 = 373694468;
pub const SDL_PIXELFORMAT_ABGR8888 = 376840196;
pub const SDL_PIXELFORMAT_BGRA8888 = 377888772;
pub const SDL_PIXELFORMAT_ARGB2101010 = 372711428;
pub const SDL_PIXELFORMAT_RGBA32 = 376840196;
pub const SDL_PIXELFORMAT_ARGB32 = 377888772;
pub const SDL_PIXELFORMAT_BGRA32 = 372645892;
pub const SDL_PIXELFORMAT_ABGR32 = 373694468;
pub const SDL_PIXELFORMAT_YV12 = 842094169;
pub const SDL_PIXELFORMAT_IYUV = 1448433993;
pub const SDL_PIXELFORMAT_YUY2 = 844715353;
pub const SDL_PIXELFORMAT_UYVY = 1498831189;
pub const SDL_PIXELFORMAT_YVYU = 1431918169;
pub const SDL_PIXELFORMAT_NV12 = 842094158;
pub const SDL_PIXELFORMAT_NV21 = 825382478;
pub const SDL_PIXELFORMAT_EXTERNAL_OES = 542328143;

pub const struct_SDL_Color = extern struct {
    r: u8,
    g: u8,
    b: u8,
    a: u8,
};
pub const SDL_Color = struct_SDL_Color;

pub const struct_SDL_Palette = extern struct {
    ncolors: c_int,
    colors: [*]SDL_Color,
    version: u32,
    refcount: c_int,
};
pub const SDL_Palette = struct_SDL_Palette;

pub const struct_SDL_PixelFormat = extern struct {
    format: u32,
    palette: ?*SDL_Palette,
    BitsPerPixel: u8,
    BytesPerPixel: u8,
    padding: [2]u8,
    Rmask: u32,
    Gmask: u32,
    Bmask: u32,
    Amask: u32,
    Rloss: u8,
    Gloss: u8,
    Bloss: u8,
    Aloss: u8,
    Rshift: u8,
    Gshift: u8,
    Bshift: u8,
    Ashift: u8,
    refcount: c_int,
    next: ?*struct_SDL_PixelFormat,
};
pub const SDL_PixelFormat = struct_SDL_PixelFormat;

pub extern fn SDL_AllocFormat(pixel_format: u32) ?[*]SDL_PixelFormat;
pub extern fn SDL_AllocPalette(ncolors: c_int) ?[*]SDL_Palette;
pub extern fn SDL_CalculateGammaRamp(gamma_0: f32, ramp: ?[*]u16) void;
pub extern fn SDL_FreeFormat(format: *SDL_PixelFormat) void;
pub extern fn SDL_FreePalette(palette: *SDL_Palette) void;
pub extern fn SDL_GetPixelFormatName(format: u32) ?[*]const u8;
pub extern fn SDL_GetRGB(pixel: u32, format: *const SDL_PixelFormat, r: ?*u8, g: ?*u8, b: ?*u8) void;
pub extern fn SDL_GetRGBA(pixel: u32, format: *const SDL_PixelFormat, r: ?*u8, g: ?*u8, b: ?*u8, a: ?*u8) void;
pub extern fn SDL_MapRGB(format: *const SDL_PixelFormat, r: u8, g: u8, b: u8) u32;
pub extern fn SDL_MapRGBA(format: *const SDL_PixelFormat, r: u8, g: u8, b: u8, a: u8) u32;
pub extern fn SDL_MasksToPixelFormatEnum(bpp: c_int, Rmask: u32, Gmask: u32, Bmask: u32, Amask: u32) u32;
pub extern fn SDL_PixelFormatEnumToMasks(format: u32, bpp: ?*c_int, Rmask: ?*u32, Gmask: ?*u32, Bmask: ?*u32, Amask: ?*u32) SDL_bool;
pub extern fn SDL_SetPaletteColors(palette: *SDL_Palette, colors: [*]const SDL_Color, firstcolor: c_int, ncolors: c_int) c_int;
pub extern fn SDL_SetPixelFormatPalette(format: *SDL_PixelFormat, palette: *SDL_Palette) c_int;
