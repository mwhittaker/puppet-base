# create a new run stage to ensure certain modules are included first
stage { 'pre':
  before => Stage['main']
}

# add the baseconfig module to the new 'pre' run stage
class { 'baseconfig':
  stage => 'pre'
}

include baseconfig
include gpp
include llvm
include vim
include gvim
include git
include chromium
include curl
include valgrind
include rust
include pip
include python
include ocaml
include opam
