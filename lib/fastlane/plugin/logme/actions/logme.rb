module Fastlane
  module Actions
    class LogmeAction < Action

      def self.run(options)
        regexp_filter = Regexp.new(options[:message_regexp_filters])
        changes = Actions.sh("git log --pretty=\"%s\" --no-merges #{options[:from_revision]}~1...#{options[:to_revision]}")
                      .split(/\n/)

        if options[:remove_older_merge_commits]
          merges = Actions.sh("git log --pretty=\"%b\" --merges #{options[:from_revision]}~1...#{options[:to_revision]}")
                       .split("* commit")

          merges.delete_at(0) # empty value
          merges.delete_at(0) # last merge
          merges = merges.join("\n")
          changes.delete_if{|commit| merges.include?(commit) }
        end

        changes.select{|message| message[regexp_filter] != nil}
            .join("\n\r")
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
                                         optional: true),
            FastlaneCore::ConfigItem.new(key: :remove_older_merge_commits,
                                         description: "Remove older commits that already was merge",
                                         default_value: false,
                                         is_string: false,
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
