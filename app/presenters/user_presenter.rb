# frozen_string_literal: true

class UserPresenter
  include Aux::Pluggable

  register

  # @param user [User]
  # @return [Hash]
  def self.call(user)
    {
      id: user.id,
      first_name: user.first_name,
      member: user.member,
      parent_id: user.parent_id
    }
  end
end
