module Ember
  module Auth
    module Module
      module Epf
        module Source
          def self.bundled_path
            path = File.join '..', '..', '..', '..', '..', '..', \
              'dist', 'ember-auth-module-epf.js'
            File.expand_path path, __FILE__
          end
        end
      end
    end
  end
end
