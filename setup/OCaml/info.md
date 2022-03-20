OCaml
===

Version: ocamlopt 4.05.0
Path: standard system paths

Provided by: package `opam` (Partial)

Project Link: https://ocaml.org/learn/tutorials/up_and_running.html#For-Linux-and-macOS
Download Link: https://github.com/ocaml/ocaml/archive/4.05.0.tar.gz
Prerequisites: N/A
Installation Notes:

The preferred way is to install opam and then use that to bootstrap a specific 
version of the compiler. Unfortunately, this fails as Ubuntu 16.10 no longer has the
SSL certs necessary for opam to function.

Instead, we download an ocaml source distribution, compile it, then install it to the
appropriate locations.

Other: N/A
