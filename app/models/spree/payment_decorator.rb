Spree::Payment.class_eval do
  validates :response_code, uniqueness: true
end
