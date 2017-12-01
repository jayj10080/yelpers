class Avatar < ApplicationRecord
  belongs_to :user
  mount_uploader :avatarpic, AvatarUploader
end
