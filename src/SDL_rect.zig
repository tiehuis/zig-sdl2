use @import("SDL_stdinc.zig");

pub const struct_SDL_Point = extern struct {
    x: c_int,
    y: c_int,
};
pub const SDL_Point = struct_SDL_Point;

pub const struct_SDL_Rect = extern struct {
    x: c_int,
    y: c_int,
    w: c_int,
    h: c_int,
};
pub const SDL_Rect = struct_SDL_Rect;

pub extern fn SDL_EnclosePoints(points: [*]const SDL_Point, count: c_int, clip: ?*const SDL_Rect, result: *SDL_Rect) SDL_bool;
pub extern fn SDL_HasIntersection(A: *const SDL_Rect, B: *const SDL_Rect) SDL_bool;
pub extern fn SDL_IntersectRect(A: *const SDL_Rect, B: *const SDL_Rect, result: *SDL_Rect) SDL_bool;
pub extern fn SDL_IntersectRectAndLine(rect: *const SDL_Rect, X1: *c_int, Y1: *c_int, X2: *c_int, Y2: *c_int) SDL_bool;
pub inline fn SDL_PointInRect(p: *const SDL_Point, r: *const SDL_Rect) SDL_bool {
    return SDL_bool(if ((((p.x >= r.x) and (p.x < (r.x + r.w))) and (p.y >= r.y)) and (p.y < (r.y + r.h))) SDL_TRUE else SDL_FALSE);
}
pub inline fn SDL_RectEmpty(r: *const SDL_Rect) SDL_bool {
    return SDL_bool(if (((!(r != null)) or (r.w <= 0)) or (r.h <= 0)) SDL_TRUE else SDL_FALSE);
}
pub inline fn SDL_RectEquals(a: *const SDL_Rect, b: *const SDL_Rect) SDL_bool {
    return SDL_bool(if (a.x == b.x and a.y == b.y and a.w == b.w and a.h == b.h) SDL_TRUE else SDL_FALSE);
}
pub extern fn SDL_UnionRect(A: *const SDL_Rect, B: *const SDL_Rect, result: *SDL_Rect) void;
