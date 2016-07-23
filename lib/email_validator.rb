# encoding: UTF-8
class EmailValidator < ActiveModel::EachValidator

  def self.regexp
    /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  end

  def self.valid?(value, options = {})
    !!(value =~ regexp)
  end

  def validate_each(record, attribute, value)
    unless self.class.valid?(value)
      record.errors.add(attribute, options[:message] || :invalid)
    end
  end
end
