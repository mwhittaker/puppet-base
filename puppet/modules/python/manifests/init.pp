class python {
    $packages = [ 
        "python-numpy",
        "python-scipy",
        "python-matplotlib",
        "ipython" 
    ] 

    package { $packages:
        ensure => "installed"
    }
}
