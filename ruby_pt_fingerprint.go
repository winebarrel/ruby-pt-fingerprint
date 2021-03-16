package main

import "C"
import "github.com/percona/go-mysql/query"

//export Fingerprint
func Fingerprint(cq *C.char) *C.char {
	q := C.GoString(cq)
	f := query.Fingerprint(q)
	return C.CString(f)
}

func main() {}
