set -e

Foo::Normal:good() {
  # …
  return 0
}

Foo::Normal:bad() {
  # …
  return 86
}
