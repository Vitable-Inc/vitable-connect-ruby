# frozen_string_literal: true

module VitablePartnerAPI
  module Resources
    class Employees
      # @return [VitablePartnerAPI::Resources::Employees::Dependents]
      attr_reader :dependents

      # @return [VitablePartnerAPI::Resources::Employees::QualifyingLifeEvents]
      attr_reader :qualifying_life_events

      # @return [VitablePartnerAPI::Resources::Employees::Enrollments]
      attr_reader :enrollments

      # Gets a specific Employee for an Employer.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Employee ID (prefixed with empl\_)
      #
      # @param request_options [VitablePartnerAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitablePartnerAPI::Models::Employee]
      #
      # @see VitablePartnerAPI::Models::EmployeeRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["employees/%1$s", id],
          model: VitablePartnerAPI::Employee,
          options: params[:request_options]
        )
      end

      # Updates a specific Employee for an Employer.
      #
      # @overload update(id, date_of_birth: nil, first_name: nil, gender: nil, last_name: nil, sex: nil, start_date: nil, suffix: nil, request_options: {})
      #
      # @param id [String] Employee ID (prefixed with empl\_)
      #
      # @param date_of_birth [Date]
      #
      # @param first_name [String]
      #
      # @param gender [Symbol, VitablePartnerAPI::Models::Employers::UpdateEmployeeRequest::Gender]
      #
      # @param last_name [String]
      #
      # @param sex [Symbol, VitablePartnerAPI::Models::Employers::UpdateEmployeeRequest::Sex]
      #
      # @param start_date [Date]
      #
      # @param suffix [String]
      #
      # @param request_options [VitablePartnerAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitablePartnerAPI::Models::Employee]
      #
      # @see VitablePartnerAPI::Models::EmployeeUpdateParams
      def update(id, params = {})
        parsed, options = VitablePartnerAPI::EmployeeUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["employees/%1$s", id],
          body: parsed,
          model: VitablePartnerAPI::Employee,
          options: options
        )
      end

      # Terminates a specific Employee for an Employer.
      #
      # @overload terminate(id, request_options: {})
      #
      # @param id [String] Employee ID (prefixed with empl\_)
      #
      # @param request_options [VitablePartnerAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see VitablePartnerAPI::Models::EmployeeTerminateParams
      def terminate(id, params = {})
        @client.request(
          method: :delete,
          path: ["employees/%1$s", id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [VitablePartnerAPI::Client]
      def initialize(client:)
        @client = client
        @dependents = VitablePartnerAPI::Resources::Employees::Dependents.new(client: client)
        @qualifying_life_events =
          VitablePartnerAPI::Resources::Employees::QualifyingLifeEvents.new(client: client)
        @enrollments = VitablePartnerAPI::Resources::Employees::Enrollments.new(client: client)
      end
    end
  end
end
