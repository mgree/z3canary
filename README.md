[![Build Status](https://travis-ci.com/mgree/z3canary.svg?branch=master)](https://travis-ci.com/mgree/z3canary)

[z3canary](https://github.com/mgree/z3canary) is a suite of files exercising the Z3 OCaml interface. Travis CI will ensure that we can build and link with the Z3 library appropriately.

Current files:

|File|Description |
|----|------------|
| [basic.ml](https://github.com/mgree/z3canary/blob/master/basic.ml) | creates a single boolean variable |
| [logic.ml](https://github.com/mgree/z3canary/blob/master/logic.ml) | checks that `x XOR y` is satisfiable |
