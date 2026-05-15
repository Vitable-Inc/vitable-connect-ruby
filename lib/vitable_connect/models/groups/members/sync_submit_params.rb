# frozen_string_literal: true

module VitableConnect
  module Models
    module Groups
      module Members
        # @see VitableConnect::Resources::Groups::Members::Sync#submit
        class SyncSubmitParams < VitableConnect::Internal::Type::BaseModel
          extend VitableConnect::Internal::Type::RequestParameters::Converter
          include VitableConnect::Internal::Type::RequestParameters

          # @!attribute group_id
          #   Unique group identifier (grp\_\*)
          #
          #   @return [String]
          required :group_id, String

          # @!attribute members
          #
          #   @return [Array<VitableConnect::Models::Groups::Members::SyncSubmitParams::Member>]
          required :members,
                   -> { VitableConnect::Internal::Type::ArrayOf[VitableConnect::Groups::Members::SyncSubmitParams::Member] }

          # @!method initialize(group_id:, members:, request_options: {})
          #   @param group_id [String] Unique group identifier (grp\_\*)
          #
          #   @param members [Array<VitableConnect::Models::Groups::Members::SyncSubmitParams::Member>]
          #
          #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]

          class Member < VitableConnect::Internal::Type::BaseModel
            # @!attribute address
            #
            #   @return [VitableConnect::Models::Groups::Members::SyncSubmitParams::Member::Address]
            required :address, -> { VitableConnect::Groups::Members::SyncSubmitParams::Member::Address }

            # @!attribute date_of_birth
            #
            #   @return [Date]
            required :date_of_birth, Date

            # @!attribute first_name
            #
            #   @return [String]
            required :first_name, String

            # @!attribute last_name
            #
            #   @return [String]
            required :last_name, String

            # @!attribute phone
            #
            #   @return [String]
            required :phone, String

            # @!attribute plan_id
            #
            #   @return [String]
            required :plan_id, String

            # @!attribute reference_id
            #
            #   @return [String]
            required :reference_id, String

            # @!attribute email
            #
            #   @return [String, nil]
            optional :email, String, nil?: true

            # @!method initialize(address:, date_of_birth:, first_name:, last_name:, phone:, plan_id:, reference_id:, email: nil)
            #   @param address [VitableConnect::Models::Groups::Members::SyncSubmitParams::Member::Address]
            #   @param date_of_birth [Date]
            #   @param first_name [String]
            #   @param last_name [String]
            #   @param phone [String]
            #   @param plan_id [String]
            #   @param reference_id [String]
            #   @param email [String, nil]

            # @see VitableConnect::Models::Groups::Members::SyncSubmitParams::Member#address
            class Address < VitableConnect::Internal::Type::BaseModel
              # @!attribute address_line_1
              #
              #   @return [String]
              required :address_line_1, String

              # @!attribute city
              #
              #   @return [String]
              required :city, String

              # @!attribute state
              #
              #   @return [String]
              required :state, String

              # @!attribute zipcode
              #
              #   @return [String]
              required :zipcode, String

              # @!attribute address_line_2
              #
              #   @return [String, nil]
              optional :address_line_2, String, nil?: true

              # @!method initialize(address_line_1:, city:, state:, zipcode:, address_line_2: nil)
              #   @param address_line_1 [String]
              #   @param city [String]
              #   @param state [String]
              #   @param zipcode [String]
              #   @param address_line_2 [String, nil]
            end
          end
        end
      end
    end
  end
end
