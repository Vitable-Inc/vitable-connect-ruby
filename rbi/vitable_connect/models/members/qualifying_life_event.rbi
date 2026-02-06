# typed: strong

module VitableConnect
  module Models
    module Members
      class QualifyingLifeEvent < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Members::QualifyingLifeEvent,
              VitableConnect::Internal::AnyHash
            )
          end

        # Unique QLE identifier with 'qle\_' prefix
        sig { returns(String) }
        attr_accessor :id

        # Timestamp when the QLE was created
        sig { returns(Time) }
        attr_accessor :created_at

        # ID of the employee (empl\_\*)
        sig { returns(String) }
        attr_accessor :employee_id

        # End of the special enrollment period (typically 30-60 days from event)
        sig { returns(Time) }
        attr_accessor :enrollment_window_end

        # Start of the special enrollment period
        sig { returns(Time) }
        attr_accessor :enrollment_window_start

        # Date when the qualifying life event occurred
        sig { returns(Date) }
        attr_accessor :event_date

        # Type of qualifying life event (e.g., 'marriage', 'birth', 'adoption',
        # 'loss_of_coverage', 'divorce')
        sig { returns(String) }
        attr_accessor :event_type

        # ID of the member experiencing the life event (mbr\_\*)
        sig { returns(String) }
        attr_accessor :member_id

        # - `pending` - Pending
        # - `approved` - Approved
        # - `denied` - Denied
        sig do
          returns(
            VitableConnect::Members::QualifyingLifeEventStatus::TaggedSymbol
          )
        end
        attr_accessor :status

        # Timestamp when the QLE was last updated
        sig { returns(Time) }
        attr_accessor :updated_at

        # Additional notes or comments about the QLE
        sig { returns(T.nilable(String)) }
        attr_accessor :notes

        # Timestamp when the QLE was reviewed, if reviewed
        sig { returns(T.nilable(Time)) }
        attr_accessor :reviewed_at

        # ID of the user who reviewed the QLE, if reviewed
        sig { returns(T.nilable(String)) }
        attr_accessor :reviewed_by

        # Serializer for Qualifying Life Event entity in public API responses.
        #
        # QLEs are significant life changes (marriage, birth, adoption, loss of coverage)
        # that allow employees to modify benefit elections outside of open enrollment.
        sig do
          params(
            id: String,
            created_at: Time,
            employee_id: String,
            enrollment_window_end: Time,
            enrollment_window_start: Time,
            event_date: Date,
            event_type: String,
            member_id: String,
            status:
              VitableConnect::Members::QualifyingLifeEventStatus::OrSymbol,
            updated_at: Time,
            notes: T.nilable(String),
            reviewed_at: T.nilable(Time),
            reviewed_by: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique QLE identifier with 'qle\_' prefix
          id:,
          # Timestamp when the QLE was created
          created_at:,
          # ID of the employee (empl\_\*)
          employee_id:,
          # End of the special enrollment period (typically 30-60 days from event)
          enrollment_window_end:,
          # Start of the special enrollment period
          enrollment_window_start:,
          # Date when the qualifying life event occurred
          event_date:,
          # Type of qualifying life event (e.g., 'marriage', 'birth', 'adoption',
          # 'loss_of_coverage', 'divorce')
          event_type:,
          # ID of the member experiencing the life event (mbr\_\*)
          member_id:,
          # - `pending` - Pending
          # - `approved` - Approved
          # - `denied` - Denied
          status:,
          # Timestamp when the QLE was last updated
          updated_at:,
          # Additional notes or comments about the QLE
          notes: nil,
          # Timestamp when the QLE was reviewed, if reviewed
          reviewed_at: nil,
          # ID of the user who reviewed the QLE, if reviewed
          reviewed_by: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              employee_id: String,
              enrollment_window_end: Time,
              enrollment_window_start: Time,
              event_date: Date,
              event_type: String,
              member_id: String,
              status:
                VitableConnect::Members::QualifyingLifeEventStatus::TaggedSymbol,
              updated_at: Time,
              notes: T.nilable(String),
              reviewed_at: T.nilable(Time),
              reviewed_by: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
