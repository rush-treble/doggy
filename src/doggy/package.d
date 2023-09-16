module doggy;

public import doggy.error;

public static import window = doggy.window;

public static import dev = doggy.dev;

import bindbc.sdl;
import std.stdio;

int init()
{
    // TODO: return some kind of error type (maybe an error enum?)
    try
    {
        // Attempt to load SDL
        version (linux)
        {
            SDLSupport ret = loadSDL();
        }
        version (Windows)
        {
            SDLSupport ret = loadSDL("libs/sdl2.dll");
        }

        // Check how loading SDL went
        if (ret != sdlSupport)
        {
            if (ret == SDLSupport.noLibrary)
            {
                throw new SdlLoadException("SDL library failed to load; no library found");
            }
            else if (ret == SDLSupport.badLibrary)
            {
                throw new SdlLoadException(
                        "SDL library found, but bad version; likely lower SDL version than expected");
            }
        }
    }
    catch (SdlLoadException e)
    {
        // Loading SDL did not go well; return 0 for error
        return 0;
    }

    // Success! Return 1
    return 1;
}
