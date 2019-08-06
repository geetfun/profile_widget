module ProfileWidget
  class Profile < ApplicationRecord

    has_person_name

    ##
    # Associations

    belongs_to :ownerable, polymorphic: true
    has_many   :surveys, -> { order(updated_at: :desc) }, class_name: "ProfileWidget::Survey"

  end
end
