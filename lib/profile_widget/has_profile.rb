module ProfileWidget
  module HasProfile

    extend ActiveSupport::Concern

    class_methods do
      def has_profile
        has_one  :profile, class_name: "ProfileWidget::Profile", as: :ownerable

        after_save do |record|
          record.create_profile if record.profile.nil?
        end
      end
    end

  end
end