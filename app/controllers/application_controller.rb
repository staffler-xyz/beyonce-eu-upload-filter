require 'phashion'

class ApplicationController < ActionController::API
  def check
    if !params[:image]
      head(:forbidden)

      return
    end

    image = Phashion::Image.new(params[:image].path)

    Dir.glob("#{Rails.root}/public/images/*.*") do |file|
      orginal_image = Phashion::Image.new(file)

      if image.duplicate?(orginal_image, :threshold => 20)
        head(:forbidden)

        return
      end
    end

    head(:ok)
  end
end
