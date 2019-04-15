# Megadrive Skeleton

A basic skeleton for getting started with Sega Megadrive (Genesis) programming. Using the code supplied, this puts the system into a known state ready for programming your game.

To compile into a Megadrive compatible ROM image, use `asm68k.exe` (available from Sonic Retro) like so:

```
asm68k.exe /P program.s,program.bin
```

## Notes

`program.s` is the main "glue" file that pulls the program together.  See the comments in the file for suggestions as to how files should be included into it.

The `main.s` file should contain all the basic logic code, such as main loop, and handling the Interrupt requests for Vblank/HBlank.

`memory.s` should be used to store all the memory allocation required for the program.

The three system files, `vector.s`, `header.s`, and `segainit.s` have been constructed from sources elsewhere. The `segainit.s` file is the code that was recommended from Sega when the Megadrive was current. The **only** changes you will need to make, are to the `header.s` file. Fill in the information for your game into the data structure, following the instructions in the comments, paying close attention to the size of each data structure.

## License

These files are provided as are. Use them as you see fit.