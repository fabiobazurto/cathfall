class Content < ApplicationRecord
  enum protocol:  [:hls, :dash, :mp4]
  belongs_to :service
end
