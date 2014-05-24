class pip {
    exec { "wget-pip":
        command => "/usr/bin/wget https://bootstrap.pypa.io/get-pip.py",
        creates => "/tmp/get-pip.py",
        cwd     => "/tmp"
    }

    exec { "install-pip":
        command => "/usr/bin/python get-pip.py",
        cwd     => "/tmp"
    }
}
