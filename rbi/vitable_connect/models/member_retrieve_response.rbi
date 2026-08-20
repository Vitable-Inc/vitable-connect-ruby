# typed: strong

module VitableConnect
  module Models
    class MemberRetrieveResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::Models::MemberRetrieveResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      # A member's profile: identity, contact details, address, demographics, and
      # onboarding status.
      sig { returns(VitableConnect::Models::MemberRetrieveResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: VitableConnect::Models::MemberRetrieveResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      # Response containing a single member resource.
      sig do
        params(
          data: VitableConnect::Models::MemberRetrieveResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A member's profile: identity, contact details, address, demographics, and
        # onboarding status.
        data:
      )
      end

      sig do
        override.returns(
          { data: VitableConnect::Models::MemberRetrieveResponse::Data }
        )
      end
      def to_hash
      end

      class Data < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Models::MemberRetrieveResponse::Data,
              VitableConnect::Internal::AnyHash
            )
          end

        # Member's age in years, derived from date of birth
        sig { returns(Integer) }
        attr_accessor :age

        # Date of birth (YYYY-MM-DD)
        sig { returns(Date) }
        attr_accessor :date_of_birth

        # Member's legal first name
        sig { returns(String) }
        attr_accessor :first_name

        # Member's legal last name
        sig { returns(String) }
        attr_accessor :last_name

        # Member's residential address
        sig do
          returns(
            T.nilable(
              VitableConnect::Models::MemberRetrieveResponse::Data::Address
            )
          )
        end
        attr_reader :address

        sig do
          params(
            address:
              T.nilable(
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::OrHash
              )
          ).void
        end
        attr_writer :address

        # Email address
        sig { returns(T.nilable(String)) }
        attr_accessor :email

        # Phone number (10-digit US domestic string)
        sig { returns(T.nilable(String)) }
        attr_accessor :phone

        # Member's preferred language code (e.g., en, es)
        sig { returns(T.nilable(String)) }
        attr_accessor :preferred_language

        # Sex assigned at birth, if provided
        sig { returns(T.nilable(String)) }
        attr_accessor :sex_at_birth

        # Whether the member uses tobacco, if known
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :tobacco_status

        # Unique member identifier with 'mbr\_' prefix
        sig { returns(String) }
        attr_accessor :id

        # Member's full name
        sig { returns(String) }
        attr_accessor :name

        # Member profile status (onboarded or pending onboarding)
        sig do
          returns(
            VitableConnect::Models::MemberRetrieveResponse::Data::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # A member's profile: identity, contact details, address, demographics, and
        # onboarding status.
        sig do
          params(
            id: String,
            age: Integer,
            date_of_birth: Date,
            first_name: String,
            last_name: String,
            name: String,
            status:
              VitableConnect::Models::MemberRetrieveResponse::Data::Status::OrSymbol,
            address:
              T.nilable(
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::OrHash
              ),
            email: T.nilable(String),
            phone: T.nilable(String),
            preferred_language: T.nilable(String),
            sex_at_birth: T.nilable(String),
            tobacco_status: T.nilable(T::Boolean)
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique member identifier with 'mbr\_' prefix
          id:,
          # Member's age in years, derived from date of birth
          age:,
          # Date of birth (YYYY-MM-DD)
          date_of_birth:,
          # Member's legal first name
          first_name:,
          # Member's legal last name
          last_name:,
          # Member's full name
          name:,
          # Member profile status (onboarded or pending onboarding)
          status:,
          # Member's residential address
          address: nil,
          # Email address
          email: nil,
          # Phone number (10-digit US domestic string)
          phone: nil,
          # Member's preferred language code (e.g., en, es)
          preferred_language: nil,
          # Sex assigned at birth, if provided
          sex_at_birth: nil,
          # Whether the member uses tobacco, if known
          tobacco_status: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              age: Integer,
              date_of_birth: Date,
              first_name: String,
              last_name: String,
              name: String,
              status:
                VitableConnect::Models::MemberRetrieveResponse::Data::Status::TaggedSymbol,
              address:
                T.nilable(
                  VitableConnect::Models::MemberRetrieveResponse::Data::Address
                ),
              email: T.nilable(String),
              phone: T.nilable(String),
              preferred_language: T.nilable(String),
              sex_at_birth: T.nilable(String),
              tobacco_status: T.nilable(T::Boolean)
            }
          )
        end
        def to_hash
        end

        # Member profile status (onboarded or pending onboarding)
        module Status
          extend VitableConnect::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                VitableConnect::Models::MemberRetrieveResponse::Data::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONBOARDED =
            T.let(
              :onboarded,
              VitableConnect::Models::MemberRetrieveResponse::Data::Status::TaggedSymbol
            )
          PENDING_ONBOARDING =
            T.let(
              :pending_onboarding,
              VitableConnect::Models::MemberRetrieveResponse::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitableConnect::Models::MemberRetrieveResponse::Data::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Address < VitableConnect::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                VitableConnect::Models::MemberRetrieveResponse::Data::Address,
                VitableConnect::Internal::AnyHash
              )
            end

          # Primary street address
          sig { returns(String) }
          attr_accessor :address_line_1

          # City name
          sig { returns(String) }
          attr_accessor :city

          # Two-letter state code (e.g., CA, NY)
          sig { returns(String) }
          attr_accessor :state

          # ZIP code (5 or 9 digit)
          sig { returns(String) }
          attr_accessor :zipcode

          # Secondary street address (apt, suite, etc.)
          sig { returns(T.nilable(String)) }
          attr_accessor :address_line_2

          # Member's residential address
          sig do
            params(
              address_line_1: String,
              city: String,
              state: String,
              zipcode: String,
              address_line_2: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Primary street address
            address_line_1:,
            # City name
            city:,
            # Two-letter state code (e.g., CA, NY)
            state:,
            # ZIP code (5 or 9 digit)
            zipcode:,
            # Secondary street address (apt, suite, etc.)
            address_line_2: nil
          )
          end

          sig do
            override.returns(
              {
                address_line_1: String,
                city: String,
                state: String,
                zipcode: String,
                address_line_2: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
