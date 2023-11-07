# frozen_string_literal: true

Dir[Rails.root.join('db/seeds/*.rb').to_s].each do |seed|
  Rails.logger.debug { "Seeding #{seed}" }
  load seed
end
