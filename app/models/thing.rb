class Thing < ApplicationRecord

  # some utility class
  class NaughtyUpdater
    def initialize(thing)
      @thing = thing
    end

    def update(attrs)
      @thing.assign_attributes(attrs)
      @thing.transaction do
        @thing.save(attrs) # wrong, but (badly) doesn't error in rails 5.2
      end
    end
  end
end
