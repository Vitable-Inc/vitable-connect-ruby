# frozen_string_literal: true

module VitablePartnerAPI
  class Client < VitablePartnerAPI::Internal::Transport::BaseClient
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
      {production: "https://api.vitablehealth.com", environment_1: "https://api-staging.vitablehealth.com"}
    # rubocop:enable Style/MutableConstant

    # Partner API key for external integrations
    # @return [String]
    attr_reader :api_key

    # @return [VitablePartnerAPI::Resources::Employers]
    attr_reader :employers

    # @return [VitablePartnerAPI::Resources::Employees]
    attr_reader :employees

    # @return [VitablePartnerAPI::Resources::Dependents]
    attr_reader :dependents

    # @return [VitablePartnerAPI::Resources::BenefitProducts]
    attr_reader :benefit_products

    # @return [VitablePartnerAPI::Resources::PlanYears]
    attr_reader :plan_years

    # @return [VitablePartnerAPI::Resources::Enrollments]
    attr_reader :enrollments

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_headers
      return {} if @api_key.nil?

      {"authorization" => "Bearer #{@api_key}"}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param api_key [String, nil] Partner API key for external integrations Defaults to `ENV["VITABLE_API_KEY"]`
    #
    # @param environment [:production, :environment_1, nil] Specifies the environment to use for the API.
    #
    # Each environment maps to a different base URL:
    #
    # - `production` corresponds to `https://api.vitablehealth.com`
    # - `environment_1` corresponds to `https://api-staging.vitablehealth.com`
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
      api_key: ENV["VITABLE_API_KEY"],
      environment: nil,
      base_url: ENV["VITABLE_CONNECT_API_BASE_URL"],
      max_retries: self.class::DEFAULT_MAX_RETRIES,
      timeout: self.class::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: self.class::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: self.class::DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= VitablePartnerAPI::Client::ENVIRONMENTS.fetch(environment&.to_sym || :production) do
        message = "environment must be one of #{VitablePartnerAPI::Client::ENVIRONMENTS.keys}, got #{environment}"
        raise ArgumentError.new(message)
      end

      if api_key.nil?
        raise ArgumentError.new("api_key is required, and can be set via environ: \"VITABLE_API_KEY\"")
      end

      @api_key = api_key.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay
      )

      @employers = VitablePartnerAPI::Resources::Employers.new(client: self)
      @employees = VitablePartnerAPI::Resources::Employees.new(client: self)
      @dependents = VitablePartnerAPI::Resources::Dependents.new(client: self)
      @benefit_products = VitablePartnerAPI::Resources::BenefitProducts.new(client: self)
      @plan_years = VitablePartnerAPI::Resources::PlanYears.new(client: self)
      @enrollments = VitablePartnerAPI::Resources::Enrollments.new(client: self)
    end
  end
end
