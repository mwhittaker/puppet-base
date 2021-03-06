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
include emacs
include gvim
include git
include chromium
include curl
include valgrind
include rust
include golang
include pip
include python
include ocaml
include opam
include latex
include evince
include ruby
include nodejs
include jekyll
include tree
include mongo
include verilog
include tmux
