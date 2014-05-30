include pip

class pygments {
    package { "pygments":
        ensure   => "installed",
        provider => "pip";
    }
}
