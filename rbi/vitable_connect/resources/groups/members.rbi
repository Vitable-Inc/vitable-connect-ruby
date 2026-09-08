# typed: strong

module VitableConnect
  module Resources
    class Groups
      class Members
        sig { returns(VitableConnect::Resources::Groups::Members::Sync) }
        attr_reader :sync

        # @api private
        sig { params(client: VitableConnect::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
