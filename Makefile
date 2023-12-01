.PHONY: test
test:
	dictu tests/runTests.du

.PHONY: clean
clean:
	rm -f test.db
