// NOTE: want to parse directly from system SDL where possible
const c = @cImport("SDL2/SDL.h");

pub const struct_SDL_version = extern struct {
    major: u8,
    minor: u8,
    patch: u8,
};

pub const SDL_version = struct_SDL_version;

pub extern fn SDL_GetRevision() ?[*]const u8;
pub extern fn SDL_GetRevisionNumber() c_int;
pub extern fn SDL_GetVersion(ver: *SDL_version) void;

pub const SDL_COMPILEDVERSION = SDL_VERSIONNUM(c.SDL_MAJOR_VERSION, c.SDL_MINOR_VERSION, c.SDL_PATCH_VERSION);

pub inline fn SDL_VERSION(version: *SDL_version) void {
    version.major = c.SDL_MAJOR_VERSION;
    version.minor = c.SDL_MINOR_VERSION;
    version.patch = c.SDL_PATCH_VERSION;
}

pub inline fn SDL_VERSIONNUM(x: comptime_int, y: comptime_int, z: comptime_int) comptime_int {
    return x * 1000 + y * 100 + z;
}

pub inline fn SDL_VERSION_ATLEAST(x: comptime_int, y: comptime_int, z: comptime_int) bool {
    return SDL_COMPILEDVERSION >= SDL_VERSIONNUM(x, y, z);
}

// NOTE: must include SDL_revision.h for this anyway according to docs
// omit: SDL_REVISION
