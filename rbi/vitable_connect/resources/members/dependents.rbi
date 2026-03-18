# typed: strong

module VitableConnect
  module Resources
    class Members
      class Dependents
        # @api private
        sig { params(client: VitableConnect::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
