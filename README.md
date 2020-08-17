# docker-ocamlformat

Docker image to run ocamlformat quickly in CI

Versions available:
- 0.15.0
- 0.14.3
- 0.14.2
- 0.14.1
- 0.14.0

## How to use

In GitLab CI:

```
lint:
  stage: lint
  image: registry.gitlab.com/dannywillems/docker-ocamlformat:0.15.0
  before_script:
    - eval $(opam env)
  script:
    - ocamlformat --check src/*.ml*
    - ocamlformat --check test/*.ml*
```
