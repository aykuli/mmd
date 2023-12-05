# frozen_string_literal: true

class SessionsRepository
  include Aux::Pluggable

  register initialize: true, memoize: true

  # @!method where(attributes)
  #   @param attributes [Hash]
  #   @return [ActiveRecord::Relation<Session>]
  # @!method create!(attributes)
  #   @param attributes [Hash]
  #   @return [Session]
  # @!method find_by(attributes)
  #   @param attributes [Hash]
  #   @return [Session, nil]
  delegate :where, :create!, :find_by, to: :model

  private

  # @return [Class<Session>]
  def model = Session
end
