require 'digest/sha1'

class Authentication < ActiveRecord::Base
  validates_confirmation_of	:password
  validates_length_of :username, :within => 3..40
  validates_length_of	:password, :within => 3..40
  validates_uniqueness_of :username
  attr_accessible :password, :status, :username, :salt
  has_one :User
  attr_protected :salt

  #def self.authenticate(authentication_info)
  #  find_by_username_and_password(authentication_info[:username], authentication_info[:password])
  #end
  def self.authenticate(username, pass)
    auth = find(:first, :conditions=>["username = ?", username])
    return nil if auth.nil?
    return auth if Authentication.encrypt(pass, auth.salt)==auth.password
    nil
  end

  def make_hash(pass)
    @pwd=pass
    self.salt = Authentication.random_string(10) if !self.salt
    self.password = Authentication.encrypt(@pwd, self.salt)
  end

  def self.random_string(len)
    #generate a random password consisting of strings and digits
    chars = ("a" .. "z"). to_a + ("A" .. "Z"). to_a + ("0" .. "9"). to_a
    newpass = ""
    1.upto(len) { |i| newpass << chars[rand(chars.size-1)] }
    return newpass
  end

  def self.encrypt(pass, salt)
    Digest::SHA1.hexdigest (pass + salt)
  end

end
