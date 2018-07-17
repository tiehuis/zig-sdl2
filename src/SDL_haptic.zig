pub const struct__SDL_Haptic = @OpaqueType();
pub const SDL_Haptic = struct__SDL_Haptic;
pub const struct_SDL_HapticDirection = extern struct {
    type: u8,
    dir: [3]i32,
};

pub const SDL_HapticDirection = struct_SDL_HapticDirection;
pub const struct_SDL_HapticConstant = extern struct {
    type: u16,
    direction: SDL_HapticDirection,
    length: u32,
    delay: u16,
    button: u16,
    interval: u16,
    level: i16,
    attack_length: u16,
    attack_level: u16,
    fade_length: u16,
    fade_level: u16,
};

pub const SDL_HapticConstant = struct_SDL_HapticConstant;
pub const struct_SDL_HapticPeriodic = extern struct {
    type: u16,
    direction: SDL_HapticDirection,
    length: u32,
    delay: u16,
    button: u16,
    interval: u16,
    period: u16,
    magnitude: i16,
    offset: i16,
    phase: u16,
    attack_length: u16,
    attack_level: u16,
    fade_length: u16,
    fade_level: u16,
};

pub const SDL_HapticPeriodic = struct_SDL_HapticPeriodic;
pub const struct_SDL_HapticCondition = extern struct {
    type: u16,
    direction: SDL_HapticDirection,
    length: u32,
    delay: u16,
    button: u16,
    interval: u16,
    right_sat: [3]u16,
    left_sat: [3]u16,
    right_coeff: [3]i16,
    left_coeff: [3]i16,
    deadband: [3]u16,
    center: [3]i16,
};

pub const SDL_HapticCondition = struct_SDL_HapticCondition;
pub const struct_SDL_HapticRamp = extern struct {
    type: u16,
    direction: SDL_HapticDirection,
    length: u32,
    delay: u16,
    button: u16,
    interval: u16,
    start: i16,
    end: i16,
    attack_length: u16,
    attack_level: u16,
    fade_length: u16,
    fade_level: u16,
};

pub const SDL_HapticRamp = struct_SDL_HapticRamp;
pub const struct_SDL_HapticLeftRight = extern struct {
    type: u16,
    length: u32,
    large_magnitude: u16,
    small_magnitude: u16,
};

pub const SDL_HapticLeftRight = struct_SDL_HapticLeftRight;
pub const struct_SDL_HapticCustom = extern struct {
    type: u16,
    direction: SDL_HapticDirection,
    length: u32,
    delay: u16,
    button: u16,
    interval: u16,
    channels: u8,
    period: u16,
    samples: u16,
    data: ?[*]u16,
    attack_length: u16,
    attack_level: u16,
    fade_length: u16,
    fade_level: u16,
};

pub const SDL_HapticCustom = struct_SDL_HapticCustom;
pub const union_SDL_HapticEffect = extern union {
    type: u16,
    constant: SDL_HapticConstant,
    periodic: SDL_HapticPeriodic,
    condition: SDL_HapticCondition,
    ramp: SDL_HapticRamp,
    leftright: SDL_HapticLeftRight,
    custom: SDL_HapticCustom,
};
pub const SDL_HapticEffect = union_SDL_HapticEffect;

pub extern fn SDL_HapticClose(haptic: *SDL_Haptic) void;
pub extern fn SDL_HapticDestroyEffect(haptic: *SDL_Haptic, effect: c_int) void;
pub extern fn SDL_HapticEffectSupported(haptic: *SDL_Haptic, effect: *SDL_HapticEffect) c_int;
pub extern fn SDL_HapticGetEffectStatus(haptic: *SDL_Haptic, effect: c_int) c_int;
pub extern fn SDL_HapticIndex(haptic: *SDL_Haptic) c_int;
pub extern fn SDL_HapticName(device_index: c_int) ?[*]const u8;
pub extern fn SDL_HapticNewEffect(haptic: *SDL_Haptic, effect: *SDL_HapticEffect) c_int;
pub extern fn SDL_HapticNumAxes(haptic: *SDL_Haptic) c_int;
pub extern fn SDL_HapticNumEffects(haptic: *SDL_Haptic) c_int;
pub extern fn SDL_HapticNumEffectsPlaying(haptic: *SDL_Haptic) c_int;
pub extern fn SDL_HapticOpen(device_index: c_int) ?*SDL_Haptic;
pub extern fn SDL_HapticOpened(device_index: c_int) c_int;
pub extern fn SDL_HapticOpenFromJoystick(joystick: *SDL_Joystick) ?*SDL_Haptic;
pub extern fn SDL_HapticOpenFromMouse() ?*SDL_Haptic;
pub extern fn SDL_HapticPause(haptic: *SDL_Haptic) c_int;
pub extern fn SDL_HapticQuery(haptic: *SDL_Haptic) c_uint;
pub extern fn SDL_HapticRumbleInit(haptic: *SDL_Haptic) c_int;
pub extern fn SDL_HapticRumblePlay(haptic: *SDL_Haptic, strength: f32, length: u32) c_int;
pub extern fn SDL_HapticRumbleStop(haptic: *SDL_Haptic) c_int;
pub extern fn SDL_HapticRumbleSupported(haptic: *SDL_Haptic) c_int;
pub extern fn SDL_HapticRunEffect(haptic: *SDL_Haptic, effect: c_int, iterations: u32) c_int;
pub extern fn SDL_HapticSetAutocenter(haptic: *SDL_Haptic, autocenter: c_int) c_int;
pub extern fn SDL_HapticSetGain(haptic: *SDL_Haptic, gain: c_int) c_int;
pub extern fn SDL_HapticStopAll(haptic: *SDL_Haptic) c_int;
pub extern fn SDL_HapticStopEffect(haptic: *SDL_Haptic, effect: c_int) c_int;
pub extern fn SDL_HapticUnpause(haptic: *SDL_Haptic) c_int;
pub extern fn SDL_HapticUpdateEffect(haptic: *SDL_Haptic, effect: c_int, data: *SDL_HapticEffect) c_int;
pub extern fn SDL_JoystickIsHaptic(joystick: *SDL_Joystick) c_int;
pub extern fn SDL_MouseIsHaptic() c_int;
pub extern fn SDL_NumHaptics() c_int;
