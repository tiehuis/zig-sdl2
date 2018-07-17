pub const SDL_POWERSTATE_UNKNOWN = 0;
pub const SDL_POWERSTATE_ON_BATTERY = 1;
pub const SDL_POWERSTATE_NO_BATTERY = 2;
pub const SDL_POWERSTATE_CHARGING = 3;
pub const SDL_POWERSTATE_CHARGED = 4;
pub const SDL_PowerState = extern enum {
    SDL_POWERSTATE_UNKNOWN = 0,
    SDL_POWERSTATE_ON_BATTERY = 1,
    SDL_POWERSTATE_NO_BATTERY = 2,
    SDL_POWERSTATE_CHARGING = 3,
    SDL_POWERSTATE_CHARGED = 4,
};

pub extern fn SDL_GetPowerInfo(secs: ?*c_int, pct: ?*c_int) SDL_PowerState;
