class Service < ApplicationRecord
  has_many :contents
  enum service_type:  [:live, :vod, :blog]
  scope :actives, ->{ where("active = ?", true) }

end
