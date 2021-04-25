# example-github-actions-dynamic-matrix

Example of GitHub Actions Workflow which runs a matrix build dynamically according to changed files in the pull request and pull request labels.

This is useful in case of Monorepo.

## Dependencies

* [akoi](https://github.com/suzuki-shunsuke/akoi)
  * [akoi-installer](https://github.com/suzuki-shunsuke/akoi-installer)
* [ci-info](https://github.com/suzuki-shunsuke/ci-info)
* [matchfile](https://github.com/suzuki-shunsuke/matchfile)

## Reference

* GitHub Actions
  * [fromJSON - Example returning a JSON object](https://docs.github.com/en/actions/reference/context-and-expression-syntax-for-github-actions#example-returning-a-json-object)
  * [matrix](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions#jobsjob_idstrategymatrix)
  * [outputs](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions#jobsjob_idoutputs)
  * [needs](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions#jobsjob_idneeds)

## LICENSE

[MIT](LICENSE)
