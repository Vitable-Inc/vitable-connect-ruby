# frozen_string_literal: true

module VitableConnectAPI
  class Client < VitableConnectAPI::Internal::Transport::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # rubocop:disable Style/MutableConstant
    # @type [Hash{Symbol=>String}]
    ENVIRONMENTS =
      {production: "https://api.vitablehealth.com", environment_1: "https://api.uat.vitablehealth.com"}
    # rubocop:enable Style/MutableConstant

    # API Key authentication using Bearer token in Authorization header
    # @return [String]
    attr_reader :api_key

    # @return [VitableConnectAPI::Resources::BenefitEligibilityPolicy]
    attr_reader :benefit_eligibility_policy

    # @return [VitableConnectAPI::Resources::BenefitProducts]
    attr_reader :benefit_products

    # @return [VitableConnectAPI::Resources::Dependents]
    attr_reader :dependents

    # @return [VitableConnectAPI::Resources::Employees]
    attr_reader :employees

    # @return [VitableConnectAPI::Resources::Employers]
    attr_reader :employers

    # @return [VitableConnectAPI::Resources::Enrollments]
    attr_reader :enrollments

    # @return [VitableConnectAPI::Resources::Members]
    attr_reader :members

    # @return [VitableConnectAPI::Resources::PlanYears]
    attr_reader :plan_years

    # @return [VitableConnectAPI::Resources::QualifyingLifeEvents]
    attr_reader :qualifying_life_events

    # Creates and returns a new client for interacting with the API.
    #
    # @param api_key [String, nil] API Key authentication using Bearer token in Authorization header Defaults to
    # `ENV["VITABLE_connect_API_API_KEY"]`
    #
    # @param environment [:production, :environment_1, nil] Specifies the environment to use for the API.
    #
    # Each environment maps to a different base URL:
    #
    # - `production` corresponds to `https://api.vitablehealth.com`
    # - `environment_1` corresponds to `https://api.uat.vitablehealth.com`
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g.,
    # `"https://api.example.com/v2/"`. Defaults to
    # `ENV["VITABLE_CONNECT_API_BASE_URL"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    def initialize(
      api_key: ENV["VITABLE_connect_API_API_KEY"],
      environment: nil,
      base_url: ENV["VITABLE_CONNECT_API_BASE_URL"],
      max_retries: self.class::DEFAULT_MAX_RETRIES,
      timeout: self.class::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: self.class::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: self.class::DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= VitableConnectAPI::Client::ENVIRONMENTS.fetch(environment&.to_sym || :production) do
        message = "environment must be one of #{VitableConnectAPI::Client::ENVIRONMENTS.keys}, got #{environment}"
        raise ArgumentError.new(message)
      end

      if api_key.nil?
        raise ArgumentError.new("api_key is required, and can be set via environ: \"VITABLE_connect_API_API_KEY\"")
      end

      @api_key = api_key.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay
      )

      @benefit_eligibility_policy = VitableConnectAPI::Resources::BenefitEligibilityPolicy.new(client: self)
      @benefit_products = VitableConnectAPI::Resources::BenefitProducts.new(client: self)
      @dependents = VitableConnectAPI::Resources::Dependents.new(client: self)
      @employees = VitableConnectAPI::Resources::Employees.new(client: self)
      @employers = VitableConnectAPI::Resources::Employers.new(client: self)
      @enrollments = VitableConnectAPI::Resources::Enrollments.new(client: self)
      @members = VitableConnectAPI::Resources::Members.new(client: self)
      @plan_years = VitableConnectAPI::Resources::PlanYears.new(client: self)
      @qualifying_life_events = VitableConnectAPI::Resources::QualifyingLifeEvents.new(client: self)
    end
  end
end
