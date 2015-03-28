module Killbill #:nodoc:
  module Securenet #:nodoc:
    class SecurenetTransaction < ::Killbill::Plugin::ActiveMerchant::ActiveRecord::Transaction

      self.table_name = 'securenet_transactions'

      belongs_to :securenet_response

    end
  end
end
