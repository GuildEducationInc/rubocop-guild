# frozen_string_literal: true

class RubocopGuildRailtie < Rails::Railtie
  rake_tasks do
    load "tasks/install.rake"
  end
end
