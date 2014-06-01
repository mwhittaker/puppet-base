include pip

class mongo {
    package { "mongodb":
        ensure => "installed";
    }

    file { "/home/vagrant/.mongorc.js":
        owner => 'vagrant',
        group => 'vagrant',
        mode  => '0644',
        source => 'puppet:///modules/mongo/mongorc.js';
    }

    package { "pymongo":
        ensure   => "installed",
        provider => "pip",
        require  => Class["pip"];
    }

    package { "robomongo":
        ensure => "installed";
    }
}
