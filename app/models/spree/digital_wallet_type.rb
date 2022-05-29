module Spree
    class DigitalWalletType < Spree::Base
        enum wallet_type: %w[mobile bank]
    end
end
