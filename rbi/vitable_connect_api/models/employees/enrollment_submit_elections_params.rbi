# typed: strong

module VitableConnectAPI
  module Models
    module Employees
      class EnrollmentSubmitElectionsParams < VitableConnectAPI::Internal::Type::BaseModel
        extend VitableConnectAPI::Internal::Type::RequestParameters::Converter
        include VitableConnectAPI::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              VitableConnectAPI::Employees::EnrollmentSubmitElectionsParams,
              VitableConnectAPI::Internal::AnyHash
            )
          end

        # List of enrollment elections
        sig do
          returns(
            T::Array[
              VitableConnectAPI::Employees::EnrollmentSubmitElectionsParams::Election
            ]
          )
        end
        attr_accessor :elections

        sig do
          params(
            elections:
              T::Array[
                VitableConnectAPI::Employees::EnrollmentSubmitElectionsParams::Election::OrHash
              ],
            request_options: VitableConnectAPI::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # List of enrollment elections
          elections:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              elections:
                T::Array[
                  VitableConnectAPI::Employees::EnrollmentSubmitElectionsParams::Election
                ],
              request_options: VitableConnectAPI::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Election < VitableConnectAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                VitableConnectAPI::Employees::EnrollmentSubmitElectionsParams::Election,
                VitableConnectAPI::Internal::AnyHash
              )
            end

          # - `Unspecified` - Unspecified
          # - `EE` - Ee
          # - `ES` - Es
          # - `EC` - Ec
          # - `EF` - Ef
          sig { returns(VitableConnectAPI::CoverageTier::OrSymbol) }
          attr_accessor :coverage_tier

          # - `Enrolled` - Enrolled
          # - `Waived` - Waived
          sig do
            returns(
              VitableConnectAPI::Employees::EnrollmentSubmitElectionsParams::Election::Decision::OrSymbol
            )
          end
          attr_accessor :decision

          # ID of the enrollment (enrl\_\*)
          sig { returns(String) }
          attr_accessor :enrollment_id

          # List of dependent IDs to include in coverage (dpnd\_\*)
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :dependent_ids

          # ID of the selected plan (plan\_\*). Required if decision is 'Enrolled'
          sig { returns(T.nilable(String)) }
          attr_accessor :selected_plan_id

          # Individual enrollment election within the batch request.
          sig do
            params(
              coverage_tier: VitableConnectAPI::CoverageTier::OrSymbol,
              decision:
                VitableConnectAPI::Employees::EnrollmentSubmitElectionsParams::Election::Decision::OrSymbol,
              enrollment_id: String,
              dependent_ids: T.nilable(T::Array[String]),
              selected_plan_id: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # - `Unspecified` - Unspecified
            # - `EE` - Ee
            # - `ES` - Es
            # - `EC` - Ec
            # - `EF` - Ef
            coverage_tier:,
            # - `Enrolled` - Enrolled
            # - `Waived` - Waived
            decision:,
            # ID of the enrollment (enrl\_\*)
            enrollment_id:,
            # List of dependent IDs to include in coverage (dpnd\_\*)
            dependent_ids: nil,
            # ID of the selected plan (plan\_\*). Required if decision is 'Enrolled'
            selected_plan_id: nil
          )
          end

          sig do
            override.returns(
              {
                coverage_tier: VitableConnectAPI::CoverageTier::OrSymbol,
                decision:
                  VitableConnectAPI::Employees::EnrollmentSubmitElectionsParams::Election::Decision::OrSymbol,
                enrollment_id: String,
                dependent_ids: T.nilable(T::Array[String]),
                selected_plan_id: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          # - `Enrolled` - Enrolled
          # - `Waived` - Waived
          module Decision
            extend VitableConnectAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  VitableConnectAPI::Employees::EnrollmentSubmitElectionsParams::Election::Decision
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ENROLLED =
              T.let(
                :Enrolled,
                VitableConnectAPI::Employees::EnrollmentSubmitElectionsParams::Election::Decision::TaggedSymbol
              )
            WAIVED =
              T.let(
                :Waived,
                VitableConnectAPI::Employees::EnrollmentSubmitElectionsParams::Election::Decision::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  VitableConnectAPI::Employees::EnrollmentSubmitElectionsParams::Election::Decision::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
