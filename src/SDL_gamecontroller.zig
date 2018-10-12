use @import("SDL_stdinc.zig");

pub const SDL_CONTROLLER_AXIS_INVALID = -4294967295;
pub const SDL_CONTROLLER_AXIS_LEFTX = 0;
pub const SDL_CONTROLLER_AXIS_LEFTY = 1;
pub const SDL_CONTROLLER_AXIS_RIGHTX = 2;
pub const SDL_CONTROLLER_AXIS_RIGHTY = 3;
pub const SDL_CONTROLLER_AXIS_TRIGGERLEFT = 4;
pub const SDL_CONTROLLER_AXIS_TRIGGERRIGHT = 5;
pub const SDL_CONTROLLER_AXIS_MAX = 6;
pub const SDL_GameControllerAxis = extern enum {
    SDL_CONTROLLER_AXIS_INVALID = -4294967295,
    SDL_CONTROLLER_AXIS_LEFTX = 0,
    SDL_CONTROLLER_AXIS_LEFTY = 1,
    SDL_CONTROLLER_AXIS_RIGHTX = 2,
    SDL_CONTROLLER_AXIS_RIGHTY = 3,
    SDL_CONTROLLER_AXIS_TRIGGERLEFT = 4,
    SDL_CONTROLLER_AXIS_TRIGGERRIGHT = 5,
    SDL_CONTROLLER_AXIS_MAX = 6,
};

pub const SDL_CONTROLLER_BUTTON_INVALID = -4294967295;
pub const SDL_CONTROLLER_BUTTON_A = 0;
pub const SDL_CONTROLLER_BUTTON_B = 1;
pub const SDL_CONTROLLER_BUTTON_X = 2;
pub const SDL_CONTROLLER_BUTTON_Y = 3;
pub const SDL_CONTROLLER_BUTTON_BACK = 4;
pub const SDL_CONTROLLER_BUTTON_GUIDE = 5;
pub const SDL_CONTROLLER_BUTTON_START = 6;
pub const SDL_CONTROLLER_BUTTON_LEFTSTICK = 7;
pub const SDL_CONTROLLER_BUTTON_RIGHTSTICK = 8;
pub const SDL_CONTROLLER_BUTTON_LEFTSHOULDER = 9;
pub const SDL_CONTROLLER_BUTTON_RIGHTSHOULDER = 10;
pub const SDL_CONTROLLER_BUTTON_DPAD_UP = 11;
pub const SDL_CONTROLLER_BUTTON_DPAD_DOWN = 12;
pub const SDL_CONTROLLER_BUTTON_DPAD_LEFT = 13;
pub const SDL_CONTROLLER_BUTTON_DPAD_RIGHT = 14;
pub const SDL_CONTROLLER_BUTTON_MAX = 15;
pub const SDL_GameControllerButton = extern enum {
    SDL_CONTROLLER_BUTTON_INVALID = -4294967295,
    SDL_CONTROLLER_BUTTON_A = 0,
    SDL_CONTROLLER_BUTTON_B = 1,
    SDL_CONTROLLER_BUTTON_X = 2,
    SDL_CONTROLLER_BUTTON_Y = 3,
    SDL_CONTROLLER_BUTTON_BACK = 4,
    SDL_CONTROLLER_BUTTON_GUIDE = 5,
    SDL_CONTROLLER_BUTTON_START = 6,
    SDL_CONTROLLER_BUTTON_LEFTSTICK = 7,
    SDL_CONTROLLER_BUTTON_RIGHTSTICK = 8,
    SDL_CONTROLLER_BUTTON_LEFTSHOULDER = 9,
    SDL_CONTROLLER_BUTTON_RIGHTSHOULDER = 10,
    SDL_CONTROLLER_BUTTON_DPAD_UP = 11,
    SDL_CONTROLLER_BUTTON_DPAD_DOWN = 12,
    SDL_CONTROLLER_BUTTON_DPAD_LEFT = 13,
    SDL_CONTROLLER_BUTTON_DPAD_RIGHT = 14,
    SDL_CONTROLLER_BUTTON_MAX = 15,
};

pub const SDL_CONTROLLER_BINDTYPE_NONE = 0;
pub const SDL_CONTROLLER_BINDTYPE_BUTTON = 1;
pub const SDL_CONTROLLER_BINDTYPE_AXIS = 2;
pub const SDL_CONTROLLER_BINDTYPE_HAT = 3;
pub const SDL_GameControllerBindType = extern enum {
    SDL_CONTROLLER_BINDTYPE_NONE = 0,
    SDL_CONTROLLER_BINDTYPE_BUTTON = 1,
    SDL_CONTROLLER_BINDTYPE_AXIS = 2,
    SDL_CONTROLLER_BINDTYPE_HAT = 3,
};

pub const struct__SDL_GameController = @OpaqueType();
pub const SDL_GameController = struct__SDL_GameController;

pub const struct_SDL_GameControllerButtonBind = extern struct {
    bindType: SDL_GameControllerBindType,
    value: extern union {
        button: c_int,
        axis: c_int,
        hat: extern struct {
            hat: c_int,
            hat_mask: c_int,
        },
    },
};
pub const SDL_GameControllerButtonBind = struct_SDL_GameControllerButtonBind;

pub extern fn SDL_GameControllerAddMapping(mappingString: [*]const u8) c_int;
// NOTE: manual
pub inline fn SDL_GameControllerAddMappingsFromFile(file: [*]const u8) c_int {
    return SDL_GameControllerAddMappingsFromRW(SDL_RWFromFile(file, "rb"), 1);
}
pub extern fn SDL_GameControllerAddMappingsFromRW(rw: *SDL_RWops, freerw: c_int) c_int;
pub extern fn SDL_GameControllerClose(gamecontroller: *SDL_GameController) void;
pub extern fn SDL_GameControllerEventState(state: c_int) c_int;
pub extern fn SDL_GameControllerFromInstanceID(joyid: SDL_JoystickID) ?*SDL_GameController;
pub extern fn SDL_GameControllerGetAttached(gamecontroller: *SDL_GameController) SDL_bool;
pub extern fn SDL_GameControllerGetAxisFromString(pchString: ?[*]const u8) SDL_GameControllerAxis;
pub extern fn SDL_GameControllerGetAxis(gamecontroller: *SDL_GameController, axis: SDL_GameControllerAxis) i16;
pub extern fn SDL_GameControllerGetBindForAxis(gamecontroller: *SDL_GameController, axis: SDL_GameControllerAxis) SDL_GameControllerButtonBind;
pub extern fn SDL_GameControllerGetBindForButton(gamecontroller: *SDL_GameController, button: SDL_GameControllerButton) SDL_GameControllerButtonBind;
pub extern fn SDL_GameControllerGetButtonFromString(pchString: [*]const u8) SDL_GameControllerButton;
pub extern fn SDL_GameControllerGetButton(gamecontroller: *SDL_GameController, button: SDL_GameControllerButton) u8;
pub extern fn SDL_GameControllerGetJoystick(gamecontroller: *SDL_GameController) ?*SDL_Joystick;
pub extern fn SDL_GameControllerGetProduct(gamecontroller: *SDL_GameController) u16;
pub extern fn SDL_GameControllerGetProductVersion(gamecontroller: *SDL_GameController) u16;
pub extern fn SDL_GameControllerGetStringForAxis(axis: SDL_GameControllerAxis) ?[*]const u8;
pub extern fn SDL_GameControllerGetStringForButton(button: SDL_GameControllerButton) ?[*]const u8;
pub extern fn SDL_GameControllerGetVendor(gamecontroller: *SDL_GameController) u16;
pub extern fn SDL_GameControllerMappingForGUID(guid: SDL_JoystickGUID) ?[*]u8;
pub extern fn SDL_GameControllerMappingForIndex(mapping_index: c_int) ?[*]u8;
pub extern fn SDL_GameControllerMapping(gamecontroller: *SDL_GameController) ?[*]u8;
pub extern fn SDL_GameControllerNameForIndex(joystick_index: c_int) ?[*]const u8;
pub extern fn SDL_GameControllerName(gamecontroller: *SDL_GameController) ?[*]const u8;
pub extern fn SDL_GameControllerNumMappings() c_int;
pub extern fn SDL_GameControllerOpen(joystick_index: c_int) ?*SDL_GameController;
pub extern fn SDL_GameControllerUpdate() void;
pub extern fn SDL_IsGameController(joystick_index: c_int) SDL_bool;
