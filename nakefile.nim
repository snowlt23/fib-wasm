
import nake
import os

task "build-js", "copy html to public":
  copyFile "fibonacci.html", "public/fib-js.html"

task "build-c", "build wasm of C":
  discard execShellCmd "emcc -s WASM=1 -O3 -o public/fib-c.html fibonacci.c"

task "build-rust", "build wasm of Rust":
  discard execShellCmd "rustc -O --target=wasm32-unknown-emscripten -o public/fib-rust.html fibonacci.rs"

task "build-nim", "build wasm of Nim":
  discard execShellCmd "nim c -d:release -d:emscripten -o:public/fib-nim.html fibonacci.nim"

task "copy-pages", "":
  copyFile "index.html", "public/index.html"

task "build", "build all":
  runTask "build-js"
  runTask "build-c"
  runTask "build-rust"
  runTask "build-nim"
  runTask "copy-pages"

task "server", "run static file providing server for wasm":
  discard execShellCmd "nim c -r -d:release server.nim"
