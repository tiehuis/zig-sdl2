// NOTE: manual
pub inline fn SDL_MostSignificantBitIndex32(x: u32) c_int {
    return if (x == 0) -1 else 31 - @clz(x);
}
