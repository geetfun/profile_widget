module ProfileWidget
  class Profile < ApplicationRecord

    has_person_name

    ##
    # Associations

    belongs_to :ownerable, polymorphic: true

  end
end
