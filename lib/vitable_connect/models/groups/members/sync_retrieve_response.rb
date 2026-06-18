# frozen_string_literal: true

module VitableConnect
  module Models
    module Groups
      module Members
        # @see VitableConnect::Resources::Groups::Members::Sync#retrieve
        class SyncRetrieveResponse < VitableConnect::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data]
          required :data, -> { VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data }

          # @!method initialize(data:)
          #   Response containing a single group member sync request detail resource.
          #
          #   @param data [VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data]

          # @see VitableConnect::Models::Groups::Members::SyncRetrieveResponse#data
          class Data < VitableConnect::Internal::Type::BaseModel
            # @!attribute accepted_at
            #
            #   @return [Time]
            required :accepted_at, Time

            # @!attribute completed_at
            #
            #   @return [Time, nil]
            required :completed_at, Time, nil?: true

            # @!attribute group_id
            #
            #   @return [String]
            required :group_id, String

            # @!attribute request_id
            #
            #   @return [String]
            required :request_id, String

            # @!attribute results
            #
            #   @return [VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data::Results, nil]
            required :results,
                     -> { VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data::Results },
                     nil?: true

            # @!method initialize(accepted_at:, completed_at:, group_id:, request_id:, results:)
            #   @param accepted_at [Time]
            #   @param completed_at [Time, nil]
            #   @param group_id [String]
            #   @param request_id [String]
            #   @param results [VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data::Results, nil]

            # @see VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data#results
            class Results < VitableConnect::Internal::Type::BaseModel
              # @!attribute added_group_member_ids
              #
              #   @return [Array<String>]
              required :added_group_member_ids, VitableConnect::Internal::Type::ArrayOf[String]

              # @!attribute failures
              #
              #   @return [Array<VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data::Results::Failure>]
              required :failures,
                       -> { VitableConnect::Internal::Type::ArrayOf[VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data::Results::Failure] }

              # @!attribute removed_group_member_ids
              #
              #   @return [Array<String>]
              required :removed_group_member_ids, VitableConnect::Internal::Type::ArrayOf[String]

              # @!method initialize(added_group_member_ids:, failures:, removed_group_member_ids:)
              #   @param added_group_member_ids [Array<String>]
              #   @param failures [Array<VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data::Results::Failure>]
              #   @param removed_group_member_ids [Array<String>]

              class Failure < VitableConnect::Internal::Type::BaseModel
                # @!attribute operation
                #   - `add` - add
                #   - `remove` - remove
                #
                #   @return [Symbol, VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data::Results::Failure::Operation]
                required :operation,
                         enum: -> { VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data::Results::Failure::Operation }

                # @!attribute reason
                #
                #   @return [String]
                required :reason, String

                # @!attribute reference_id
                #
                #   @return [String]
                required :reference_id, String

                # @!method initialize(operation:, reason:, reference_id:)
                #   Some parameter documentations has been truncated, see
                #   {VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data::Results::Failure}
                #   for more details.
                #
                #   @param operation [Symbol, VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data::Results::Failure::Operation] - `add` - add
                #
                #   @param reason [String]
                #
                #   @param reference_id [String]

                # - `add` - add
                # - `remove` - remove
                #
                # @see VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data::Results::Failure#operation
                module Operation
                  extend VitableConnect::Internal::Type::Enum

                  ADD = :add
                  REMOVE = :remove

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end
            end
          end
        end
      end
    end
  end
end
