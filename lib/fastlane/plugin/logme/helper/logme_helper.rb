module Fastlane
  module Helper
    class LogmeHelper
      # class methods that you define here become available in your action
      # as `Helper::LogmeHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the logme plugin helper!")
      end
    end
  end
end
