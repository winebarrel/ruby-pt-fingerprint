# ruby-pt-fingerprint

## Build C Shared Library

```sh
make
```

## Usage

```ruby
# gem install ffi
require './pt_fingerprint'

p PtFingerprint.fingerprint('select 1')
#=> "select ?"
```
