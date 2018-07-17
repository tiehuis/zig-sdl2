// NOTE: manual
pub inline fn SDL_Swap16(x: u16) u16 {
    return (x << 8) | (x >> 8);
}

pub inline fn SDL_Swap32(x: u32) u32 {
    return (x << 24) | ((x << 8) & 0x00ff0000) | ((x >> 8) & 0x0000ff00) | (x >> 24);
}

pub inline fn SDL_Swap64(x: u64) u64 {
    const hi = @truncate(u32, x >> 32);
    const lo = @truncate(u32, x);

    const r: u64 = SDL_Swap32(lo);
    r <<= 32;
    r |= SDL_Swap32(hi);
    return r;
}

pub inline fn SDL_SwapBE16(x: u16) u16 {
    return switch (builtin.endian) {
        builtin.Endian.Big => SDL_Swap16(x),
        builtin.Endian.Little => x,
    };
}

pub inline fn SDL_SwapBE32(x: u32) u32 {
    return switch (builtin.endian) {
        builtin.Endian.Big => SDL_Swap32(x),
        builtin.Endian.Little => x,
    };
}

pub inline fn SDL_SwapBE64(x: u64) u64 {
    return switch (builtin.endian) {
        builtin.Endian.Big => SDL_Swap64(x),
        builtin.Endian.Little => x,
    };
}

pub inline fn SDL_SwapFloat(x: f32) f32 {
    const r = SDL_Swap32(@bitCast(u32, x));
    return @bitCast(f32, r);
}

pub inline fn SDL_SwapFloatBE(x: f32) f32 {
    return switch (builtin.endian) {
        builtin.Endian.Big => SDL_SwapFloat(x),
        builtin.Endian.Little => x,
    };
}

pub inline fn SDL_SwapFloatLE(x: f32) f32 {
    return switch (builtin.endian) {
        builtin.Endian.Big => x,
        builtin.Endian.Little => SDL_SwapFloat(x),
    };
}

pub inline fn SDL_SwapLE16(x: u16) u16 {
    return switch (builtin.endian) {
        builtin.Endian.Big => x,
        builtin.Endian.Little => SDL_Swap16(x),
    };
}

pub inline fn SDL_SwapLE32(x: u32) u32 {
    return switch (builtin.endian) {
        builtin.Endian.Big => x,
        builtin.Endian.Little => SDL_Swap32(x),
    };
}

pub inline fn SDL_SwapLE64(x: u64) u64 {
    return switch (builtin.endian) {
        builtin.Endian.Big => x,
        builtin.Endian.Little => SDL_Swap64(x),
    };
}
