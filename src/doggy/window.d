module doggy.window;

import bindbc.sdl;

SDL_Window* window_ptr;

// SDL_CreateWindow
int create(string title, int width, int height)
{
    // Create the SDL window
    window_ptr = SDL_CreateWindow(cast(const(char)*) title, 
            SDL_WINDOWPOS_UNDEFINED,
            SDL_WINDOWPOS_UNDEFINED, 
            width, 
            height, 
            SDL_WINDOW_SHOWN);

    // Return 0 on fail, 1 on succeed 
    if (window_ptr == null)
    {
        return 0;
    }
    return 1;
}

string get_title()
{
    import std.conv;

    return to!string(SDL_GetWindowTitle(window_ptr));
}

// SDL_SetWindowTitle
void set_title(string title)
{
    SDL_SetWindowTitle(window_ptr, cast(const(char)*) title);
}

// SDL_GetWindowSize
int get_width()
{
    int w;
    SDL_GetWindowSize(window_ptr, &w, null);
    return w;
}

int get_height()
{
    int h;
    SDL_GetWindowSize(window_ptr, null, &h);
    return h;
}

// SDL_SetWindowSize
void set_size(int width, int height)
{
    SDL_SetWindowSize(window_ptr, width, height);
}

void set_width(int width)
{
    set_size(width, get_height());
}

void set_height(int height)
{
    set_size(get_width(), height);
}

// SDL_SetWindowAlwaysOnTop
void set_always_on_top(bool on_top)
{
    // SDL_SetWindowAlwaysOnTop(window_ptr, on_top);
}

// SDL_SetWindowBordered
void set_bordered(bool bordered)
{
    SDL_SetWindowBordered(window_ptr, bordered);
}

// SDL_SetWindowFullscreen
void set_fullscreen_real()
{
    SDL_SetWindowFullscreen(window_ptr, SDL_WINDOW_FULLSCREEN);
}

void set_fullscreen_borderless()
{
    SDL_SetWindowFullscreen(window_ptr, SDL_WINDOW_FULLSCREEN_DESKTOP);
}

void set_windowed()
{
    SDL_SetWindowFullscreen(window_ptr, 0);
}

// SDL_GetWindowPosition
int get_position_x()
{
    int x;
    SDL_GetWindowPosition(window_ptr, &x, null);
    return x;
}

int get_position_y()
{
    int y;
    SDL_GetWindowPosition(window_ptr, &y, null);
    return y;
}

// SDL_SetWindowPosition
void set_position(int x, int y)
{
    SDL_SetWindowPosition(window_ptr, x, y);
}

void set_position_x(int x)
{
    SDL_SetWindowPosition(window_ptr, x, SDL_WINDOWPOS_UNDEFINED);
}

void set_position_y(int y)
{
    SDL_SetWindowPosition(window_ptr, SDL_WINDOWPOS_UNDEFINED, y);
}

// SDL_SetWindowResizable
void set_resizable(bool resizable)
{
    SDL_SetWindowResizable(window_ptr, resizable);
}

// TODO: SDL_GetWindowBrightness
// TODO: SDL_SetWindowBrightness
// TODO: SDL_GetWindowData
// TODO: SDL_SetWindowData
// TODO: SDL_GetWindowDisplayMode
// TODO: SDL_SetWindowDisplayMode
// TODO: SDL_SetWindowGammaRamp
// TODO: SDL_SetWindowGrab
// TODO: SDL_SetWindowHitTest
// TODO: SDL_SetWindowIcon
// TODO: SDL_SetWindowInputFocus
// TODO: SDL_GetWindowKeyboardGrab
// TODO: SDL_SetWindowKeyboardGrab
// TODO: SDL_GetWindowMaximumSize
// TODO: SDL_SetWindowMaximumSize
// TODO: SDL_GetWindowMinimumSize
// TODO: SDL_SetWindowMinimumSize
// TODO: SDL_SetWindowModalFor
// TODO: SDL_GetWindowMouseGrab
// TODO: SDL_SetWindowMouseGrab
// TODO: SDL_GetWindowMouseRect
// TODO: SDL_SetWindowMouseRect
// TODO: SDL_GetWindowOpacity
// TODO: SDL_SetWindowOpacity
// TODO: SDL_SetWindowShape
// TODO: SDL_SetWindowsMessageHook
