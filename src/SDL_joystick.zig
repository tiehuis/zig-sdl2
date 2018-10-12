use @import("SDL_stdinc.zig");

pub const struct__SDL_Joystick = @OpaqueType();
pub const SDL_Joystick = struct__SDL_Joystick;
pub const SDL_JoystickGUID = extern struct {
    data: [16]u8,
};

pub const SDL_JoystickID = i32;
pub const SDL_JOYSTICK_TYPE_UNKNOWN = 0;
pub const SDL_JOYSTICK_TYPE_GAMECONTROLLER = 1;
pub const SDL_JOYSTICK_TYPE_WHEEL = 2;
pub const SDL_JOYSTICK_TYPE_ARCADE_STICK = 3;
pub const SDL_JOYSTICK_TYPE_FLIGHT_STICK = 4;
pub const SDL_JOYSTICK_TYPE_DANCE_PAD = 5;
pub const SDL_JOYSTICK_TYPE_GUITAR = 6;
pub const SDL_JOYSTICK_TYPE_DRUM_KIT = 7;
pub const SDL_JOYSTICK_TYPE_ARCADE_PAD = 8;
pub const SDL_JOYSTICK_TYPE_THROTTLE = 9;
pub const SDL_JoystickType = extern enum {
    SDL_JOYSTICK_TYPE_UNKNOWN = 0,
    SDL_JOYSTICK_TYPE_GAMECONTROLLER = 1,
    SDL_JOYSTICK_TYPE_WHEEL = 2,
    SDL_JOYSTICK_TYPE_ARCADE_STICK = 3,
    SDL_JOYSTICK_TYPE_FLIGHT_STICK = 4,
    SDL_JOYSTICK_TYPE_DANCE_PAD = 5,
    SDL_JOYSTICK_TYPE_GUITAR = 6,
    SDL_JOYSTICK_TYPE_DRUM_KIT = 7,
    SDL_JOYSTICK_TYPE_ARCADE_PAD = 8,
    SDL_JOYSTICK_TYPE_THROTTLE = 9,
};

pub const SDL_JOYSTICK_POWER_UNKNOWN = -4294967295;
pub const SDL_JOYSTICK_POWER_EMPTY = 0;
pub const SDL_JOYSTICK_POWER_LOW = 1;
pub const SDL_JOYSTICK_POWER_MEDIUM = 2;
pub const SDL_JOYSTICK_POWER_FULL = 3;
pub const SDL_JOYSTICK_POWER_WIRED = 4;
pub const SDL_JOYSTICK_POWER_MAX = 5;
pub const SDL_JoystickPowerLevel = extern enum {
    SDL_JOYSTICK_POWER_UNKNOWN = -4294967295,
    SDL_JOYSTICK_POWER_EMPTY = 0,
    SDL_JOYSTICK_POWER_LOW = 1,
    SDL_JOYSTICK_POWER_MEDIUM = 2,
    SDL_JOYSTICK_POWER_FULL = 3,
    SDL_JOYSTICK_POWER_WIRED = 4,
    SDL_JOYSTICK_POWER_MAX = 5,
};

pub extern fn SDL_JoystickClose(joystick: *SDL_Joystick) void;
pub extern fn SDL_JoystickCurrentPowerLevel(joystick: *SDL_Joystick) SDL_JoystickPowerLevel;
pub extern fn SDL_JoystickEventState(state: c_int) c_int;
pub extern fn SDL_JoystickFromInstanceID(joyid: SDL_JoystickID) ?*SDL_Joystick;
pub extern fn SDL_JoystickGetAttached(joystick: *SDL_Joystick) SDL_bool;
pub extern fn SDL_JoystickGetAxisInitialState(joystick: *SDL_Joystick, axis: c_int, state: ?[*]i16) SDL_bool;
pub extern fn SDL_JoystickGetAxis(joystick: *SDL_Joystick, axis: c_int) i16;
pub extern fn SDL_JoystickGetBall(joystick: *SDL_Joystick, ball: c_int, dx: *c_int, dy: *c_int) c_int;
pub extern fn SDL_JoystickGetButton(joystick: *SDL_Joystick, button: c_int) u8;
pub extern fn SDL_JoystickGetDeviceGUID(device_index: c_int) SDL_JoystickGUID;
pub extern fn SDL_JoystickGetDeviceInstanceID(device_index: c_int) SDL_JoystickID;
pub extern fn SDL_JoystickGetDeviceProduct(device_index: c_int) u16;
pub extern fn SDL_JoystickGetDeviceProductVersion(device_index: c_int) u16;
pub extern fn SDL_JoystickGetDeviceType(device_index: c_int) SDL_JoystickType;
pub extern fn SDL_JoystickGetDeviceVendor(device_index: c_int) u16;
pub extern fn SDL_JoystickGetGUIDFromString(pchGUID: [*]const u8) SDL_JoystickGUID;
pub extern fn SDL_JoystickGetGUID(joystick: *SDL_Joystick) SDL_JoystickGUID;
pub extern fn SDL_JoystickGetGUIDString(guid: SDL_JoystickGUID, pszGUID: [*]u8, cbGUID: c_int) void;
pub extern fn SDL_JoystickGetHat(joystick: *SDL_Joystick, hat: c_int) u8;
pub extern fn SDL_JoystickGetProduct(joystick: *SDL_Joystick) u16;
pub extern fn SDL_JoystickGetProductVersion(joystick: *SDL_Joystick) u16;
pub extern fn SDL_JoystickGetType(joystick: *SDL_Joystick) SDL_JoystickType;
pub extern fn SDL_JoystickGetVendor(joystick: *SDL_Joystick) u16;
pub extern fn SDL_JoystickInstanceID(joystick: *SDL_Joystick) SDL_JoystickID;
pub extern fn SDL_JoystickNameForIndex(device_index: c_int) ?[*]const u8;
pub extern fn SDL_JoystickName(joystick: *SDL_Joystick) ?[*]const u8;
pub extern fn SDL_JoystickNumAxes(joystick: *SDL_Joystick) c_int;
pub extern fn SDL_JoystickNumBalls(joystick: *SDL_Joystick) c_int;
pub extern fn SDL_JoystickNumButtons(joystick: *SDL_Joystick) c_int;
pub extern fn SDL_JoystickNumHats(joystick: *SDL_Joystick) c_int;
pub extern fn SDL_JoystickOpen(device_index: c_int) ?*SDL_Joystick;
pub extern fn SDL_JoystickUpdate() void;
pub extern fn SDL_LockJoysticks() void;
pub extern fn SDL_NumJoysticks() c_int;
pub extern fn SDL_UnlockJoysticks() void;
