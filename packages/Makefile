.PHONY: build test

dart_get:
	dart pub get

dart_build:
	dart run build_runner build --delete-conflicting-outputs

dart_analyze:
	dart analyze --fatal-infos

dart_test:
	dart test

dart_test:
	dart run $(DART_TEST_DEFINITIONS) tool/tests_setup.dart
	dart test $(DART_TEST_DEFINITIONS)

%:
	@$(MAKE) -f ../../Makefile $@