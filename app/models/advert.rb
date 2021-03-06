class Advert < ActiveRecord::Base

  has_attached_file :image,
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
    :dropbox_options => {environment: ENV["RACK_ENV"]},
    :styles => {:medium => "376x250>", :thumb => "50x50>" }
end
