class PostImage < ApplicationRecord
  has_one_attached :image
  belongs_to :user

  def get_image
    if image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.png')
      image.attach(io:File.open(file_path),filename:'defalt-image.png', content_type: 'image/png')
    end
    image
  end
end
