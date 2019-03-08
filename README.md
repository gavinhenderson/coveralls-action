# Coveralls GitHub Action
A GitHub action that to send your code coverage to [coveralls.io](https://coveralls.io)

# Usage

You must set a secret the name `REPO_TOKEN` which must be the repo token given to you by Coveralls.

You there must also be an `npm run coverage` script that runs test coverage and then outputs the results to `./coverage/lcov.info`

An example of this would be:

```json
{
  "scripts": {
    "coverage": "jest --coverage"
  },
}
```

