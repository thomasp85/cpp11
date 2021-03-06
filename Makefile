all:
	@echo "make: Entering directory 'cpp11test/src'"
	tools/compile-demangle
	@echo "make: Leaving directory 'cpp11test/src'"

test: all
	@echo "make: Entering directory 'cpp11test/tests/testthat'"
	@Rscript -e 'devtools::test("cpp11test")'
	@echo "make: Leaving directory 'cpp11test/tests/testthat'"

clean:
	@Rscript -e 'devtools::clean_dll()'
