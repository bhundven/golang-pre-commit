# Changelog

## [1.2.0] Unreleased

### Bug Fixes
* **go generate:** Hook was calling `pre-commit-hooks/go-build.sh` script. Changed to `pre-commit-hooks/go-generate.sh`.

## [1.1.3](https://github.com/bhundven/golang-pre-commit/compare/v1.1.2...v1.1.3) (2025-02-22)


### Bug Fixes

* **go mod tidy:** Don't pass filenames ([#31](https://github.com/bhundven/golang-pre-commit/issues/31)) ([a53d41a](https://github.com/bhundven/golang-pre-commit/commit/a53d41ac852980c72c8044171a78957b041fb1f0))
* **go-mod-tidy:** go mod tidy recursive ([#29](https://github.com/bhundven/golang-pre-commit/issues/29)) ([c80e381](https://github.com/bhundven/golang-pre-commit/commit/c80e3817788c86fabd0197450b9b18a147f5ae66))

## [1.1.2](https://github.com/bhundven/golang-pre-commit/compare/v1.1.1...v1.1.2) (2025-02-15)


### Bug Fixes

* Make scripts executable ([#27](https://github.com/bhundven/golang-pre-commit/issues/27)) ([285f605](https://github.com/bhundven/golang-pre-commit/commit/285f6054afd02d429fa724016096a0573fae7d28))

## [1.1.1](https://github.com/bhundven/golang-pre-commit/compare/v1.1.0...v1.1.1) (2025-02-08)


### Bug Fixes

* Disable yamllint line-length ([#22](https://github.com/bhundven/golang-pre-commit/issues/22)) ([50d6378](https://github.com/bhundven/golang-pre-commit/commit/50d6378622a71df9ddd4de8033866795cf1bd10a))

## [1.1.0](https://github.com/bhundven/golang-pre-commit/compare/v1.0.1...v1.1.0) (2025-02-08)


### Features

* Add gofumpt ([#20](https://github.com/bhundven/golang-pre-commit/issues/20)) ([adbc2af](https://github.com/bhundven/golang-pre-commit/commit/adbc2af9f7396749627c7c1269c2985a35f6765e))

## [1.0.1](https://github.com/bhundven/golang-pre-commit/compare/v1.0.0...v1.0.1) (2025-02-03)


### Bug Fixes

* Update pre-commit desciptions ([#14](https://github.com/bhundven/golang-pre-commit/issues/14)) ([7ef7239](https://github.com/bhundven/golang-pre-commit/commit/7ef72393fbc53c19501bbad0522e140fb469ad41))

## 1.0.0 (2025-02-02)


### Features

* Add release-please workflow ([46830c9](https://github.com/bhundven/golang-pre-commit/commit/46830c90cf38ca2cbd6940dfc1476b538690d2df))
