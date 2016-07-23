# encoding: UTF-8
class EmailValidator < ActiveModel::EachValidator
  @@default_options = {}

  def self.regexp
    /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  end

  def self.valid?(value, options = {})
    !!(value =~ regexp)
  end

  def self.default_options
    @@default_options
  end

  def validate_each(record, attribute, value)
    options = @@default_options.merge(self.options)

    unless self.class.valid?(value, self.options)
      record.errors.add(attribute, options[:message] || :invalid)
    end
  end
end
