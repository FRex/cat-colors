# Cat Colors
A set of few scripts to color cat output, just printing an ANSI color code,
calling cat with all provided arguments, then printing ANSI reset code.

Generated using `generate-colored-cat-commands.sh` (also in the repo). Just
`cp cat-* somedir` where `somedir` is some directory in the `PATH`, where
you keep extra scripts, or even `/bin` or `/usr/bin` (not advised), or add
this directory to the `PATH` (this is why `generate-colored-cat-commands.sh`
is not marked executable but all the `cat-*` files are).

**NOTE**: if you use a command that uses both stderr and stdout, sometimes
stderr will be colored as well, in some terminals, because the order of
operations will be:

1. color cat script prints the color start code.
1. the program prints stderr and stdout content.
1. color cat script prints the color end code.
