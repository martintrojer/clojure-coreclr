# Clojure CoreCLR

[Instructions](https://github.com/dotnet/coreclr/wiki/Building-and-Running-CoreCLR-on-Linux)

## Mono

```
root@150fd01b6ee6:~/coreclr-demo# mono ./Clojure.Main.exe
Clojure 1.6.0
user=>
```

## CoreCLR

```
root@150fd01b6ee6:~/coreclr-demo# ./corerun Clojure.Main.exe
Assert failure (unable to format)
/home/matell/git/coreclr/src/utilcode/ccomprc.cpp
false && "UNIXTODO: Implement string loading from resources"
**** MessageBox invoked, title 'Assert failure (unable to format)' ****
  false && "UNIXTODO: Implement string loading from resources"
********

{0x7f1de26fa780-0x7f1de1152020} ASSERT [MISC   ] at /home/matell/git/coreclr/src/pal/src/misc/fmtmessage.cpp.288: Unable to continue due to missing library.
```

[Track issue](https://github.com/dotnet/coreclr/issues/176)
