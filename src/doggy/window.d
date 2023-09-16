module doggy.window;

import bindbc.sdl;

SDL_Window* window_ptr;

int create(string title, int width, int height)
{
    // Create the SDL window
    window_ptr = SDL_CreateWindow(cast(const(char)*) title, SDL_WINDOWPOS_UNDEFINED,
            SDL_WINDOWPOS_UNDEFINED, width, height, SDL_WINDOW_SHOWN);

    // Return 0 on fail, 1 on succeed 
    if (window_ptr == null)
    {
        return 0;
    }
    return 1;
}
