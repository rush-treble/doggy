# doggy
a retro-styled game engine in D developed in my spare time

## Status
currently i am just getting started. please do not PR unless you are correcting mistakes or optimizing things, thank you! discussion is welcome but i am currently in the baby steps of this project :)

## Goals
- provide a basic retro-styled game engine for people who are looking to "just make a game". fast, simple, and free.
- make the source code easily editable so that should anyone see this work and think "would be nice if it had X", they can add it themselves without having to worry about asking me or making a pull request.
- software rendering so it can run on all kinds of different hardware, while using the gpu if available to increase performance
  - preferably, add an OpenGL renderer for access to shaders and such at some point
- desktop cross-platform (Windows, Linux) with other platforms considered when i figure them out
- bake accessibility features into the engine such as providing an easy way to add captions to audio playback, easy input remapping + multiple input sources to one "player", text to speech, colorblind testing build into the renderer itself, and whatever else seems reasonable to implement on an engine-level. provide examples for things i can't implement on an engine level
- try to implement as much as i can myself to avoid dependencies such as math, 3D rendering, also to learn lots!

## Setup
you will need:
- [D, the programming language](https://dlang.org/)
  - i would recommend not using the install script, it was annoying on my end and resulted in weird errors sometimes. the rpm worked perfect for me.
- SDL development libraries
  - todo: explain exactly how to get these properly
