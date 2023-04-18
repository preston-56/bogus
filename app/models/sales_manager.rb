class SalesManager < ApplicationRecord
    has_secure_password
    has_many :merchandisers
    has_many :route_plans
end
