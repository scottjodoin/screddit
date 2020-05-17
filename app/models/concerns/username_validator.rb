class UsernameValidator < ActiveModel::UsernameValidator
  def validate(username)
    if username.length <= 3
      username.errors.add(:username, "is too short.")
    end
    if username.length > 32
      username.errors.add(:username, "is too long.")
    end
  end
end