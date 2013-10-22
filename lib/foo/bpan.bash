source bpan :std

Foo::BPAN:foozle() {
  name=${1:?foozle requires a name}
  [ "$name" == "ingy" ] &&
    die "Never foozle ingy"
  echo O HAI
}
