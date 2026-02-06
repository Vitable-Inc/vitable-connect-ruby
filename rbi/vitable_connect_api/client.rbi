# typed: strong

module VitableConnectAPI
  class Client < VitableConnectAPI::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    ENVIRONMENTS =
      T.let(
        {
          production: "https://api.vitablehealth.com",
          environment_1: "https://api.uat.vitablehealth.com"
        },
        T::Hash[Symbol, String]
      )

    # API Key authentication using Bearer token in Authorization header
    sig { returns(String) }
    attr_reader :api_key

    sig { returns(VitableConnectAPI::Resources::BenefitEligibilityPolicy) }
    attr_reader :benefit_eligibility_policy

    sig { returns(VitableConnectAPI::Resources::BenefitProducts) }
    attr_reader :benefit_products

    sig { returns(VitableConnectAPI::Resources::Dependents) }
    attr_reader :dependents

    sig { returns(VitableConnectAPI::Resources::Employees) }
    attr_reader :employees

    sig { returns(VitableConnectAPI::Resources::Employers) }
    attr_reader :employers

    sig { returns(VitableConnectAPI::Resources::Enrollments) }
    attr_reader :enrollments

    sig { returns(VitableConnectAPI::Resources::Members) }
    attr_reader :members

    sig { returns(VitableConnectAPI::Resources::PlanYears) }
    attr_reader :plan_years

    sig { returns(VitableConnectAPI::Resources::QualifyingLifeEvents) }
    attr_reader :qualifying_life_events

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        api_key: T.nilable(String),
        environment: T.nilable(T.any(Symbol, String)),
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      ).returns(T.attached_class)
    end
    def self.new(
      # API Key authentication using Bearer token in Authorization header Defaults to
      # `ENV["VITABLE_connect_API_API_KEY"]`
      api_key: ENV["VITABLE_connect_API_API_KEY"],
      # Specifies the environment to use for the API.
      #
      # Each environment maps to a different base URL:
      #
      # - `production` corresponds to `https://api.vitablehealth.com`
      # - `environment_1` corresponds to `https://api.uat.vitablehealth.com`
      environment: nil,
      # Override the default base URL for the API, e.g.,
      # `"https://api.example.com/v2/"`. Defaults to
      # `ENV["VITABLE_CONNECT_API_BASE_URL"]`
      base_url: ENV["VITABLE_CONNECT_API_BASE_URL"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: VitableConnectAPI::Client::DEFAULT_MAX_RETRIES,
      timeout: VitableConnectAPI::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: VitableConnectAPI::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: VitableConnectAPI::Client::DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
