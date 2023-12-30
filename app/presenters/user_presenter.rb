# frozen_string_literal: true

class UserPresenter
  include Aux::Pluggable

  register

  # @param user [User]
  # @return [Hash]
  def self.call(user)
    {
      id: user.id,
      email: user.email,
      member: user.member,
      gender: user.gender,
      parent_id: user.parent_id,
      last_name: user.last_name,
      first_name: user.first_name,
      birth_date: user.birth_date
    }
  end
end
