ruby_pt_fingerprint.so: ruby_pt_fingerprint.go
	go build -buildmode=c-shared -o ruby_pt_fingerprint.so ruby_pt_fingerprint.go
