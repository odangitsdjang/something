class User < ApplicationRecord

  validates :password_digest, :session_token, presence: true
  validates :password, length: { minimum: 6}, allow_nil: true
  validates :username, presence: true, uniqueness: true

  attr_reader :password 
  after_initialize :ensure_session_token

  def password=(pw)
    @password = pw
    self.password_digest = BCrypt::Password.create(pw)
  end

  def put_in_proper_password?(pw)
    BCrypt::Password.new(self.password_digest) == pw
  end

  def self.find_by_credentials(username, password)
    user = User.find_by_username(username)
    (user && user.put_in_proper_password?(password)) ? user : nil
  end

  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64(16)
  end

  def reset_session_token!
    self.session_token = SecureRandom.urlsafe_base64(16)
    self.save!
    self.session_token
  end

end
