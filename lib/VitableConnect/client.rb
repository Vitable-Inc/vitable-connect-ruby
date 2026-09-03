# frozen_string_literal: true

module VitableConnect
  class Client
    # @param base_url [String, nil]
    # @param api_key [String]
    # @param max_retries [Integer]
    #
    # @return [void]
    def initialize(base_url: nil, api_key: ENV.fetch("VITABLE_CONNECT_API_KEY", nil), max_retries: 2)
      @raw_client = VitableConnect::Internal::Http::RawClient.new(
        base_url: base_url || VitableConnect::Environment::PRODUCTION,
        headers: {
          "User-Agent" => "vitable-connect/1.0.0",
          "X-Fern-Language" => "Ruby",
          Authorization: "Bearer #{api_key}"
        },
        max_retries: max_retries
      )
    end

    # @return [VitableConnect::Auth::Client]
    def auth
      @auth ||= VitableConnect::Auth::Client.new(client: @raw_client)
    end

    # @return [VitableConnect::Employees::Client]
    def employees
      @employees ||= VitableConnect::Employees::Client.new(client: @raw_client)
    end

    # @return [VitableConnect::Employers::Client]
    def employers
      @employers ||= VitableConnect::Employers::Client.new(client: @raw_client)
    end

    # @return [VitableConnect::Enrollments::Client]
    def enrollments
      @enrollments ||= VitableConnect::Enrollments::Client.new(client: @raw_client)
    end

    # @return [VitableConnect::Groups::Client]
    def groups
      @groups ||= VitableConnect::Groups::Client.new(client: @raw_client)
    end

    # @return [VitableConnect::Members::Client]
    def members
      @members ||= VitableConnect::Members::Client.new(client: @raw_client)
    end

    # @return [VitableConnect::Organizations::Client]
    def organizations
      @organizations ||= VitableConnect::Organizations::Client.new(client: @raw_client)
    end

    # @return [VitableConnect::Plans::Client]
    def plans
      @plans ||= VitableConnect::Plans::Client.new(client: @raw_client)
    end

    # @return [VitableConnect::WebhookEvents::Client]
    def webhook_events
      @webhook_events ||= VitableConnect::WebhookEvents::Client.new(client: @raw_client)
    end
  end
end
