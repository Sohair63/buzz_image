module BuzzImage
  def buzz_image_tag(*args, &block)
    options = insert_buzz_class(args.extract_options!)
    args << options
    image_tag(*args, &block)
  end

  def insert_buzz_class(options)
    class_name = 'buzz_image'
    if options.key?(:class)
      options[:class] += " #{class_name}"
    elsif options.key?('class')
      options['class'] += " #{class_name}"
    else
      options[:class] = class_name
    end
    options
  end
end
