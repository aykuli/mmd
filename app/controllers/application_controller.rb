# frozen_string_literal: true

class ApplicationController < ActionController::API
  include CarrierMethods
  include AuthMethods

  private

  before_action :authenticate

  # @!attribute [r] current_user
  #   @return [User]
  attr_reader :current_user

  # @return [ActionController::Parameters]
  def permitted_params(command) = params.permit(command.schema.keys.map(&:name))

  # @return [AuthenticationCommand]
  def authentication_command = ioc.resolve('authentication_command')

  # @return [MeasurementsCommand]
  def measurements_command = ioc.resolve('measurements_command')

  # @return [FilterEntitiesCommand]
  def filter_entities_command = ioc.resolve('filter_entities_command')

  # @return [SessionsRepository]
  def sessions_repository = ioc.resolve('sessions_repository')

  # @return [UsersRepository]
  def users_repository = ioc.resolve('users_repository')

  # @return [EntitiesRepository]
  def entities_repository = ios.resolve('entities_repository')

  # @return [SessionsUseCase]
  def sessions_use_case = ioc.resolve('sessions_use_case')

  # @return [FilterFamilyUseCase]
  def filter_family_use_case =ioc.resolve('filter_family_use_case')

  # @return [FilterEntitiesUseCase]
  def filter_entities_use_case = ioc.resolve('filter_entities_use_case')

  # @return [MeasurementsUseCase]
  def measurements_use_case = ioc.resolve('measurements_use_case')

  # @return [UsersPresenter]
  def users_presenter = ioc.resolve('users_presenter')

  # @return [EntityPresenter]
  def entity_presenter = ioc.resolve('entity_presenter')

  # @return [MeasurementPresenter]
  def measurement_presenter = ioc.resolve('measurement_presenter')

  # @return [Dry::Container]
  def ioc = Rails.configuration.ioc
end
