class verilog {
    package { "iverilog":
        ensure => "installed";
    }

    package { "gtkwave":
        ensure => "installed";
    }
}
