class AdvertisingOrder < ApplicationRecord
    mount_uploader :ad_image, AdImageUploader
end
