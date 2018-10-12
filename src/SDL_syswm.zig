use @import("SDL_stdinc.zig");

const SDL_version = @import("SDL_version.zig").SDL_version;

pub const SDL_SYSWM_UNKNOWN = 0;
pub const SDL_SYSWM_WINDOWS = 1;
pub const SDL_SYSWM_X11 = 2;
pub const SDL_SYSWM_DIRECTFB = 3;
pub const SDL_SYSWM_COCOA = 4;
pub const SDL_SYSWM_UIKIT = 5;
pub const SDL_SYSWM_WAYLAND = 6;
pub const SDL_SYSWM_MIR = 7;
pub const SDL_SYSWM_WINRT = 8;
pub const SDL_SYSWM_ANDROID = 9;
pub const SDL_SYSWM_VIVANTE = 10;
pub const SDL_SYSWM_OS2 = 11;
pub const SDL_SYSWM_TYPE = extern enum {
    SDL_SYSWM_UNKNOWN = 0,
    SDL_SYSWM_WINDOWS = 1,
    SDL_SYSWM_X11 = 2,
    SDL_SYSWM_DIRECTFB = 3,
    SDL_SYSWM_COCOA = 4,
    SDL_SYSWM_UIKIT = 5,
    SDL_SYSWM_WAYLAND = 6,
    SDL_SYSWM_MIR = 7,
    SDL_SYSWM_WINRT = 8,
    SDL_SYSWM_ANDROID = 9,
    SDL_SYSWM_VIVANTE = 10,
    SDL_SYSWM_OS2 = 11,
};

pub const struct_SDL_SysWMmsg = extern struct {
    version: SDL_version,
    subsystem: SDL_SYSWM_TYPE,
    msg: extern union {
        // NOTE: This actually has other members depending on the WM
        dummy: c_int,
    },
};
pub const SDL_SysWMmsg = struct_SDL_SysWMmsg;

pub const struct_wl_display = @OpaqueType();
pub const struct_wl_surface = @OpaqueType();
pub const struct_wl_shell_surface = @OpaqueType();

pub const struct_SDL_SysWMinfo = extern struct {
    version: SDL_version,
    subsystem: SDL_SYSWM_TYPE,
    info: extern union {
        x11: extern struct {
            display: ?*Display,
            window: Window,
        },
        wl: extern struct {
            display: ?*struct_wl_display,
            surface: ?*struct_wl_surface,
            shell_surface: ?*struct_wl_shell_surface,
        },
        dummy: [64]u8,
    },
};
pub const SDL_SysWMinfo = struct_SDL_SysWMinfo;

pub extern fn SDL_GetWindowWMInfo(window: *SDL_Window, info: *SDL_SysWMinfo) SDL_bool;
