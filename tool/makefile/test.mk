.PHONY: test

test:
	@dart test --concurrency=6 --coverage=./coverage --reporter=expanded test/leetcode_test.dart