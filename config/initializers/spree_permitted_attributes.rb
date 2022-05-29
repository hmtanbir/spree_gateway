module Spree
  module PermittedAttributes
    @@source_attributes += %i[account_number routing_number account_holder_type account_holder_name status]
    @@payment_attributes += %i[routing_number account_number response_code digital_wallet_number]
  end
end
