# typed: strong

module VitableConnect
  class Client < VitableConnect::Internal::Transport::BaseClient
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

    # API Key or Access Token authentication using Bearer token in Authorization
    # header. API keys use the vit*apk* prefix, access tokens use the vit*at* prefix.
    sig { returns(String) }
    attr_reader :api_key

    # Issue short-lived access tokens for scoped API access
    sig { returns(VitableConnect::Resources::Auth) }
    attr_reader :auth

    # Define rules that determine which employees qualify for benefits
    sig { returns(VitableConnect::Resources::BenefitEligibilityPolicies) }
    attr_reader :benefit_eligibility_policies

    sig { returns(VitableConnect::Resources::Employees) }
    attr_reader :employees

    sig { returns(VitableConnect::Resources::Employers) }
    attr_reader :employers

    # Manage benefit enrollments and elections for employees
    sig { returns(VitableConnect::Resources::Enrollments) }
    attr_reader :enrollments

    sig { returns(VitableConnect::Resources::WebhookEvents) }
    attr_reader :webhook_events

    sig { returns(VitableConnect::Resources::Groups) }
    attr_reader :groups

    sig { returns(VitableConnect::Resources::Plans) }
    attr_reader :plans

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

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
      # API Key or Access Token authentication using Bearer token in Authorization
      # header. API keys use the vit*apk* prefix, access tokens use the vit*at* prefix.
      # Defaults to `ENV["VITABLE_CONNECT_API_KEY"]`
      api_key: ENV["VITABLE_CONNECT_API_KEY"],
      # Specifies the environment to use for the API.
      #
      # Each environment maps to a different base URL:
      #
      # - `production` corresponds to `https://api.vitablehealth.com`
      # - `environment_1` corresponds to `https://api.uat.vitablehealth.com`
      environment: nil,
      # Override the default base URL for the API, e.g.,
      # `"https://api.example.com/v2/"`. Defaults to `ENV["VITABLE_CONNECT_BASE_URL"]`
      base_url: ENV["VITABLE_CONNECT_BASE_URL"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: VitableConnect::Client::DEFAULT_MAX_RETRIES,
      timeout: VitableConnect::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: VitableConnect::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: VitableConnect::Client::DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
