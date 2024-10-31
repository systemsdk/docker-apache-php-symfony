# Testing
This document describing how you can run tests within this environment.

### General
This environment contains next [types](https://symfony.com/doc/current/testing.html#types-of-tests) of tests:

* Application tests (TODO: Implement it)
* Integration tests (TODO: Implement it)
* Unit tests (TODO: Implement it)

All tests relies to [PHPUnit](https://phpunit.de/) library.

Note 1: Please note that this environment does not use simple phpunit as does Symfony by default, that's why symfony container shell `./bin/phpunit` command is not exist.

Note 2: `Application` test === `Functional` test, please use naming convention(`Application`) as described [here](https://symfony.com/doc/current/testing.html#application-tests).

### Commands to run tests
You can run tests using following local shell command(s):
```bash
make phpunit    # Run all tests
```

After execution above local shell command you are able to check code coverage report. Please open `reports/coverage/index.html` with your browser.

If you want to run single test or all tests in specified directory you can use next steps:

1.Use next local shell command in order to enter into symfony container shell:
```bash
make ssh    # Enter symfony container shell
```
2.Use next symfony container shell command(s) in order to run test(s):
```bash
./vendor/bin/phpunit ./tests/Application/Controller/ApiKeyControllerTest.php  # Just this single test class
./vendor/bin/phpunit ./tests/Application/Controller/                          # All tests in this directory
```

### Separate environment for testing
By default this environment is using separate database for testing.
If you need to change separate environment for testing (f.e. change database or another stuff) you need to edit `.env.test` file.


## Metrics
This environment contains [PhpMetrics](https://github.com/phpmetrics/phpmetrics) to make some code analysis.
Use next local shell command in order to run it:
```bash
make phpmetrics
```
Note: You need run tests before this local shell command.

After execution above local shell command please open `reports/phpmetrics/index.html` with your browser.

## PhpStorm
You can run tests directly from your IDE PhpStorm. Please follow [PhpStorm](phpstorm.md) documentation in order to do it.
