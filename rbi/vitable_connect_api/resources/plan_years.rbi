# typed: strong

module VitableConnectAPI
  module Resources
    class PlanYears
      # Retrieves detailed configuration for a specific plan year by ID. Returns
      # coverage dates, open enrollment period, available plans, and contribution
      # structure.
      sig do
        params(
          plan_year_id: String,
          request_options: VitableConnectAPI::RequestOptions::OrHash
        ).returns(VitableConnectAPI::BenefitProducts::PlanYear)
      end
      def retrieve(
        # Unique plan year identifier (plyr\_\*)
        plan_year_id,
        request_options: {}
      )
      end

      # Updates an existing plan year's configuration. Important: Plan years can only be
      # edited until open enrollment starts. All fields are optional. Monetary values
      # must be in cents.
      sig do
        params(
          plan_year_id: String,
          contribution_classes:
            T.nilable(
              T::Array[
                VitableConnectAPI::PlanYearUpdateParams::ContributionClass::OrHash
              ]
            ),
          open_enrollment_end: T.nilable(Date),
          open_enrollment_start: T.nilable(Date),
          status: T.nilable(String),
          request_options: VitableConnectAPI::RequestOptions::OrHash
        ).returns(VitableConnectAPI::BenefitProducts::PlanYear)
      end
      def update(
        # Unique plan year identifier (plyr\_\*)
        plan_year_id,
        # Updated contribution classes
        contribution_classes: nil,
        # Open enrollment end date
        open_enrollment_end: nil,
        # Open enrollment start date
        open_enrollment_start: nil,
        # Plan year status
        status: nil,
        request_options: {}
      )
      end

      # @api private
      sig do
        params(client: VitableConnectAPI::Client).returns(T.attached_class)
      end
      def self.new(client:)
      end
    end
  end
end
