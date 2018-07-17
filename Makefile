all:
	zig build-exe example.zig --library c --library SDL2 --release-fast
