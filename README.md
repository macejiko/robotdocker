# Robot Docker repo

> This repo describes executor for Robot Framework tests

# Build

```bash
docker build -t robotdocker .
```

# Run

## Template

For UI test execution Selenium Grid should be configured first

```bash
docker run -v ${PATH_TO_TESTS}:/user/local -it ${ROBOTDOCKER_IMAGE} bash -c "pybot [OPTIONS] ${PATH_TO_TEST_CASES}"
```

## via Compose

```
  rf_runner:
    image: macejiko/robotdocker
    volumes:
      - ${PATH_TO_TESTS}:/user/local
    command: >
      bash -c "
      pybot test_cases/"
```

# Future plans

- Make base image as some python2.7 image instead of Ubuntu14.04

