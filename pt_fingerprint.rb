require 'ffi'

module PtFingerprint
  module LIBC
    extend FFI::Library
    ffi_lib FFI::Platform::LIBC
    attach_function :free, [:pointer], :void
  end

  extend FFI::Library
  ffi_lib 'ruby_pt_fingerprint.so'
  attach_function :fingerprint0, :Fingerprint, [:string], :strptr

  def fingerprint(q)
    f, ptr = self.fingerprint0(q)
    f
  ensure
    LIBC.free(ptr)
  end
  module_function :fingerprint
end
