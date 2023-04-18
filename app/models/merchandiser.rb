class Merchandiser < ApplicationRecord
  has_secure_password
  belongs_to :salesManager
  belongs_to :route_plan
  has_many :route_plan_details
  has_many :gps_logs
end
