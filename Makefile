lint:
	@go fmt ./...
	@golint ./...
	@go vet ./...

test:
	@go test

cover:
	go test -race -coverprofile=coverage.txt
	go tool cover -html=coverage.txt
	rm coverage.txt

.PHONY: test lint cover
