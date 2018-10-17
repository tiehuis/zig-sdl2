use @import("SDL_stdinc.zig");
use @import("SDL_video.zig");

pub const SDL_BLENDOPERATION_ADD = 1;
pub const SDL_BLENDOPERATION_SUBTRACT = 2;
pub const SDL_BLENDOPERATION_REV_SUBTRACT = 3;
pub const SDL_BLENDOPERATION_MINIMUM = 4;
pub const SDL_BLENDOPERATION_MAXIMUM = 5;
pub const SDL_BlendOperation = extern enum {
    SDL_BLENDOPERATION_ADD = 1,
    SDL_BLENDOPERATION_SUBTRACT = 2,
    SDL_BLENDOPERATION_REV_SUBTRACT = 3,
    SDL_BLENDOPERATION_MINIMUM = 4,
    SDL_BLENDOPERATION_MAXIMUM = 5,
};

pub const SDL_BLENDFACTOR_ZERO = 1;
pub const SDL_BLENDFACTOR_ONE = 2;
pub const SDL_BLENDFACTOR_SRC_COLOR = 3;
pub const SDL_BLENDFACTOR_ONE_MINUS_SRC_COLOR = 4;
pub const SDL_BLENDFACTOR_SRC_ALPHA = 5;
pub const SDL_BLENDFACTOR_ONE_MINUS_SRC_ALPHA = 6;
pub const SDL_BLENDFACTOR_DST_COLOR = 7;
pub const SDL_BLENDFACTOR_ONE_MINUS_DST_COLOR = 8;
pub const SDL_BLENDFACTOR_DST_ALPHA = 9;
pub const SDL_BLENDFACTOR_ONE_MINUS_DST_ALPHA = 10;
pub const SDL_BlendFactor = extern enum {
    SDL_BLENDFACTOR_ZERO = 1,
    SDL_BLENDFACTOR_ONE = 2,
    SDL_BLENDFACTOR_SRC_COLOR = 3,
    SDL_BLENDFACTOR_ONE_MINUS_SRC_COLOR = 4,
    SDL_BLENDFACTOR_SRC_ALPHA = 5,
    SDL_BLENDFACTOR_ONE_MINUS_SRC_ALPHA = 6,
    SDL_BLENDFACTOR_DST_COLOR = 7,
    SDL_BLENDFACTOR_ONE_MINUS_DST_COLOR = 8,
    SDL_BLENDFACTOR_DST_ALPHA = 9,
    SDL_BLENDFACTOR_ONE_MINUS_DST_ALPHA = 10,
};

pub const SDL_RENDERER_SOFTWARE = 1;
pub const SDL_RENDERER_ACCELERATED = 2;
pub const SDL_RENDERER_PRESENTVSYNC = 4;
pub const SDL_RENDERER_TARGETTEXTURE = 8;
pub const SDL_RendererFlags = extern enum {
    SDL_RENDERER_SOFTWARE = 1,
    SDL_RENDERER_ACCELERATED = 2,
    SDL_RENDERER_PRESENTVSYNC = 4,
    SDL_RENDERER_TARGETTEXTURE = 8,
};

pub const SDL_FLIP_NONE = 0;
pub const SDL_FLIP_HORIZONTAL = 1;
pub const SDL_FLIP_VERTICAL = 2;
pub const SDL_RendererFlip = extern enum {
    SDL_FLIP_NONE = 0,
    SDL_FLIP_HORIZONTAL = 1,
    SDL_FLIP_VERTICAL = 2,
};

pub const SDL_TEXTUREACCESS_STATIC = 0;
pub const SDL_TEXTUREACCESS_STREAMING = 1;
pub const SDL_TEXTUREACCESS_TARGET = 2;
pub const SDL_TextureAccess = extern enum {
    SDL_TEXTUREACCESS_STATIC = 0,
    SDL_TEXTUREACCESS_STREAMING = 1,
    SDL_TEXTUREACCESS_TARGET = 2,
};

pub const SDL_TEXTUREMODULATE_NONE = 0;
pub const SDL_TEXTUREMODULATE_COLOR = 1;
pub const SDL_TEXTUREMODULATE_ALPHA = 2;
pub const SDL_TextureModulate = extern enum {
    SDL_TEXTUREMODULATE_NONE = 0,
    SDL_TEXTUREMODULATE_COLOR = 1,
    SDL_TEXTUREMODULATE_ALPHA = 2,
};

pub const struct_SDL_RendererInfo = extern struct {
    name: ?[*]const u8,
    flags: u32,
    num_texture_formats: u32,
    texture_formats: [16]u32,
    max_texture_width: c_int,
    max_texture_height: c_int,
};
pub const SDL_RendererInfo = struct_SDL_RendererInfo;

pub const struct_SDL_Renderer = @OpaqueType();
pub const SDL_Renderer = struct_SDL_Renderer;

pub const struct_SDL_Texture = @OpaqueType();
pub const SDL_Texture = struct_SDL_Texture;

const SDL_Rect = @import("SDL_rect.zig").SDL_Rect;

pub extern fn SDL_ComposeCustomBlendMode(srcColorFactor: SDL_BlendFactor, dstColorFactor: SDL_BlendFactor, colorOperation: SDL_BlendOperation, srcAlphaFactor: SDL_BlendFactor, dstAlphaFactor: SDL_BlendFactor, alphaOperation: SDL_BlendOperation) SDL_BlendMode;
pub extern fn SDL_CreateRenderer(window: *SDL_Window, index_0: c_int, flags: u32) ?*SDL_Renderer;
pub extern fn SDL_CreateSoftwareRenderer(surface: *SDL_Surface) ?*SDL_Renderer;
pub extern fn SDL_CreateTexture(renderer: *SDL_Renderer, format: u32, access: c_int, w: c_int, h: c_int) ?*SDL_Texture;
pub extern fn SDL_CreateTextureFromSurface(renderer: ?*SDL_Renderer, surface: ?*SDL_Surface) ?*SDL_Texture;
pub extern fn SDL_DestroyRenderer(renderer: *SDL_Renderer) void;
pub extern fn SDL_DestroyTexture(texture: *SDL_Texture) void;
pub extern fn SDL_GetRenderDrawBlendMode(renderer: *SDL_Renderer, blendMode: *SDL_BlendMode) c_int;
pub extern fn SDL_GetRenderDrawColor(renderer: *SDL_Renderer, r: ?*u8, g: ?*u8, b: ?*u8, a: ?*u8) c_int;
pub extern fn SDL_GetRenderer(window: *SDL_Window) ?*SDL_Renderer;
pub extern fn SDL_GetRendererInfo(renderer: *SDL_Renderer, info: *SDL_RendererInfo) c_int;
pub extern fn SDL_GetRendererOutputSize(renderer: *SDL_Renderer, w: *c_int, h: *c_int) c_int;
pub extern fn SDL_GetRenderTarget(renderer: *SDL_Renderer) ?*SDL_Texture;
pub extern fn SDL_GetTextureAlphaMod(texture: *SDL_Texture, alpha: *u8) c_int;
pub extern fn SDL_GetTextureBlendMode(texture: *SDL_Texture, blendMode: *SDL_BlendMode) c_int;
pub extern fn SDL_GetTextureColorMod(texture: *SDL_Texture, r: *u8, g: *u8, b: *u8) c_int;
pub extern fn SDL_GL_BindTexture(texture: *SDL_Texture, texw: *f32, texh: *f32) c_int;
pub extern fn SDL_GL_UnbindTexture(texture: *SDL_Texture) c_int;
pub extern fn SDL_LockTexture(texture: *SDL_Texture, rect: *const SDL_Rect, pixels: ?*?*c_void, pitch: *c_int) c_int;
pub extern fn SDL_QueryTexture(texture: *SDL_Texture, format: *u32, access: *c_int, w: *c_int, h: *c_int) c_int;
pub extern fn SDL_RenderClear(renderer: *SDL_Renderer) c_int;
pub extern fn SDL_RenderCopyEx(renderer: *SDL_Renderer, texture: *SDL_Texture, srcrect: ?*const SDL_Rect, dstrect: ?*const SDL_Rect, angle: f64, center: ?*const SDL_Point, flip: SDL_RendererFlip) c_int;
pub extern fn SDL_RenderCopy(renderer: *SDL_Renderer, texture: *SDL_Texture, srcrect: ?*const SDL_Rect, dstrect: ?*const SDL_Rect) c_int;
pub extern fn SDL_RenderDrawLine(renderer: *SDL_Renderer, x1: c_int, y1_0: c_int, x2: c_int, y2: c_int) c_int;
pub extern fn SDL_RenderDrawLines(renderer: *SDL_Renderer, points: [*]const SDL_Point, count: c_int) c_int;
pub extern fn SDL_RenderDrawPoint(renderer: *SDL_Renderer, x: c_int, y: c_int) c_int;
pub extern fn SDL_RenderDrawPoints(renderer: *SDL_Renderer, points: [*]const SDL_Point, count: c_int) c_int;
pub extern fn SDL_RenderDrawRect(renderer: *SDL_Renderer, rect: *const SDL_Rect) c_int;
pub extern fn SDL_RenderDrawRects(renderer: *SDL_Renderer, rects: [*]const SDL_Rect, count: c_int) c_int;
pub extern fn SDL_RenderFillRect(renderer: *SDL_Renderer, rect: *const SDL_Rect) c_int;
pub extern fn SDL_RenderFillRects(renderer: *SDL_Renderer, rects: [*]const SDL_Rect, count: c_int) c_int;
pub extern fn SDL_RenderGetClipRect(renderer: *SDL_Renderer, rect: *SDL_Rect) void;
pub extern fn SDL_RenderGetIntegerScale(renderer: *SDL_Renderer) SDL_bool;
pub extern fn SDL_RenderGetLogicalSize(renderer: *SDL_Renderer, w: *c_int, h: *c_int) void;
pub extern fn SDL_RenderGetMetalCommandEncoder(renderer: *SDL_Renderer) ?*c_void;
pub extern fn SDL_RenderGetMetalLayer(renderer: *SDL_Renderer) ?*c_void;
pub extern fn SDL_RenderGetScale(renderer: *SDL_Renderer, scaleX: *f32, scaleY: *f32) void;
pub extern fn SDL_RenderGetViewport(renderer: *SDL_Renderer, rect: *SDL_Rect) void;
pub extern fn SDL_RenderIsClipEnabled(renderer: *SDL_Renderer) SDL_bool;
pub extern fn SDL_RenderPresent(renderer: *SDL_Renderer) void;
pub extern fn SDL_RenderReadPixels(renderer: *SDL_Renderer, rect: ?*const SDL_Rect, format: u32, pixels: *c_void, pitch: c_int) c_int;
pub extern fn SDL_RenderSetClipRect(renderer: *SDL_Renderer, rect: ?*const SDL_Rect) c_int;
pub extern fn SDL_RenderSetIntegerScale(renderer: *SDL_Renderer, enable: SDL_bool) c_int;
pub extern fn SDL_RenderSetLogicalSize(renderer: *SDL_Renderer, w: c_int, h: c_int) c_int;
pub extern fn SDL_RenderSetScale(renderer: *SDL_Renderer, scaleX: f32, scaleY: f32) c_int;
pub extern fn SDL_RenderSetViewport(renderer: *SDL_Renderer, rect: ?*const SDL_Rect) c_int;
pub extern fn SDL_RenderTargetSupported(renderer: *SDL_Renderer) SDL_bool;
pub extern fn SDL_SetRenderDrawBlendMode(renderer: *SDL_Renderer, blendMode: SDL_BlendMode) c_int;
pub extern fn SDL_SetRenderDrawColor(renderer: *SDL_Renderer, r: u8, g: u8, b: u8, a: u8) c_int;
pub extern fn SDL_SetRenderTarget(renderer: *SDL_Renderer, texture: ?*SDL_Texture) c_int;
pub extern fn SDL_SetTextureAlphaMod(texture: *SDL_Texture, alpha: u8) c_int;
pub extern fn SDL_SetTextureBlendMode(texture: *SDL_Texture, blendMode: SDL_BlendMode) c_int;
pub extern fn SDL_SetTextureColorMod(texture: *SDL_Texture, r: u8, g: u8, b: u8) c_int;
pub extern fn SDL_UnlockTexture(texture: *SDL_Texture) void;
pub extern fn SDL_UpdateTexture(texture: *SDL_Texture, rect: ?*const SDL_Rect, pixels: *const c_void, pitch: c_int) c_int;
pub extern fn SDL_UpdateYUVTexture(texture: *SDL_Texture, rect: ?*const SDL_Rect, Yplane: [*]const u8, Ypitch: c_int, Uplane: [*]const u8, Upitch: c_int, Vplane: [*]const u8, Vpitch: c_int) c_int;
