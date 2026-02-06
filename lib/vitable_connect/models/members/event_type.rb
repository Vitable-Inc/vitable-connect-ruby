# frozen_string_literal: true

module VitableConnect
  module Models
    module Members
      # - `Marriage` - Marriage
      # - `Birth` - Birth
      # - `Adoption` - Adoption
      # - `Divorce` - Divorce
      # - `Death` - Death
      # - `Job Loss` - Job Loss
      # - `Reduction In Hours` - Reduction In Hours
      # - `Employer Bankruptcy` - Employer Bankruptcy
      # - `Medicare Entitlement` - Medicare Entitlement
      # - `Termination` - Termination
      # - `Other` - Other
      module EventType
        extend VitableConnect::Internal::Type::Enum

        MARRIAGE = :Marriage
        BIRTH = :Birth
        ADOPTION = :Adoption
        DIVORCE = :Divorce
        DEATH = :Death
        JOB_LOSS = :"Job Loss"
        REDUCTION_IN_HOURS = :"Reduction In Hours"
        EMPLOYER_BANKRUPTCY = :"Employer Bankruptcy"
        MEDICARE_ENTITLEMENT = :"Medicare Entitlement"
        TERMINATION = :Termination
        OTHER = :Other

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
