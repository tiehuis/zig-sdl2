// The source code follows the ApiByCategory section of the docs exactly.
// If it differs at all, there will be a NOTE.

// Basics
pub use @import("SDL.zig");
pub use @import("SDL_hints.zig");
pub use @import("SDL_error.zig");
pub use @import("SDL_log.zig");
pub use @import("SDL_assert.zig");
pub use @import("SDL_version.zig");

// Video
pub use @import("SDL_video.zig");
pub use @import("SDL_render.zig");
pub use @import("SDL_pixels.zig");
pub use @import("SDL_rect.zig");
pub use @import("SDL_surface.zig");
pub use @import("SDL_syswm.zig");
pub use @import("SDL_clipboard.zig");

// Input Events
pub use @import("SDL_events.zig");
pub use @import("SDL_keyboard.zig");
pub use @import("SDL_mouse.zig");
pub use @import("SDL_joystick.zig");
pub use @import("SDL_gamecontroller.zig");

// Force Feedback
pub use @import("SDL_haptic.zig");

// Audio
pub use @import("SDL_audio.zig");

// Threads
pub use @import("SDL_thread.zig");
pub use @import("SDL_mutex.zig");
pub use @import("SDL_atomic.zig");

// Timers
pub use @import("SDL_timer.zig");

// File Abstraction
pub use @import("SDL_filesystem.zig");
pub use @import("SDL_rwops.zig");

// Shared Object Support
pub use @import("SDL_loadso.zig");

// Platform and CPU Information
pub use @import("SDL_platform.zig");
pub use @import("SDL_cpuinfo.zig");
pub use @import("SDL_endian.zig");
pub use @import("SDL_bits.zig");

// Power Management
pub use @import("SDL_power.zig");

// Additional Functionality
pub use @import("SDL_system.zig");
pub use @import("SDL_stdinc.zig");
