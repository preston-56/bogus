class RoutePlanDetail < ApplicationRecord
  belongs_to :routePlan
  belongs_to :merchandiser
  belongs_to :outlet
end
