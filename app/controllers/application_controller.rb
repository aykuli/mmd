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

  # @return [AddMeasurementCommand]
  def add_measurement_command = ioc.resolve('add_measurement_command')

  # @return [FilterEntitiesCommand]
  def filter_entities_command = ioc.resolve('filter_entities_command')

  # @return [AddEntityCommand]
  def add_entity_command = ioc.resolve('add_entity_command')

  # @return [AddUserCommand]
  def add_user_command = ioc.resolve('add_user_command')

  # @return [SessionsRepository]
  def sessions_repository = ioc.resolve('sessions_repository')

  # @return [UsersRepository]
  def users_repository = ioc.resolve('users_repository')

  # @return [EntitiesRepository]
  def entities_repository = ios.resolve('entities_repository')

  # @return [SessionsUseCase]
  def sessions_use_case = ioc.resolve('sessions_use_case')

  # @return [UsersUseCase]
  def users_use_case =ioc.resolve('users_use_case')

  # @return [EntitiesUseCase]
  def entities_use_case = ioc.resolve('entities_use_case')

  # @return [MeasurementsUseCase]
  def measurements_use_case = ioc.resolve('measurements_use_case')

  # @return [EntitiesGroupsUseCase]
  def entities_groups_use_case = ioc.resolve('entities_groups_use_case')

  # @return [UsersPresenter]
  def user_presenter = ioc.resolve('user_presenter')

  # @return [EntityPresenter]
  def entity_presenter = ioc.resolve('entity_presenter')

  # @return [MeasurementPresenter]
  def measurement_presenter = ioc.resolve('measurement_presenter')

  # @return [MeasurementCollectionPresenter]
  def measurement_collection_presenter = ioc.resolve('measurement_collection_presenter')

  # @return [EntityGroupPresenter]
  def entity_group_presenter = ioc.resolve('entity_group_presenter')

  # @return [Dry::Container]
  def ioc = Rails.configuration.ioc
end
