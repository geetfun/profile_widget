module ProfileWidget
  class ApplicationController < ::AuthenticatedController
    protect_from_forgery with: :exception
  end
end
