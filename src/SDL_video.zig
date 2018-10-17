use @import("SDL_stdinc.zig");

pub const SDL_BLENDMODE_NONE = 0;
pub const SDL_BLENDMODE_BLEND = 1;
pub const SDL_BLENDMODE_ADD = 2;
pub const SDL_BLENDMODE_MOD = 4;
pub const SDL_BLENDMODE_INVALID = 2147483647;
pub const SDL_BlendMode = extern enum {
    SDL_BLENDMODE_NONE = 0,
    SDL_BLENDMODE_BLEND = 1,
    SDL_BLENDMODE_ADD = 2,
    SDL_BLENDMODE_MOD = 4,
    SDL_BLENDMODE_INVALID = 2147483647,
};

pub const SDL_GL_RED_SIZE = 0;
pub const SDL_GL_GREEN_SIZE = 1;
pub const SDL_GL_BLUE_SIZE = 2;
pub const SDL_GL_ALPHA_SIZE = 3;
pub const SDL_GL_BUFFER_SIZE = 4;
pub const SDL_GL_DOUBLEBUFFER = 5;
pub const SDL_GL_DEPTH_SIZE = 6;
pub const SDL_GL_STENCIL_SIZE = 7;
pub const SDL_GL_ACCUM_RED_SIZE = 8;
pub const SDL_GL_ACCUM_GREEN_SIZE = 9;
pub const SDL_GL_ACCUM_BLUE_SIZE = 10;
pub const SDL_GL_ACCUM_ALPHA_SIZE = 11;
pub const SDL_GL_STEREO = 12;
pub const SDL_GL_MULTISAMPLEBUFFERS = 13;
pub const SDL_GL_MULTISAMPLESAMPLES = 14;
pub const SDL_GL_ACCELERATED_VISUAL = 15;
pub const SDL_GL_RETAINED_BACKING = 16;
pub const SDL_GL_CONTEXT_MAJOR_VERSION = 17;
pub const SDL_GL_CONTEXT_MINOR_VERSION = 18;
pub const SDL_GL_CONTEXT_EGL = 19;
pub const SDL_GL_CONTEXT_FLAGS = 20;
pub const SDL_GL_CONTEXT_PROFILE_MASK = 21;
pub const SDL_GL_SHARE_WITH_CURRENT_CONTEXT = 22;
pub const SDL_GL_FRAMEBUFFER_SRGB_CAPABLE = 23;
pub const SDL_GL_CONTEXT_RELEASE_BEHAVIOR = 24;
pub const SDL_GL_CONTEXT_RESET_NOTIFICATION = 25;
pub const SDL_GL_CONTEXT_NO_ERROR = 26;
pub const SDL_GLattr = extern enum {
    SDL_GL_RED_SIZE = 0,
    SDL_GL_GREEN_SIZE = 1,
    SDL_GL_BLUE_SIZE = 2,
    SDL_GL_ALPHA_SIZE = 3,
    SDL_GL_BUFFER_SIZE = 4,
    SDL_GL_DOUBLEBUFFER = 5,
    SDL_GL_DEPTH_SIZE = 6,
    SDL_GL_STENCIL_SIZE = 7,
    SDL_GL_ACCUM_RED_SIZE = 8,
    SDL_GL_ACCUM_GREEN_SIZE = 9,
    SDL_GL_ACCUM_BLUE_SIZE = 10,
    SDL_GL_ACCUM_ALPHA_SIZE = 11,
    SDL_GL_STEREO = 12,
    SDL_GL_MULTISAMPLEBUFFERS = 13,
    SDL_GL_MULTISAMPLESAMPLES = 14,
    SDL_GL_ACCELERATED_VISUAL = 15,
    SDL_GL_RETAINED_BACKING = 16,
    SDL_GL_CONTEXT_MAJOR_VERSION = 17,
    SDL_GL_CONTEXT_MINOR_VERSION = 18,
    SDL_GL_CONTEXT_EGL = 19,
    SDL_GL_CONTEXT_FLAGS = 20,
    SDL_GL_CONTEXT_PROFILE_MASK = 21,
    SDL_GL_SHARE_WITH_CURRENT_CONTEXT = 22,
    SDL_GL_FRAMEBUFFER_SRGB_CAPABLE = 23,
    SDL_GL_CONTEXT_RELEASE_BEHAVIOR = 24,
    SDL_GL_CONTEXT_RESET_NOTIFICATION = 25,
    SDL_GL_CONTEXT_NO_ERROR = 26,
};

pub const SDL_GL_CONTEXT_DEBUG_FLAG = 1;
pub const SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG = 2;
pub const SDL_GL_CONTEXT_ROBUST_ACCESS_FLAG = 4;
pub const SDL_GL_CONTEXT_RESET_ISOLATION_FLAG = 8;
pub const SDL_GLcontextFlag = extern enum {
    SDL_GL_CONTEXT_DEBUG_FLAG = 1,
    SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG = 2,
    SDL_GL_CONTEXT_ROBUST_ACCESS_FLAG = 4,
    SDL_GL_CONTEXT_RESET_ISOLATION_FLAG = 8,
};

pub const SDL_GL_CONTEXT_PROFILE_CORE = 1;
pub const SDL_GL_CONTEXT_PROFILE_COMPATIBILITY = 2;
pub const SDL_GL_CONTEXT_PROFILE_ES = 4;
pub const SDL_GLprofile = extern enum {
    SDL_GL_CONTEXT_PROFILE_CORE = 1,
    SDL_GL_CONTEXT_PROFILE_COMPATIBILITY = 2,
    SDL_GL_CONTEXT_PROFILE_ES = 4,
};

// TODO: Draft?
// SDL_GLcontextReleaseFlag
// SDL_GLcontextResetNotification
pub const SDL_GL_CONTEXT_RELEASE_BEHAVIOR_NONE = 0;
pub const SDL_GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH = 1;
pub const SDL_GLcontextReleaseFlag = extern enum {
    SDL_GL_CONTEXT_RELEASE_BEHAVIOR_NONE = 0,
    SDL_GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH = 1,
};

pub const SDL_GL_CONTEXT_RESET_NO_NOTIFICATION = 0;
pub const SDL_GL_CONTEXT_RESET_LOSE_CONTEXT = 1;
pub const SDL_GLContextResetNotification = extern enum {
    SDL_GL_CONTEXT_RESET_NO_NOTIFICATION = 0,
    SDL_GL_CONTEXT_RESET_LOSE_CONTEXT = 1,
};

pub const SDL_HITTEST_NORMAL = 0;
pub const SDL_HITTEST_DRAGGABLE = 1;
pub const SDL_HITTEST_RESIZE_TOPLEFT = 2;
pub const SDL_HITTEST_RESIZE_TOP = 3;
pub const SDL_HITTEST_RESIZE_TOPRIGHT = 4;
pub const SDL_HITTEST_RESIZE_RIGHT = 5;
pub const SDL_HITTEST_RESIZE_BOTTOMRIGHT = 6;
pub const SDL_HITTEST_RESIZE_BOTTOM = 7;
pub const SDL_HITTEST_RESIZE_BOTTOMLEFT = 8;
pub const SDL_HITTEST_RESIZE_LEFT = 9;
pub const SDL_HitTestResult = extern enum {
    SDL_HITTEST_NORMAL = 0,
    SDL_HITTEST_DRAGGABLE = 1,
    SDL_HITTEST_RESIZE_TOPLEFT = 2,
    SDL_HITTEST_RESIZE_TOP = 3,
    SDL_HITTEST_RESIZE_TOPRIGHT = 4,
    SDL_HITTEST_RESIZE_RIGHT = 5,
    SDL_HITTEST_RESIZE_BOTTOMRIGHT = 6,
    SDL_HITTEST_RESIZE_BOTTOM = 7,
    SDL_HITTEST_RESIZE_BOTTOMLEFT = 8,
    SDL_HITTEST_RESIZE_LEFT = 9,
};

pub const SDL_MESSAGEBOX_BUTTON_RETURNKEY_DEFAULT = 1;
pub const SDL_MESSAGEBOX_BUTTON_ESCAPEKEY_DEFAULT = 2;
pub const SDL_MessageBoxButtonFlags = extern enum {
    SDL_MESSAGEBOX_BUTTON_RETURNKEY_DEFAULT = 1,
    SDL_MESSAGEBOX_BUTTON_ESCAPEKEY_DEFAULT = 2,
};
pub const SDL_MESSAGEBOX_COLOR_BACKGROUND = 0;
pub const SDL_MESSAGEBOX_COLOR_TEXT = 1;
pub const SDL_MESSAGEBOX_COLOR_BUTTON_BORDER = 2;
pub const SDL_MESSAGEBOX_COLOR_BUTTON_BACKGROUND = 3;
pub const SDL_MESSAGEBOX_COLOR_BUTTON_SELECTED = 4;
pub const SDL_MESSAGEBOX_COLOR_MAX = 5;
pub const SDL_MessageBoxColorType = extern enum {
    SDL_MESSAGEBOX_COLOR_BACKGROUND = 0,
    SDL_MESSAGEBOX_COLOR_TEXT = 1,
    SDL_MESSAGEBOX_COLOR_BUTTON_BORDER = 2,
    SDL_MESSAGEBOX_COLOR_BUTTON_BACKGROUND = 3,
    SDL_MESSAGEBOX_COLOR_BUTTON_SELECTED = 4,
    SDL_MESSAGEBOX_COLOR_MAX = 5,
};

pub const SDL_MESSAGEBOX_ERROR = 16;
pub const SDL_MESSAGEBOX_WARNING = 32;
pub const SDL_MESSAGEBOX_INFORMATION = 64;
pub const SDL_MessageBoxFlags = extern enum {
    SDL_MESSAGEBOX_ERROR = 16,
    SDL_MESSAGEBOX_WARNING = 32,
    SDL_MESSAGEBOX_INFORMATION = 64,
};

pub const SDL_WINDOW_FULLSCREEN = 1;
pub const SDL_WINDOW_OPENGL = 2;
pub const SDL_WINDOW_SHOWN = 4;
pub const SDL_WINDOW_HIDDEN = 8;
pub const SDL_WINDOW_BORDERLESS = 16;
pub const SDL_WINDOW_RESIZABLE = 32;
pub const SDL_WINDOW_MINIMIZED = 64;
pub const SDL_WINDOW_MAXIMIZED = 128;
pub const SDL_WINDOW_INPUT_GRABBED = 256;
pub const SDL_WINDOW_INPUT_FOCUS = 512;
pub const SDL_WINDOW_MOUSE_FOCUS = 1024;
pub const SDL_WINDOW_FULLSCREEN_DESKTOP = 4097;
pub const SDL_WINDOW_FOREIGN = 2048;
pub const SDL_WINDOW_ALLOW_HIGHDPI = 8192;
pub const SDL_WINDOW_MOUSE_CAPTURE = 16384;
pub const SDL_WINDOW_ALWAYS_ON_TOP = 32768;
pub const SDL_WINDOW_SKIP_TASKBAR = 65536;
pub const SDL_WINDOW_UTILITY = 131072;
pub const SDL_WINDOW_TOOLTIP = 262144;
pub const SDL_WINDOW_POPUP_MENU = 524288;
pub const SDL_WINDOW_VULKAN = 268435456;
pub const SDL_WindowFlags = extern enum {
    SDL_WINDOW_FULLSCREEN = 1,
    SDL_WINDOW_OPENGL = 2,
    SDL_WINDOW_SHOWN = 4,
    SDL_WINDOW_HIDDEN = 8,
    SDL_WINDOW_BORDERLESS = 16,
    SDL_WINDOW_RESIZABLE = 32,
    SDL_WINDOW_MINIMIZED = 64,
    SDL_WINDOW_MAXIMIZED = 128,
    SDL_WINDOW_INPUT_GRABBED = 256,
    SDL_WINDOW_INPUT_FOCUS = 512,
    SDL_WINDOW_MOUSE_FOCUS = 1024,
    SDL_WINDOW_FULLSCREEN_DESKTOP = 4097,
    SDL_WINDOW_FOREIGN = 2048,
    SDL_WINDOW_ALLOW_HIGHDPI = 8192,
    SDL_WINDOW_MOUSE_CAPTURE = 16384,
    SDL_WINDOW_ALWAYS_ON_TOP = 32768,
    SDL_WINDOW_SKIP_TASKBAR = 65536,
    SDL_WINDOW_UTILITY = 131072,
    SDL_WINDOW_TOOLTIP = 262144,
    SDL_WINDOW_POPUP_MENU = 524288,
    SDL_WINDOW_VULKAN = 268435456,
};

pub const SDL_WINDOWPOS_UNDEFINED_MASK = 0x1FFF0000;
pub const SDL_WINDOWPOS_UNDEFINED = SDL_WINDOWPOS_UNDEFINED_DISPLAY(0);

pub fn SDL_WINDOWPOS_UNDEFINED_DISPLAY(x: var) @typeOf(x) {
    return SDL_WINDOWPOS_UNDEFINED_MASK | x;
}

pub fn SDL_WINDOWPOS_ISUNDEFINED(pos: var) bool {
    return (pos & SDL_WINDOWPOS_UNDEFINED_MASK) == SDL_WINDOWPOS_UNDEFINED_MASK;
}

pub const SDL_WINDOWPOS_CENTERED_MASK = 0x2FFF0000;
pub const SDL_WINDOWPOS_CENTERED = SDL_WINDOWPOS_CENTERED_DISPLAY(0);

pub fn SDL_WINDOWPOS_CENTERED_DISPLAY(x: var) @typeOf(x) {
    return SDL_WINDOWPOS_CENTERED_MASK | x;
}

pub fn SDL_WINDOWPOS_ISCENTERED(pos: var) bool {
    return (pos & SDL_WINDOWPOS_CENTERED_MASK) == SDL_WINDOWPOS_CENTERED_MASK;
}

pub const SDL_WINDOWEVENT_NONE = 0;
pub const SDL_WINDOWEVENT_SHOWN = 1;
pub const SDL_WINDOWEVENT_HIDDEN = 2;
pub const SDL_WINDOWEVENT_EXPOSED = 3;
pub const SDL_WINDOWEVENT_MOVED = 4;
pub const SDL_WINDOWEVENT_RESIZED = 5;
pub const SDL_WINDOWEVENT_SIZE_CHANGED = 6;
pub const SDL_WINDOWEVENT_MINIMIZED = 7;
pub const SDL_WINDOWEVENT_MAXIMIZED = 8;
pub const SDL_WINDOWEVENT_RESTORED = 9;
pub const SDL_WINDOWEVENT_ENTER = 10;
pub const SDL_WINDOWEVENT_LEAVE = 11;
pub const SDL_WINDOWEVENT_FOCUS_GAINED = 12;
pub const SDL_WINDOWEVENT_FOCUS_LOST = 13;
pub const SDL_WINDOWEVENT_CLOSE = 14;
pub const SDL_WINDOWEVENT_TAKE_FOCUS = 15;
pub const SDL_WINDOWEVENT_HIT_TEST = 16;
pub const SDL_WindowEventID = extern enum {
    SDL_WINDOWEVENT_NONE = 0,
    SDL_WINDOWEVENT_SHOWN = 1,
    SDL_WINDOWEVENT_HIDDEN = 2,
    SDL_WINDOWEVENT_EXPOSED = 3,
    SDL_WINDOWEVENT_MOVED = 4,
    SDL_WINDOWEVENT_RESIZED = 5,
    SDL_WINDOWEVENT_SIZE_CHANGED = 6,
    SDL_WINDOWEVENT_MINIMIZED = 7,
    SDL_WINDOWEVENT_MAXIMIZED = 8,
    SDL_WINDOWEVENT_RESTORED = 9,
    SDL_WINDOWEVENT_ENTER = 10,
    SDL_WINDOWEVENT_LEAVE = 11,
    SDL_WINDOWEVENT_FOCUS_GAINED = 12,
    SDL_WINDOWEVENT_FOCUS_LOST = 13,
    SDL_WINDOWEVENT_CLOSE = 14,
    SDL_WINDOWEVENT_TAKE_FOCUS = 15,
    SDL_WINDOWEVENT_HIT_TEST = 16,
};

pub const SDL_DisplayMode = extern struct {
    format: u32,
    w: c_int,
    h: c_int,
    refresh_rate: c_int,
    driverdata: ?*c_void,
};

pub const SDL_MessageBoxButtonData = extern struct {
    flags: u32,
    buttonid: c_int,
    text: [*]const u8,
};

pub const SDL_MessageBoxColor = extern struct {
    r: u8,
    g: u8,
    b: u8,
};

// NOTE: manual
pub const SDL_MessageBoxColorScheme = extern struct {
    colors: [5]SDL_MessageBoxColor,
};

// NOTE: manual
pub const SDL_MessageBoxData = extern struct {
    flags: u32,
    window: ?*SDL_Window,
    title: [*]const u8,
    message: [*]const u8,
    numbuttons: c_int,
    buttons: [*]const SDL_MessageBoxButtonData,
    colorScheme: ?[*]const SDL_MessageBoxColorScheme,
};

const SDL_Renderer = @import("SDL_render.zig").SDL_Renderer;

const SDL_WindowEvent = @import("SDL_events.zig").SDL_WindowEvent;

pub const struct_SDL_Window = @OpaqueType();
pub const SDL_Window = struct_SDL_Window;

pub const SDL_HitTest = extern fn (*SDL_Window, *const SDL_Point, ?*c_void) SDL_HitTestResult;

pub extern fn SDL_CreateWindow(title: ?[*]const u8, x: c_int, y: c_int, w: c_int, h: c_int, flags: u32) ?*SDL_Window;
pub extern fn SDL_CreateWindowAndRenderer(width: c_int, height: c_int, window_flags: u32, window: **SDL_Window, renderer: **SDL_Renderer) c_int;
pub extern fn SDL_CreateWindowFrom(data: ?*const c_void) ?*SDL_Window;
pub extern fn SDL_DestroyWindow(window: *SDL_Window) void;
pub extern fn SDL_DisableScreenSaver() void;
pub extern fn SDL_EnableScreenSaver() void;
pub extern fn SDL_GL_CreateContext(window: *SDL_Window) SDL_GLContext;
pub extern fn SDL_GL_DeleteContext(context: SDL_GLContext) void;
pub extern fn SDL_GL_ExtensionSupported(extension: [*]const u8) SDL_bool;
pub extern fn SDL_GL_GetAttribute(attr: SDL_GLattr, value: *c_int) c_int;
pub extern fn SDL_GL_GetCurrentContext() SDL_GLContext;
pub extern fn SDL_GL_GetCurrentWindow() ?*SDL_Window;
pub extern fn SDL_GL_GetDrawableSize(window: *SDL_Window, w: ?*c_int, h: ?*c_int) void;
pub extern fn SDL_GL_GetProcAddress(proc: [*]const u8) ?*c_void;
pub extern fn SDL_GL_GetSwapInterval() c_int;
pub extern fn SDL_GL_LoadLibrary(path: [*]const u8) c_int;
pub extern fn SDL_GL_MakeCurrent(window: *SDL_Window, context: SDL_GLContext) c_int;
pub extern fn SDL_GL_ResetAttributes() void;
pub extern fn SDL_GL_SetAttribute(attr: SDL_GLattr, value: c_int) c_int;
pub extern fn SDL_GL_SetSwapInterval(interval: c_int) c_int;
pub extern fn SDL_GL_SwapWindow(window: *SDL_Window) void;
pub extern fn SDL_GL_UnloadLibrary() void;
pub extern fn SDL_GetClosestDisplayMode(displayIndex: c_int, mode: *const SDL_DisplayMode, closest: *SDL_DisplayMode) ?*SDL_DisplayMode;
pub extern fn SDL_GetCurrentDisplayMode(displayIndex: c_int, mode: *SDL_DisplayMode) c_int;
pub extern fn SDL_GetCurrentVideoDriver() ?[*]const u8;
pub extern fn SDL_GetDesktopDisplayMode(displayIndex: c_int, mode: *SDL_DisplayMode) c_int;
pub extern fn SDL_GetDisplayBounds(displayIndex: c_int, rect: *SDL_Rect) c_int;
pub extern fn SDL_GetDisplayDPI(displayIndex: c_int, ddpi: ?*f32, hdpi: ?*f32, vdpi: ?*f32) c_int;
pub extern fn SDL_GetDisplayMode(displayIndex: c_int, modeIndex: c_int, mode: *SDL_DisplayMode) c_int;
pub extern fn SDL_GetDisplayName(displayIndex: c_int) ?[*]const u8;
pub extern fn SDL_GetDisplayUsableBounds(displayIndex: c_int, rect: *SDL_Rect) c_int;
pub extern fn SDL_GetGrabbedWindow() ?*SDL_Window;
pub extern fn SDL_GetNumDisplayModes(displayIndex: c_int) c_int;
pub extern fn SDL_GetNumVideoDisplays() c_int;
pub extern fn SDL_GetNumVideoDrivers() c_int;
pub extern fn SDL_GetVideoDriver(index_0: c_int) ?[*]const u8;
pub extern fn SDL_GetWindowBordersSize(window: *SDL_Window, top: ?*c_int, left: ?*c_int, bottom: ?*c_int, right: ?*c_int) c_int;
pub extern fn SDL_GetWindowBrightness(window: *SDL_Window) f32;
pub extern fn SDL_GetWindowData(window: *SDL_Window, name: [*]const u8) ?*c_void;
pub extern fn SDL_GetWindowDisplayIndex(window: *SDL_Window) c_int;
pub extern fn SDL_GetWindowDisplayMode(window: *SDL_Window, mode: *SDL_DisplayMode) c_int;
pub extern fn SDL_GetWindowFlags(window: *SDL_Window) u32;
pub extern fn SDL_GetWindowFromID(id: u32) *SDL_Window;
pub extern fn SDL_GetWindowGammaRamp(window: *SDL_Window, red: ?*u16, green: ?*u16, blue: ?*u16) c_int;
pub extern fn SDL_GetWindowGrab(window: *SDL_Window) SDL_bool;
pub extern fn SDL_GetWindowID(window: *SDL_Window) u32;
pub extern fn SDL_GetWindowMaximumSize(window: *SDL_Window, w: ?*c_int, h: ?*c_int) void;
pub extern fn SDL_GetWindowMinimumSize(window: *SDL_Window, w: ?*c_int, h: ?*c_int) void;
pub extern fn SDL_GetWindowOpacity(window: *SDL_Window, out_opacity: *f32) c_int;
pub extern fn SDL_GetWindowPixelFormat(window: *SDL_Window) u32;
pub extern fn SDL_GetWindowPosition(window: *SDL_Window, x: ?*c_int, y: ?*c_int) void;
pub extern fn SDL_GetWindowSize(window: *SDL_Window, w: ?*c_int, h: ?*c_int) void;
pub extern fn SDL_GetWindowSurface(window: *SDL_Window) ?*SDL_Surface;
pub extern fn SDL_GetWindowTitle(window: *SDL_Window) ?[*]const u8;
pub extern fn SDL_HideWindow(window: *SDL_Window) void;
pub extern fn SDL_IsScreenSaverEnabled() SDL_bool;
pub extern fn SDL_MaximizeWindow(window: *SDL_Window) void;
pub extern fn SDL_MinimizeWindow(window: *SDL_Window) void;
pub extern fn SDL_RaiseWindow(window: *SDL_Window) void;
pub extern fn SDL_RestoreWindow(window: *SDL_Window) void;
pub extern fn SDL_SetWindowBordered(window: *SDL_Window, bordered: SDL_bool) void;
pub extern fn SDL_SetWindowBrightness(window: *SDL_Window, brightness: f32) c_int;
pub extern fn SDL_SetWindowData(window: *SDL_Window, name: [*]const u8, userdata: ?*c_void) ?*c_void;
pub extern fn SDL_SetWindowDisplayMode(window: *SDL_Window, mode: *const SDL_DisplayMode) c_int;
pub extern fn SDL_SetWindowFullscreen(window: *SDL_Window, flags: u32) c_int;
pub extern fn SDL_SetWindowGammaRamp(window: *SDL_Window, red: ?*const u16, green: ?*const u16, blue: ?*const u16) c_int;
pub extern fn SDL_SetWindowGrab(window: *SDL_Window, grabbed: SDL_bool) void;
pub extern fn SDL_SetWindowHitTest(window: *SDL_Window, callback: SDL_HitTest, callback_data: ?*c_void) c_int;
pub extern fn SDL_SetWindowIcon(window: *SDL_Window, icon: *SDL_Surface) void;
pub extern fn SDL_SetWindowInputFocus(window: *SDL_Window) c_int;
pub extern fn SDL_SetWindowMaximumSize(window: *SDL_Window, max_w: c_int, max_h: c_int) void;
pub extern fn SDL_SetWindowMinimumSize(window: *SDL_Window, min_w: c_int, min_h: c_int) void;
pub extern fn SDL_SetWindowModalFor(modal_window: *SDL_Window, parent_window: *SDL_Window) c_int;
pub extern fn SDL_SetWindowOpacity(window: *SDL_Window, opacity: f32) c_int;
pub extern fn SDL_SetWindowPosition(window: *SDL_Window, x: c_int, y: c_int) void;
pub extern fn SDL_SetWindowResizable(window: *SDL_Window, resizable: SDL_bool) void;
pub extern fn SDL_SetWindowSize(window: *SDL_Window, w: c_int, h: c_int) void;
pub extern fn SDL_SetWindowTitle(window: *SDL_Window, title: [*]const u8) void;
pub extern fn SDL_ShowWindow(window: *SDL_Window) void;
pub extern fn SDL_UpdateWindowSurfaceRects(window: *SDL_Window, rects: [*]const SDL_Rect, numrects: c_int) c_int;
pub extern fn SDL_UpdateWindowSurface(window: *SDL_Window) c_int;
pub extern fn SDL_VideoInit(driver_name: [*]const u8) c_int;
pub extern fn SDL_VideoQuit() void;
