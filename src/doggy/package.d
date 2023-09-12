module doggy;

import std.stdio;

public import doggy.error;

int init()
{
  import bindbc.sdl;
  
  try
  {
    version(linux)
    { 
      SDLSupport ret = loadSDL();
    }
    version(Windows)
    {
      SDLSupport ret = loadSDL("libs/sdl2.dll");
    }
    
    if(ret != sdlSupport)
    {
      if(ret == SDLSupport.noLibrary)
      {
        throw new SdlLoadException("SDL library failed to load; no library found");
      }
      else if(ret == SDLSupport.badLibrary)
      {
        throw new SdlLoadException("SDL library found, but bad version; likely lower SDL version than expected");
      }
    }
  }
  catch (SdlLoadException e)
  {
    return 0;
  }
  
  return 1;
}
