class Service < ApplicationRecord
  enum service_type:  [:live, :vod, :blog]
  scope :actives, ->{ where("active = ?", true) }

end
