# Vitable Ruby Library

[![fern shield](https://img.shields.io/badge/%F0%9F%8C%BF-Built%20with%20Fern-brightgreen)](https://buildwithfern.com?utm_source=github&utm_medium=github&utm_campaign=readme&utm_source=https%3A%2F%2Fgithub.com%2FVitable-Inc%2Fvitable-connect-ruby)

The Vitable Ruby library provides convenient access to the Vitable APIs from Ruby.

## Table of Contents

- [Documentation](#documentation)
- [Installation](#installation)
- [Reference](#reference)
- [Usage](#usage)
- [Advanced Concepts](#advanced-concepts)
- [Sorbet](#sorbet)
- [Versioning](#versioning)
- [Requirements](#requirements)
- [Environments](#environments)
- [Errors](#errors)
- [Advanced](#advanced)
  - [Retries](#retries)
  - [Timeouts](#timeouts)
  - [Additional Headers](#additional-headers)
  - [Additional Query Parameters](#additional-query-parameters)
- [Contributing](#contributing)

## Documentation

Documentation for releases of this gem can be found [on RubyDoc](https://gemdocs.org/gems/vitable-connect).

The REST API documentation can be found on [vitablehealth.com](https://vitablehealth.com/support).

## Installation

To use this gem, install via Bundler by adding the following to your application's `Gemfile`:

<!-- x-release-please-start-version -->

```ruby
gem "vitable-connect", "~> 0.6.0"
```

<!-- x-release-please-end -->

## Reference

A full reference for this library is available [here](https://github.com/Vitable-Inc/vitable-connect-ruby/blob/HEAD/./reference.md).

## Usage

Instantiate and use the client with the following:

```ruby
require "vitableconnect"

client = VitableConnect::Client.new(api_key: "<token>")

client.auth.issue_access_token(grant_type: "client_credentials")
```

## Advanced concepts

### BaseModel

All parameter and response objects inherit from `VitableConnect::Internal::Type::BaseModel`, which provides several conveniences, including:

1. All fields, including unknown ones, are accessible with `obj[:prop]` syntax, and can be destructured with `obj => {prop: prop}` or pattern-matching syntax.

2. Structural equivalence for equality; if two API calls return the same values, comparing the responses with == will return true.

3. Both instances and the classes themselves can be pretty-printed.

4. Helpers such as `#to_h`, `#deep_to_h`, `#to_json`, and `#to_yaml`.

### Making custom or undocumented requests

#### Undocumented properties

You can send undocumented parameters to any endpoint, and read undocumented response properties, like so:

Note: the `extra_` parameters of the same name overrides the documented parameters.

```ruby
response =
  vitable_connect.auth.issue_access_token(
    grant_type: "client_credentials",
    request_options: {
      extra_query: {my_query_parameter: value},
      extra_body: {my_body_parameter: value},
      extra_headers: {"my-header": value}
    }
  )

puts(response[:my_undocumented_property])
```

#### Undocumented request params

If you want to explicitly send an extra param, you can do so with the `extra_query`, `extra_body`, and `extra_headers` under the `request_options:` parameter when making a request, as seen in the examples above.

#### Undocumented endpoints

To make requests to undocumented endpoints while retaining the benefit of auth, retries, and so on, you can make requests using `client.request`, like so:

```ruby
response = client.request(
  method: :post,
  path: '/undocumented/endpoint',
  query: {"dog": "woof"},
  headers: {"useful-header": "interesting-value"},
  body: {"hello": "world"}
)
```

### Concurrency & connection pooling

The `VitableConnect::Client` instances are threadsafe, but are only are fork-safe when there are no in-flight HTTP requests.

Each instance of `VitableConnect::Client` has its own HTTP connection pool with a default size of 99. As such, we recommend instantiating the client once per application in most settings.

When all available connections from the pool are checked out, requests wait for a new connection to become available, with queue time counting towards the request timeout.

Unless otherwise specified, other classes in the SDK do not have locks protecting their underlying data structure.

## Sorbet

This library provides comprehensive [RBI](https://sorbet.org/docs/rbi) definitions, and has no dependency on sorbet-runtime.

You can provide typesafe request parameters like so:

```ruby
vitable_connect.auth.issue_access_token(grant_type: "client_credentials")
```

Or, equivalently:

```ruby
# Hashes work, but are not typesafe:
vitable_connect.auth.issue_access_token(grant_type: "client_credentials")

# You can also splat a full Params class:
params = VitableConnect::AuthIssueAccessTokenParams.new(grant_type: "client_credentials")
vitable_connect.auth.issue_access_token(**params)
```

### Enums

Since this library does not depend on `sorbet-runtime`, it cannot provide [`T::Enum`](https://sorbet.org/docs/tenum) instances. Instead, we provide "tagged symbols" instead, which is always a primitive at runtime:

```ruby
# :Salary
puts(VitableConnect::EmployeeUpdateParams::CompensationType::SALARY)

# Revealed type: `T.all(VitableConnect::EmployeeUpdateParams::CompensationType, Symbol)`
T.reveal_type(VitableConnect::EmployeeUpdateParams::CompensationType::SALARY)
```

Enum parameters have a "relaxed" type, so you can either pass in enum constants or their literal value:

```ruby
# Using the enum constants preserves the tagged type information:
vitable_connect.employees.update(
  compensation_type: VitableConnect::EmployeeUpdateParams::CompensationType::SALARY,
  # …
)

# Literal values are also permissible:
vitable_connect.employees.update(
  compensation_type: :Salary,
  # …
)
```

## Versioning

This package follows [SemVer](https://semver.org/spec/v2.0.0.html) conventions. As the library is in initial development and has a major version of `0`, APIs may change at any time.

This package considers improvements to the (non-runtime) `*.rbi` and `*.rbs` type definitions to be non-breaking changes.

## Requirements

Ruby 3.2.0 or higher.

## Environments

This SDK allows you to configure different environments or custom URLs for API requests. You can either use the predefined environments or specify your own custom URL.
### Environments
```ruby
require "VitableConnect"

VitableConnect = VitableConnect::Client.new(
    base_url: VitableConnect::Environment::PRODUCTION
)
```

### Custom URL
```ruby
require "VitableConnect"

client = VitableConnect::Client.new(
    base_url: "https://example.com"
)
```

## Errors

Failed API calls will raise errors that can be rescued from granularly.

```ruby
require "VitableConnect"

client = VitableConnect::Client.new(
    base_url: "https://example.com"
)

begin
    result = client.auth.issue_access_token
rescue VitableConnect::Errors::TimeoutError
    puts "API didn't respond before our timeout elapsed"
rescue VitableConnect::Errors::ServiceUnavailableError
    puts "API returned status 503, is probably overloaded, try again later"
rescue VitableConnect::Errors::ServerError
    puts "API returned some other 5xx status, this is probably a bug"
rescue VitableConnect::Errors::ResponseError => e
    puts "API returned an unexpected status other than 5xx: #{e.code} #{e.message}"
rescue VitableConnect::Errors::ApiError => e
    puts "Some other error occurred when calling the API: #{e.message}"
end
```

## Advanced

### Retries

The SDK is instrumented with automatic retries. A request will be retried as long as the request is deemed
retryable and the number of retry attempts has not grown larger than the configured retry limit (default: 2).

A request is deemed retryable when any of the following HTTP status codes is returned:

- [408](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status/408) (Timeout)
- [429](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status/429) (Too Many Requests)
- [5XX](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status#server_error_responses) (Internal Server Error)

The `retryStatusCodes` configuration controls which [5XX](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status#server_error_responses) status codes are retried:

- `legacy` (default): Retries `408`, `429`, `500`, `502`, `503`, `504`, `521`, `522`, `524`
- `recommended`: Retries `408`, `429`, `502`, `503`, `504` only (excludes `500 Internal Server Error` to avoid retrying non-idempotent failures)

Use the `max_retries` option to configure this behavior.

```ruby
require "VitableConnect"

client = VitableConnect::Client.new(
    base_url: "https://example.com",
    max_retries: 3  # Configure max retries (default is 2)
)
```

### Timeouts

The SDK defaults to a 60 second timeout. Use the `timeout` option to configure this behavior.

```ruby
require "VitableConnect"

response = client.auth.issue_access_token(
    ...,
    timeout: 30  # 30 second timeout
)
```

### Additional Headers

If you would like to send additional headers as part of the request, use the `additional_headers` request option.

```ruby
require "VitableConnect"

response = client.auth.issue_access_token(
    ...,
    request_options: {
        additional_headers: {
            "X-Custom-Header" => "custom-value"
        }
    }
)
```

### Additional Query Parameters

If you would like to send additional query parameters as part of the request, use the `additional_query_parameters` request option.

```ruby
require "VitableConnect"

response = client.auth.issue_access_token(
    ...,
    request_options: {
        additional_query_parameters: {
            "custom_param" => "custom-value"
        }
    }
)
```

## Contributing

While we value open-source contributions to this SDK, this library is generated programmatically.
Additions made directly to this library would have to be moved over to our generation code,
otherwise they would be overwritten upon the next generated release. Feel free to open a PR as
a proof of concept, but know that we will not be able to merge it as-is. We suggest opening
an issue first to discuss with us!

On the other hand, contributions to the README are always very welcome!
