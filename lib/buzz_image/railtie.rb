class Railtie < Rails::Railtie
  initializer "buzz_image.initialize_buzz_image_helper" do |app|
    ActiveSupport.on_load(:action_view) do
      include BuzzImage
    end
  end

  initializer "buzz_image.configuration" do |app|
    app.config.buzz_image = BuzzImage::Configuration.new
    # Clear Cache
    FileUtils.rm_rf("#{Rails.application.root}/tmp/cache/assets") if Rails.env.development?
  end
end
