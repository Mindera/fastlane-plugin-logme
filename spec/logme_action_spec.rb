describe Fastlane::Actions::LogmeAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The logme plugin is working!")

      Fastlane::Actions::LogmeAction.run(nil)
    end
  end
end
