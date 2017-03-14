
# fib-wasm

This repository is fibonacci benchmark on WASM. (aka WebAsesmbly)

# Build

**Requirements**
- Nim Compiler (testing on devel branch on github)
  - with nimble
- Emscripten (sdk-incoming-64bit)

```
$ nimble install nake
$ nake build
$ nake server
```

Access `localhost:5000` at latest WebBrowser!

