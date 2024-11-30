# The @ silences the command itself from being echoed in the terminal
# but logs and errors will still appear in the terminal
build:
	@go build -o bin/fs # Compiles the Go program into the bin/fs binary

# Run command is dependent on build. Build will run first, then run.
run: build
	@./bin/fs # Executes the compiled binary

# Runs all tests in the module and subpackages.
test:
	# ./... recursively finds all test files (all packages in the module)
	# -v provides verbose output showing test results
	@go test ./... -v

