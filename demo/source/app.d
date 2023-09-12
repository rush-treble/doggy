module doggy_demo;

import doggy;
import std.stdio;

void main()
{
	auto ret = init();
  if(ret == 1)
  {
    writeln("success!");
  }
}
