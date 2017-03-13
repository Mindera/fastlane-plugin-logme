module Fastlane
  module Actions
    class LogmeAction < Action

      def self.run(options)
        regexp_filter = Regexp.new(options[:message_regexp_filters])
        exclude_regexp_filter = Regexp.new(options[:message_regexp_exclude_filters])
        Actions.sh("git log --pretty=format:\"%s\" --no-merges #{options[:from_revision]}...#{options[:to_revision]}")
            .split(/\n/)
            .select{|message| message[regexp_filter] != nil}
            .join("\n")
      end

      def self.return_value
        # Returns the commit messages as a string
      end

      def self.description
        "Collect git commit messages"
      end

      def self.available_options
        [
            FastlaneCore::ConfigItem.new(key: :to_revision,
                                         description: 'End revision commit',
                                         optional: false),
            FastlaneCore::ConfigItem.new(key: :from_revision,
                                         description: 'End revision commit',
                                         optional: false),
            FastlaneCore::ConfigItem.new(key: :message_regexp_filters,
                                         description: "Regexp filters like. ie '^MDM-|^CTS:'",
                                         default_value: '.',
                                         optional: true)
        ]
      end

      def self.is_supported?(platform)
        true
      end

      def self.author
        "mindera.com"
      end
    end
  end
end
