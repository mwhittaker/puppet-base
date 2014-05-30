class opam {
    package { "opam":
        ensure => "installed";
    }

    exec { "opam-init":
        command     => "/usr/bin/opam init -a",
        user        => "vagrant",
        environment => ["HOME=/home/vagrant"],
        require     => Package["opam"];
    }

    exec { "opam-update":
        command     => "/usr/bin/opam update",
        user        => "vagrant",
        environment => ["HOME=/home/vagrant"],
        require     => Exec["opam-init"];
    }

    exec { "opam-upgrade":
        command     => "/usr/bin/opam upgrade",
        user        => "vagrant",
        environment => ["HOME=/home/vagrant"],
        require     => Exec["opam-update"];
    }

    # ocamlfind dependency
    package { "m4":
        ensure => "installed";
    }

    exec { "opam-packages":
        command     => "/usr/bin/opam install -y utop",
        user        => "vagrant",
        environment => ["HOME=/home/vagrant"],
        timeout     => 3600,
        require     => [Exec["opam-upgrade"], Package["m4"]];
    }
}
