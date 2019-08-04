module ProfileWidget
  class Profile < ApplicationRecord
    belongs_to :ownerable, polymorphic: true
  end
end
