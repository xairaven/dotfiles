**Clean solution:** Installing `rust` by using MSYS2 and without M$ SDK stuff, so completely GNU toolchain:

1. Install rust via rustup and choose "stable-x86_64-pc-windows-gnu" toolchain.
    ```
    rustup toolchain install stable-gnu
    ```

2. Install msys2: https://www.msys2.org/

3. Open the msys2: `C:\msys64\msys2.exe`

4. Install the gnu stuff (incl. gcc linker) by entering:
    ```
    pacman-key --init
    pacman-key --populate msys2
    pacman -S mingw-w64-x86_64-gcc
    ```

5. So now the gcc linker should be there:
    `C:\msys64\mingw64\bin\gcc.exe`

6. Just switch to windows command prompt and go to `C:\msys64\mingw64\bin\` and execute `gcc.exe --version`. <br> The output should be something like this:

    ```
    C:\msys64>gcc --version
    gcc (Rev2, Built by MSYS2 project) 14.2.0
    Copyright (C) 2024 Free Software Foundation, Inc.
    This is free software; see the source for copying conditions.  There is NO
    warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
    ```

7. So, now you have to set the `PATH` variable, so that `rust` can find the `gcc.exe`

    ```
    set PATH=%PATH%;C:\msys64\mingw64\bin
    ```

8. Set environment variable `RUSTFLAGS`:

    ```
    set RUSTFLAGS=-C linker=x86_64-w64-mingw32-gcc
    ```

And now you are hopefully happy.

*Credits: https://github.com/emilk/egui/issues/2856#issuecomment-2555858990*