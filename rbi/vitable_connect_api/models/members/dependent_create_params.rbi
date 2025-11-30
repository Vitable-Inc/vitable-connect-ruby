# typed: strong

module VitableConnectAPI
  module Models
    module Members
      class DependentCreateParams < VitableConnectAPI::Internal::Type::BaseModel
        extend VitableConnectAPI::Internal::Type::RequestParameters::Converter
        include VitableConnectAPI::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              VitableConnectAPI::Members::DependentCreateParams,
              VitableConnectAPI::Internal::AnyHash
            )
          end

        # Date of birth (YYYY-MM-DD)
        sig { returns(Date) }
        attr_accessor :date_of_birth

        # Dependent's legal first name
        sig { returns(String) }
        attr_accessor :first_name

        # Dependent's legal last name
        sig { returns(String) }
        attr_accessor :last_name

        # - `Spouse` - Spouse
        # - `Child` - Child
        sig { returns(VitableConnectAPI::Members::Relationship::OrSymbol) }
        attr_accessor :relationship

        # - `Male` - Male
        # - `Female` - Female
        # - `Other` - Other
        # - `Unknown` - Unknown
        sig { returns(VitableConnectAPI::Sex::OrSymbol) }
        attr_accessor :sex

        # Gender identity
        sig { returns(T.nilable(String)) }
        attr_accessor :gender

        # Social Security Number (optional, XXX-XX-XXXX or XXXXXXXXX)
        sig { returns(T.nilable(String)) }
        attr_accessor :ssn

        # Name suffix (Jr., Sr., III)
        sig { returns(T.nilable(String)) }
        attr_accessor :suffix

        sig do
          params(
            date_of_birth: Date,
            first_name: String,
            last_name: String,
            relationship: VitableConnectAPI::Members::Relationship::OrSymbol,
            sex: VitableConnectAPI::Sex::OrSymbol,
            gender: T.nilable(String),
            ssn: T.nilable(String),
            suffix: T.nilable(String),
            request_options: VitableConnectAPI::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Date of birth (YYYY-MM-DD)
          date_of_birth:,
          # Dependent's legal first name
          first_name:,
          # Dependent's legal last name
          last_name:,
          # - `Spouse` - Spouse
          # - `Child` - Child
          relationship:,
          # - `Male` - Male
          # - `Female` - Female
          # - `Other` - Other
          # - `Unknown` - Unknown
          sex:,
          # Gender identity
          gender: nil,
          # Social Security Number (optional, XXX-XX-XXXX or XXXXXXXXX)
          ssn: nil,
          # Name suffix (Jr., Sr., III)
          suffix: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              date_of_birth: Date,
              first_name: String,
              last_name: String,
              relationship: VitableConnectAPI::Members::Relationship::OrSymbol,
              sex: VitableConnectAPI::Sex::OrSymbol,
              gender: T.nilable(String),
              ssn: T.nilable(String),
              suffix: T.nilable(String),
              request_options: VitableConnectAPI::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
