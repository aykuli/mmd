# frozen_string_literal: true

require 'csv'

class ParseCsvMeasurementsJob < ApplicationJob
  queue_as :default

  def perform(*args)
    return { message: 'Need to provide file' } unless args[:file]

    csv_text = File.read(args[:file])
    csv = CSV.parse(csv_text, headers: true)
    csv.each do |_row|
      Rails.logger.debug
      Rails.logger.debug '-------------'
      Rails.logger.debug args
      Rails.logger.debug '-------------'
      # Measurement.create!(**row)
    end
  end
end
