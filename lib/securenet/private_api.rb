module Killbill #:nodoc:
  module Securenet #:nodoc:
    class PrivatePaymentPlugin < ::Killbill::Plugin::ActiveMerchant::PrivatePaymentPlugin
      def initialize(session = {})
        super(:securenet,
              ::Killbill::Securenet::SecurenetPaymentMethod,
              ::Killbill::Securenet::SecurenetTransaction,
              ::Killbill::Securenet::SecurenetResponse,
              session)
      end
    end
  end
end
