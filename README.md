# Build container
`docker build -t my_ruby_app .`
# Run test
`docker run -v $(pwd):/app my_ruby_app`