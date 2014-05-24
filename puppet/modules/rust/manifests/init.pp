include git

class rust {
    exec { 'wget-rust': 
        command => "/usr/bin/wget http://static.rust-lang.org/dist/rust-nightly-i686-unknown-linux-gnu.tar.gz",
        cwd     => "/tmp",
        creates => "/tmp/rust-nightly-i686-unknown-linux-gnu.tar.gz";
    }

    exec { "tar-rust":
        command => "/bin/tar -xzvf rust-nightly-i686-unknown-linux-gnu.tar.gz",
        cwd     => "/tmp",
        require => Exec["wget-rust"],
        creates => "/tmp/rust-nightly-i686-unknown-linux-gnu";
    }
    
    exec { "install-rust":
        command => "/tmp/rust-nightly-i686-unknown-linux-gnu/install.sh",
        cwd     => "/tmp",
        require => Exec["tar-rust"]
    }
}
