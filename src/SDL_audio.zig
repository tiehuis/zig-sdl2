pub const SDL_AudioCallback = ?extern fn (?*c_void, ?[*]u8, c_int) void;
pub const SDL_AudioFilter = ?extern fn (?*struct_SDL_AudioCVT, SDL_AudioFormat) void;

pub const SDL_AudioFormat = u16;
pub const SDL_AudioDeviceID = u32;

pub const SDL_AUDIO_STOPPED = 0;
pub const SDL_AUDIO_PLAYING = 1;
pub const SDL_AUDIO_PAUSED = 2;
pub const SDL_AudioStatus = extern enum {
    SDL_AUDIO_STOPPED = 0,
    SDL_AUDIO_PLAYING = 1,
    SDL_AUDIO_PAUSED = 2,
};

pub const struct_SDL_AudioCVT = extern struct {
    needed: c_int,
    src_format: SDL_AudioFormat,
    dst_format: SDL_AudioFormat,
    rate_incr: f64,
    buf: ?[*]u8,
    len: c_int,
    len_cvt: c_int,
    len_mult: c_int,
    len_ratio: f64,
    filters: [10]SDL_AudioFilter,
    filter_index: c_int,
};
pub const SDL_AudioCVT = struct_SDL_AudioCVT;

pub const struct_SDL_AudioSpec = extern struct {
    freq: c_int,
    format: SDL_AudioFormat,
    channels: u8,
    silence: u8,
    samples: u16,
    padding: u16,
    size: u32,
    callback: SDL_AudioCallback,
    userdata: ?*c_void,
};
pub const SDL_AudioSpec = struct_SDL_AudioSpec;

pub const struct__SDL_AudioStream = @OpaqueType();
pub const SDL_AudioStream = struct__SDL_AudioStream;

pub extern fn SDL_AudioInit(driver_name: [*]const u8) c_int;
pub extern fn SDL_AudioQuit() void;
pub extern fn SDL_AudioStreamAvailable(stream: ?*SDL_AudioStream) c_int;
pub extern fn SDL_AudioStreamClear(stream: ?*SDL_AudioStream) void;
pub extern fn SDL_AudioStreamFlush(stream: ?*SDL_AudioStream) c_int;
pub extern fn SDL_AudioStreamGet(stream: ?*SDL_AudioStream, buf: ?*c_void, len: c_int) c_int;
pub extern fn SDL_AudioStreamPut(stream: ?*SDL_AudioStream, buf: ?*const c_void, len: c_int) c_int;
pub extern fn SDL_BuildAudioCVT(cvt: ?*SDL_AudioCVT, src_format: SDL_AudioFormat, src_channels: u8, src_rate: c_int, dst_format: SDL_AudioFormat, dst_channels: u8, dst_rate: c_int) c_int;
pub extern fn SDL_ClearQueuedAudio(dev: SDL_AudioDeviceID) void;
pub extern fn SDL_CloseAudio() void;
pub extern fn SDL_CloseAudioDevice(dev: SDL_AudioDeviceID) void;
pub extern fn SDL_ConvertAudio(cvt: ?*SDL_AudioCVT) c_int;
pub extern fn SDL_DequeueAudio(dev: SDL_AudioDeviceID, data: ?*c_void, len: u32) u32;
pub extern fn SDL_FreeAudioStream(stream: ?*SDL_AudioStream) void;
pub extern fn SDL_FreeWAV(audio_buf: ?[*]u8) void;
pub extern fn SDL_GetAudioDeviceName(index_0: c_int, iscapture: c_int) ?[*]const u8;
pub extern fn SDL_GetAudioDeviceStatus(dev: SDL_AudioDeviceID) SDL_AudioStatus;
pub extern fn SDL_GetAudioStatus() SDL_AudioStatus;
pub extern fn SDL_GetCurrentAudioDriver() ?[*]const u8;
pub extern fn SDL_GetNumAudioDevices(iscapture: c_int) c_int;
pub extern fn SDL_GetNumAudioDrivers() c_int;
pub extern fn SDL_GetQueuedAudioSize(dev: SDL_AudioDeviceID) u32;
// NOTE: manual
pub inline fn SDL_LoadWAV(file: [*]const u8, spec: *SDL_AudioSpec, audio_buf: [*][*]u8, audio_len: *u32) ?*SDL_AudioSpec {
    return SDL_LoadWAV_RW(SDL_RWFromFile(file, "rb"), 1);
}
pub extern fn SDL_LoadWAV_RW(src: *SDL_RWops, freesrc: c_int, spec: *SDL_AudioSpec, audio_buf: [*][*]u8, audio_len: *u32) ?*SDL_AudioSpec;
pub extern fn SDL_LockAudio() void;
pub extern fn SDL_LockAudioDevice(dev: SDL_AudioDeviceID) void;
pub extern fn SDL_MixAudio(dst: [*]u8, src: [*]const u8, len: u32, volume: c_int) void;
pub extern fn SDL_MixAudioFormat(dst: [*]u8, src: [*]const u8, format: SDL_AudioFormat, len: u32, volume: c_int) void;
pub extern fn SDL_NewAudioStream(src_format: SDL_AudioFormat, src_channels: u8, src_rate: c_int, dst_format: SDL_AudioFormat, dst_channels: u8, dst_rate: c_int) ?*SDL_AudioStream;
pub extern fn SDL_OpenAudio(desired: *SDL_AudioSpec, obtained: ?*SDL_AudioSpec) c_int;
pub extern fn SDL_OpenAudioDevice(device: ?[*]const u8, iscapture: c_int, desired: *const SDL_AudioSpec, obtained: ?*SDL_AudioSpec, allowed_changes: c_int) SDL_AudioDeviceID;
pub extern fn SDL_PauseAudio(pause_on: c_int) void;
pub extern fn SDL_PauseAudioDevice(dev: SDL_AudioDeviceID, pause_on: c_int) void;
pub extern fn SDL_QueueAudio(dev: SDL_AudioDeviceID, data: ?*const c_void, len: u32) c_int;
pub extern fn SDL_UnlockAudio() void;
pub extern fn SDL_UnlockAudioDevice(dev: SDL_AudioDeviceID) void;
pub extern fn SDL_GetAudioDriver(index_0: c_int) ?[*]const u8;
