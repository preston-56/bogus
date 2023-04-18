class RoutePlan < ApplicationRecord
  belongs_to :salesManager
  has_many :route_plan_details
  has_many :merchandisers
end
