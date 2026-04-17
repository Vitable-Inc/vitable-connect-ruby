# Changelog

## 0.3.0 (2026-04-17)

Full Changelog: [v0.2.2...v0.3.0](https://github.com/Vitable-Inc/vitable-connect-ruby/compare/v0.2.2...v0.3.0)

### Features

* **api:** api update ([f0f95aa](https://github.com/Vitable-Inc/vitable-connect-ruby/commit/f0f95aad70b337a6bf9b73b671ffbeb3f082f8d2))


### Bug Fixes

* multipart encoding for file arrays ([89441e1](https://github.com/Vitable-Inc/vitable-connect-ruby/commit/89441e17106f9dcdb74cfb1a0ec5e59a8d2030f5))

## 0.2.2 (2026-04-03)

Full Changelog: [v0.2.1...v0.2.2](https://github.com/Vitable-Inc/vitable-connect-ruby/compare/v0.2.1...v0.2.2)

### Bug Fixes

* align path encoding with RFC 3986 section 3.3 ([8dffaa7](https://github.com/Vitable-Inc/vitable-connect-ruby/commit/8dffaa70c9a25f8c03eab999b3bcfb3eb0b151b8))
* variable name typo ([0c72698](https://github.com/Vitable-Inc/vitable-connect-ruby/commit/0c7269861dfb77cc7b901b63229b420122751cbb))

## 0.2.2 (2026-04-01)

Full Changelog: [v0.2.1...v0.2.2](https://github.com/Vitable-Inc/vitable-connect-ruby/compare/v0.2.1...v0.2.2)

### Bug Fixes

* align path encoding with RFC 3986 section 3.3 ([8dffaa7](https://github.com/Vitable-Inc/vitable-connect-ruby/commit/8dffaa70c9a25f8c03eab999b3bcfb3eb0b151b8))
* variable name typo ([0c72698](https://github.com/Vitable-Inc/vitable-connect-ruby/commit/0c7269861dfb77cc7b901b63229b420122751cbb))

## 0.2.1 (2026-03-28)

Full Changelog: [v0.2.0...v0.2.1](https://github.com/Vitable-Inc/vitable-connect-ruby/compare/v0.2.0...v0.2.1)

### Bug Fixes

* **internal:** correct multipart form field name encoding ([f7a59c7](https://github.com/Vitable-Inc/vitable-connect-ruby/commit/f7a59c7c92beba61c6b100dc2addbd21caec3fe2))


### Chores

* **ci:** support opting out of skipping builds on metadata-only commits ([03e02f9](https://github.com/Vitable-Inc/vitable-connect-ruby/commit/03e02f904a0e295fc0649474366d2b13ac5cc891))

## 0.2.0 (2026-03-25)

Full Changelog: [v0.1.0...v0.2.0](https://github.com/Vitable-Inc/vitable-connect-ruby/compare/v0.1.0...v0.2.0)

### Features

* **api:** api update ([f919311](https://github.com/Vitable-Inc/vitable-connect-ruby/commit/f91931100038a62655c5e06eaa86271babc56d7a))


### Chores

* **ci:** skip lint on metadata-only changes ([f190ebf](https://github.com/Vitable-Inc/vitable-connect-ruby/commit/f190ebfc6a6fb2885813ca931618c615b815d9c5))

## 0.1.0 (2026-03-24)

Full Changelog: [v0.0.1...v0.1.0](https://github.com/Vitable-Inc/vitable-connect-ruby/compare/v0.0.1...v0.1.0)

### Features

* **api:** api update ([827a13a](https://github.com/Vitable-Inc/vitable-connect-ruby/commit/827a13abe88115458aa59f133c130e606b3afa93))
* **api:** api update ([1cb2f40](https://github.com/Vitable-Inc/vitable-connect-ruby/commit/1cb2f403fec39a30b3e88baae6705768a04d91a2))
* **api:** manual updates ([7ab2cca](https://github.com/Vitable-Inc/vitable-connect-ruby/commit/7ab2cca14ded6d972020f7d7cb5b548226bdfaa2))
* **api:** manual updates ([b5d84b3](https://github.com/Vitable-Inc/vitable-connect-ruby/commit/b5d84b3281351c0812a283359af29614f10a37bc))
* **api:** manual updates ([4112807](https://github.com/Vitable-Inc/vitable-connect-ruby/commit/411280760708e521c4e839bb99d987255e822190))
* **api:** manual updates ([3f0e8d2](https://github.com/Vitable-Inc/vitable-connect-ruby/commit/3f0e8d2f1ad97489e1223f7ecc8ea4d53176cbac))
* **api:** manual updates ([3725ee2](https://github.com/Vitable-Inc/vitable-connect-ruby/commit/3725ee2ff330723d7db354d2af67a04b4be79689))
* **api:** manual updates ([b32c0a8](https://github.com/Vitable-Inc/vitable-connect-ruby/commit/b32c0a8ca6b08e57c16c08803091ee4bd8fec197))
* **api:** manual updates for 0.0.1 ([70717d4](https://github.com/Vitable-Inc/vitable-connect-ruby/commit/70717d45c51ee0182197b3bd4927cbe941b4e97d))


### Bug Fixes

* calling `break` out of streams should be instantaneous ([272f56c](https://github.com/Vitable-Inc/vitable-connect-ruby/commit/272f56cfbdc3afbc1be5fa2da5e0d319c226ca31))
* issue where json.parse errors when receiving HTTP 204 with nobody ([2963616](https://github.com/Vitable-Inc/vitable-connect-ruby/commit/2963616266b8a3270dbeaca9fc92d4262fa62bba))
* properly mock time in ruby ci tests ([538449e](https://github.com/Vitable-Inc/vitable-connect-ruby/commit/538449eb15a4824387f38450faede9e1b6f27654))


### Chores

* **ci:** add build step ([d29963c](https://github.com/Vitable-Inc/vitable-connect-ruby/commit/d29963c7fa7db675253a0cd9d50dbb31f333e76d))
* **ci:** skip uploading artifacts on stainless-internal branches ([622b750](https://github.com/Vitable-Inc/vitable-connect-ruby/commit/622b75012ff9163651f822dec45724cb0aff100a))
* configure new SDK language ([f6f5e6d](https://github.com/Vitable-Inc/vitable-connect-ruby/commit/f6f5e6ddceb0184f3386b5d1149bf9126ba11d14))
* **internal:** codegen related update ([7e979b6](https://github.com/Vitable-Inc/vitable-connect-ruby/commit/7e979b64abd445eb49b4b00ca5c5ffc7f4417571))
* **internal:** codegen related update ([6f45271](https://github.com/Vitable-Inc/vitable-connect-ruby/commit/6f45271cab4d4a7d440e7fa416d8097b53854509))
* **internal:** codegen related update ([9a1c31a](https://github.com/Vitable-Inc/vitable-connect-ruby/commit/9a1c31a842d559bafa36fea005f570214cc1ae6f))
* **internal:** remove mock server code ([acd303f](https://github.com/Vitable-Inc/vitable-connect-ruby/commit/acd303fed97b9e4fa22f3d3a00577b004b918a7b))
* **internal:** tweak CI branches ([f15f247](https://github.com/Vitable-Inc/vitable-connect-ruby/commit/f15f2470c09af516a803e66b2bb1b2f852815129))
* **internal:** update gitignore ([1794df6](https://github.com/Vitable-Inc/vitable-connect-ruby/commit/1794df6179afcb62f7c6df4e9e549a54fac57dcd))
* update mock server docs ([26dd24b](https://github.com/Vitable-Inc/vitable-connect-ruby/commit/26dd24b659cfcc7fd0c154090ef650724a07388a))
* update SDK settings ([5413b0a](https://github.com/Vitable-Inc/vitable-connect-ruby/commit/5413b0abb491b9ba0337df43a95241aa74d2cfd3))
