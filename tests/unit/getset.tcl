start_server {tags {"getset"}} {
 test {GETSET - get and set} {
        r set x foobar
        set v1 [r get x]
        r set x fb1
        set v2 [r get x]
        list $v1 $v2
    } {foobar fb1}

    test {GET - get without set} {
        set v1 [ r get qx]
        list $v1
    } {{}}
}