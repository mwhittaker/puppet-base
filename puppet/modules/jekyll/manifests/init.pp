include ruby
include nodejs

class jekyll {
    package { "jekyll":
        ensure   => "installed",
        provider => "gem",
        require  => [Class["ruby"], Class["nodejs"]];
    }
}
