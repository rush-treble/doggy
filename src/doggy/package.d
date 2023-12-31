module doggy;

public import doggy.error;

public static import window = doggy.window;
public static import console = doggy.console;
public static import render = doggy.render;
public import doggy.message_box;

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

    window.create("Doggy: An Engine", 800, 600);
    render.init();

    // Success! Return 1
    return 1;
}
