module ProfileWidget
  class Question < ApplicationRecord
    belongs_to :survey
  end
end
