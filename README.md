# Robot Docker

Executor for Robot Framework tests. Based on python alpine image

> Avaliable for python2(2.7) and python3(3.7.4)

# Build

```bash
docker build -t robotdocker <pythonX>
```

# Execution Examples

## via Run

For UI test execution Selenium Grid should be configured first

```bash
docker run -v ${PATH_TO_TESTS}:/user/local -it ${ROBOTDOCKER_IMAGE} bash -c "robot/pybot [OPTIONS] ${PATH_TO_TEST_CASES}"
```

## via Compose

```
  rf_runner:
    image: macejiko/robotdocker
    volumes:
      - ${PATH_TO_TESTS}:/user/local
    command: >
      sh -c "
      robot/pabot test_cases/"
```

# Future plans

- Add entrypoint

