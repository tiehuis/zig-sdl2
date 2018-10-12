use @import("SDL_stdinc.zig");

const SDL_WindowEventId = @import("SDL_video.zig").SDL_WindowEventId;
const SDL_Keysym = @import("SDL_keyboard.zig").SDL_Keysym;
const SDL_JoystickID = @import("SDL_joystick.zig").SDL_JoystickID;

pub const SDL_FIRSTEVENT = 0;
pub const SDL_QUIT = 256;
pub const SDL_APP_TERMINATING = 257;
pub const SDL_APP_LOWMEMORY = 258;
pub const SDL_APP_WILLENTERBACKGROUND = 259;
pub const SDL_APP_DIDENTERBACKGROUND = 260;
pub const SDL_APP_WILLENTERFOREGROUND = 261;
pub const SDL_APP_DIDENTERFOREGROUND = 262;
pub const SDL_WINDOWEVENT = 512;
pub const SDL_SYSWMEVENT = 513;
pub const SDL_KEYDOWN = 768;
pub const SDL_KEYUP = 769;
pub const SDL_TEXTEDITING = 770;
pub const SDL_TEXTINPUT = 771;
pub const SDL_KEYMAPCHANGED = 772;
pub const SDL_MOUSEMOTION = 1024;
pub const SDL_MOUSEBUTTONDOWN = 1025;
pub const SDL_MOUSEBUTTONUP = 1026;
pub const SDL_MOUSEWHEEL = 1027;
pub const SDL_JOYAXISMOTION = 1536;
pub const SDL_JOYBALLMOTION = 1537;
pub const SDL_JOYHATMOTION = 1538;
pub const SDL_JOYBUTTONDOWN = 1539;
pub const SDL_JOYBUTTONUP = 1540;
pub const SDL_JOYDEVICEADDED = 1541;
pub const SDL_JOYDEVICEREMOVED = 1542;
pub const SDL_CONTROLLERAXISMOTION = 1616;
pub const SDL_CONTROLLERBUTTONDOWN = 1617;
pub const SDL_CONTROLLERBUTTONUP = 1618;
pub const SDL_CONTROLLERDEVICEADDED = 1619;
pub const SDL_CONTROLLERDEVICEREMOVED = 1620;
pub const SDL_CONTROLLERDEVICEREMAPPED = 1621;
pub const SDL_FINGERDOWN = 1792;
pub const SDL_FINGERUP = 1793;
pub const SDL_FINGERMOTION = 1794;
pub const SDL_DOLLARGESTURE = 2048;
pub const SDL_DOLLARRECORD = 2049;
pub const SDL_MULTIGESTURE = 2050;
pub const SDL_CLIPBOARDUPDATE = 2304;
pub const SDL_DROPFILE = 4096;
pub const SDL_DROPTEXT = 4097;
pub const SDL_DROPBEGIN = 4098;
pub const SDL_DROPCOMPLETE = 4099;
pub const SDL_AUDIODEVICEADDED = 4352;
pub const SDL_AUDIODEVICEREMOVED = 4353;
pub const SDL_RENDER_TARGETS_RESET = 8192;
pub const SDL_RENDER_DEVICE_RESET = 8193;
pub const SDL_USEREVENT = 32768;
pub const SDL_LASTEVENT = 65535;
pub const SDL_EventType = extern enum {
    SDL_FIRSTEVENT = 0,
    SDL_QUIT = 256,
    SDL_APP_TERMINATING = 257,
    SDL_APP_LOWMEMORY = 258,
    SDL_APP_WILLENTERBACKGROUND = 259,
    SDL_APP_DIDENTERBACKGROUND = 260,
    SDL_APP_WILLENTERFOREGROUND = 261,
    SDL_APP_DIDENTERFOREGROUND = 262,
    SDL_WINDOWEVENT = 512,
    SDL_SYSWMEVENT = 513,
    SDL_KEYDOWN = 768,
    SDL_KEYUP = 769,
    SDL_TEXTEDITING = 770,
    SDL_TEXTINPUT = 771,
    SDL_KEYMAPCHANGED = 772,
    SDL_MOUSEMOTION = 1024,
    SDL_MOUSEBUTTONDOWN = 1025,
    SDL_MOUSEBUTTONUP = 1026,
    SDL_MOUSEWHEEL = 1027,
    SDL_JOYAXISMOTION = 1536,
    SDL_JOYBALLMOTION = 1537,
    SDL_JOYHATMOTION = 1538,
    SDL_JOYBUTTONDOWN = 1539,
    SDL_JOYBUTTONUP = 1540,
    SDL_JOYDEVICEADDED = 1541,
    SDL_JOYDEVICEREMOVED = 1542,
    SDL_CONTROLLERAXISMOTION = 1616,
    SDL_CONTROLLERBUTTONDOWN = 1617,
    SDL_CONTROLLERBUTTONUP = 1618,
    SDL_CONTROLLERDEVICEADDED = 1619,
    SDL_CONTROLLERDEVICEREMOVED = 1620,
    SDL_CONTROLLERDEVICEREMAPPED = 1621,
    SDL_FINGERDOWN = 1792,
    SDL_FINGERUP = 1793,
    SDL_FINGERMOTION = 1794,
    SDL_DOLLARGESTURE = 2048,
    SDL_DOLLARRECORD = 2049,
    SDL_MULTIGESTURE = 2050,
    SDL_CLIPBOARDUPDATE = 2304,
    SDL_DROPFILE = 4096,
    SDL_DROPTEXT = 4097,
    SDL_DROPBEGIN = 4098,
    SDL_DROPCOMPLETE = 4099,
    SDL_AUDIODEVICEADDED = 4352,
    SDL_AUDIODEVICEREMOVED = 4353,
    SDL_RENDER_TARGETS_RESET = 8192,
    SDL_RENDER_DEVICE_RESET = 8193,
    SDL_USEREVENT = 32768,
    SDL_LASTEVENT = 65535,
};

pub const struct_SDL_CommonEvent = extern struct {
    type: u32,
    timestamp: u32,
};
pub const SDL_CommonEvent = struct_SDL_CommonEvent;

pub const struct_SDL_WindowEvent = extern struct {
    type: u32,
    timestamp: u32,
    windowID: u32,
    event: u8,
    padding1: u8,
    padding2: u8,
    padding3: u8,
    data1: i32,
    data2: i32,
};
pub const SDL_WindowEvent = struct_SDL_WindowEvent;

pub const struct_SDL_KeyboardEvent = extern struct {
    type: u32,
    timestamp: u32,
    windowID: u32,
    state: u8,
    repeat: u8,
    padding2: u8,
    padding3: u8,
    keysym: SDL_Keysym,
};
pub const SDL_KeyboardEvent = struct_SDL_KeyboardEvent;

pub const struct_SDL_TextEditingEvent = extern struct {
    type: u32,
    timestamp: u32,
    windowID: u32,
    text: [32]u8,
    start: i32,
    length: i32,
};
pub const SDL_TextEditingEvent = struct_SDL_TextEditingEvent;

pub const struct_SDL_TextInputEvent = extern struct {
    type: u32,
    timestamp: u32,
    windowID: u32,
    text: [32]u8,
};
pub const SDL_TextInputEvent = struct_SDL_TextInputEvent;

pub const struct_SDL_MouseMotionEvent = extern struct {
    type: u32,
    timestamp: u32,
    windowID: u32,
    which: u32,
    state: u32,
    x: i32,
    y: i32,
    xrel: i32,
    yrel: i32,
};
pub const SDL_MouseMotionEvent = struct_SDL_MouseMotionEvent;

pub const struct_SDL_MouseButtonEvent = extern struct {
    type: u32,
    timestamp: u32,
    windowID: u32,
    which: u32,
    button: u8,
    state: u8,
    clicks: u8,
    padding1: u8,
    x: i32,
    y: i32,
};
pub const SDL_MouseButtonEvent = struct_SDL_MouseButtonEvent;

pub const struct_SDL_MouseWheelEvent = extern struct {
    type: u32,
    timestamp: u32,
    windowID: u32,
    which: u32,
    x: i32,
    y: i32,
    direction: u32,
};
pub const SDL_MouseWheelEvent = struct_SDL_MouseWheelEvent;

pub const struct_SDL_JoyAxisEvent = extern struct {
    type: u32,
    timestamp: u32,
    which: SDL_JoystickID,
    axis: u8,
    padding1: u8,
    padding2: u8,
    padding3: u8,
    value: i16,
    padding4: u16,
};
pub const SDL_JoyAxisEvent = struct_SDL_JoyAxisEvent;

pub const struct_SDL_JoyBallEvent = extern struct {
    type: u32,
    timestamp: u32,
    which: SDL_JoystickID,
    ball: u8,
    padding1: u8,
    padding2: u8,
    padding3: u8,
    xrel: i16,
    yrel: i16,
};
pub const SDL_JoyBallEvent = struct_SDL_JoyBallEvent;

pub const struct_SDL_JoyHatEvent = extern struct {
    type: u32,
    timestamp: u32,
    which: SDL_JoystickID,
    hat: u8,
    value: u8,
    padding1: u8,
    padding2: u8,
};
pub const SDL_JoyHatEvent = struct_SDL_JoyHatEvent;

pub const struct_SDL_JoyButtonEvent = extern struct {
    type: u32,
    timestamp: u32,
    which: SDL_JoystickID,
    button: u8,
    state: u8,
    padding1: u8,
    padding2: u8,
};
pub const SDL_JoyButtonEvent = struct_SDL_JoyButtonEvent;

pub const struct_SDL_JoyDeviceEvent = extern struct {
    type: u32,
    timestamp: u32,
    which: i32,
};
pub const SDL_JoyDeviceEvent = struct_SDL_JoyDeviceEvent;

pub const struct_SDL_ControllerAxisEvent = extern struct {
    type: u32,
    timestamp: u32,
    which: SDL_JoystickID,
    axis: u8,
    padding1: u8,
    padding2: u8,
    padding3: u8,
    value: i16,
    padding4: u16,
};
pub const SDL_ControllerAxisEvent = struct_SDL_ControllerAxisEvent;

pub const struct_SDL_ControllerButtonEvent = extern struct {
    type: u32,
    timestamp: u32,
    which: SDL_JoystickID,
    button: u8,
    state: u8,
    padding1: u8,
    padding2: u8,
};
pub const SDL_ControllerButtonEvent = struct_SDL_ControllerButtonEvent;

pub const struct_SDL_ControllerDeviceEvent = extern struct {
    type: u32,
    timestamp: u32,
    which: i32,
};
pub const SDL_ControllerDeviceEvent = struct_SDL_ControllerDeviceEvent;

pub const struct_SDL_AudioDeviceEvent = extern struct {
    type: u32,
    timestamp: u32,
    which: u32,
    iscapture: u8,
    padding1: u8,
    padding2: u8,
    padding3: u8,
};
pub const SDL_AudioDeviceEvent = struct_SDL_AudioDeviceEvent;

pub const struct_SDL_TouchFingerEvent = extern struct {
    type: u32,
    timestamp: u32,
    touchId: SDL_TouchID,
    fingerId: SDL_FingerID,
    x: f32,
    y: f32,
    dx: f32,
    dy: f32,
    pressure: f32,
};
pub const SDL_TouchFingerEvent = struct_SDL_TouchFingerEvent;

pub const struct_SDL_MultiGestureEvent = extern struct {
    type: u32,
    timestamp: u32,
    touchId: SDL_TouchID,
    dTheta: f32,
    dDist: f32,
    x: f32,
    y: f32,
    numFingers: u16,
    padding: u16,
};
pub const SDL_MultiGestureEvent = struct_SDL_MultiGestureEvent;

pub const struct_SDL_DollarGestureEvent = extern struct {
    type: u32,
    timestamp: u32,
    touchId: SDL_TouchID,
    gestureId: SDL_GestureID,
    numFingers: u32,
    @"error": f32,
    x: f32,
    y: f32,
};
pub const SDL_DollarGestureEvent = struct_SDL_DollarGestureEvent;

pub const struct_SDL_DropEvent = extern struct {
    type: u32,
    timestamp: u32,
    file: ?[*]u8,
    windowID: u32,
};
pub const SDL_DropEvent = struct_SDL_DropEvent;

pub const struct_SDL_QuitEvent = extern struct {
    type: u32,
    timestamp: u32,
};
pub const SDL_QuitEvent = struct_SDL_QuitEvent;

pub const struct_SDL_OSEvent = extern struct {
    type: u32,
    timestamp: u32,
};
pub const SDL_OSEvent = struct_SDL_OSEvent;

pub const struct_SDL_UserEvent = extern struct {
    type: u32,
    timestamp: u32,
    windowID: u32,
    code: i32,
    data1: ?*c_void,
    data2: ?*c_void,
};
pub const SDL_UserEvent = struct_SDL_UserEvent;

const SDL_SysWMmsg = @import("SDL_syswm.zig").SDL_SysWMmsg;

pub const struct_SDL_SysWMEvent = extern struct {
    type: u32,
    timestamp: u32,
    msg: ?*SDL_SysWMmsg,
};
pub const SDL_SysWMEvent = struct_SDL_SysWMEvent;

pub const union_SDL_Event = extern union {
    type: u32,
    common: SDL_CommonEvent,
    window: SDL_WindowEvent,
    key: SDL_KeyboardEvent,
    edit: SDL_TextEditingEvent,
    text: SDL_TextInputEvent,
    motion: SDL_MouseMotionEvent,
    button: SDL_MouseButtonEvent,
    wheel: SDL_MouseWheelEvent,
    jaxis: SDL_JoyAxisEvent,
    jball: SDL_JoyBallEvent,
    jhat: SDL_JoyHatEvent,
    jbutton: SDL_JoyButtonEvent,
    jdevice: SDL_JoyDeviceEvent,
    caxis: SDL_ControllerAxisEvent,
    cbutton: SDL_ControllerButtonEvent,
    cdevice: SDL_ControllerDeviceEvent,
    adevice: SDL_AudioDeviceEvent,
    quit: SDL_QuitEvent,
    user: SDL_UserEvent,
    syswm: SDL_SysWMEvent,
    tfinger: SDL_TouchFingerEvent,
    mgesture: SDL_MultiGestureEvent,
    dgesture: SDL_DollarGestureEvent,
    drop: SDL_DropEvent,
    padding: [56]u8,
};
pub const SDL_Event = union_SDL_Event;

pub const SDL_ADDEVENT = 0;
pub const SDL_PEEKEVENT = 1;
pub const SDL_GETEVENT = 2;
pub const SDL_eventaction = extern enum {
    SDL_ADDEVENT = 0,
    SDL_PEEKEVENT = 1,
    SDL_GETEVENT = 2,
};

pub const SDL_GestureID = i64;
pub const SDL_TouchID = i64;
pub const SDL_FingerID = i64;
pub const SDL_Finger = struct_SDL_Finger;
pub const struct_SDL_Finger = extern struct {
    id: SDL_FingerID,
    x: f32,
    y: f32,
    pressure: f32,
};

pub const SDL_EventFilter = ?extern fn (?*c_void, ?*SDL_Event) c_int;

pub extern fn SDL_AddEventWatch(filter: SDL_EventFilter, userdata: ?*c_void) void;
pub extern fn SDL_DelEventWatch(filter: SDL_EventFilter, userdata: ?*c_void) void;
pub extern fn SDL_EventState(type_0: u32, state: c_int) u8;
pub extern fn SDL_FilterEvents(filter: SDL_EventFilter, userdata: ?*c_void) void;
pub extern fn SDL_FlushEvents(minType: u32, maxType: u32) void;
pub extern fn SDL_FlushEvent(type_0: u32) void;
pub extern fn SDL_GetEventFilter(filter: *SDL_EventFilter, userdata: ?*?*c_void) SDL_bool;
pub extern fn SDL_GetNumTouchDevices() c_int;
pub extern fn SDL_GetNumTouchFingers(touchID: SDL_TouchID) c_int;
pub extern fn SDL_GetTouchDevice(index_0: c_int) SDL_TouchID;
pub extern fn SDL_GetTouchFinger(touchID: SDL_TouchID, index_0: c_int) ?[*]SDL_Finger;
pub extern fn SDL_HasEvents(minType: u32, maxType: u32) SDL_bool;
pub extern fn SDL_HasEvent(type_0: u32) SDL_bool;
pub extern fn SDL_LoadDollarTemplates(touchId: SDL_TouchID, src: ?[*]SDL_RWops) c_int;
pub extern fn SDL_PeepEvents(events: ?[*]SDL_Event, numevents: c_int, action: SDL_eventaction, minType: u32, maxType: u32) c_int;
pub extern fn SDL_PollEvent(event: ?*SDL_Event) c_int;
pub extern fn SDL_PumpEvents() void;
pub extern fn SDL_PushEvent(event: *SDL_Event) c_int;
pub extern fn SDL_RecordGesture(touchId: SDL_TouchID) c_int;
pub extern fn SDL_RegisterEvents(numevents: c_int) u32;
pub extern fn SDL_SaveAllDollarTemplates(dst: *SDL_RWops) c_int;
pub extern fn SDL_SaveDollarTemplate(gestureId: SDL_GestureID, dst: *SDL_RWops) c_int;
pub extern fn SDL_SetEventFilter(filter: SDL_EventFilter, userdata: ?*c_void) void;
pub extern fn SDL_WaitEvent(event: ?*SDL_Event) c_int;
pub extern fn SDL_WaitEventTimeout(event: ?*SDL_Event, timeout: c_int) c_int;
