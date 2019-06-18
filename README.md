This repository contains code to demonstrate an issue I am facing with npm local modules and npm dedupe.

To demonstrate that the structure works it is sufficient to run `make test`.

To demonstrate the issue run `make package`. It will reliably create an ENOENT issue.

![](https://github.com/timcleaver-techconnect/npm-test/blob/master/tty.gif)

Description
-----------

The repository contains 4 modules and a driver application. Each module is trivial. Each module contains
a single function that prints out some data. The dependencies are such that:
```
b --depends on--> a

c --depends on--> a
c --depends on--> b

d --depends on--> a
d --depends on--> b
d --depends on--> c

main --depends on--> a
main --depends on--> b
main --depends on--> c
main --depends on--> d
```
