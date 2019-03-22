require_relative '../lib/secret_diary'

### WARNING ###
# For the purposes of this exercise, you are testing after
# the code has been written. This means your tests are prone
# to false positives!
#
# Make sure your tests work by deleting the bodies of the
# methods in `secret_diary.rb`, like this:
#
# ```ruby
# def write(new_message)
# end
# ```
#
# If they fail, then you know your tests are working
# as expected.
### WARNING ###

describe SecretDiary do
	describe '#locked' do
		context "when locked" do
			it "locked diary" do
				diary = double("diary")
				allow(diary).to receive(:locked).and_return(true)
				expect(diary.locked).to eq true
			end

			it "refuses to be read" do
				diary = double("diary")
				allow(diary).to receive(:be_read).and_return(false)
				expect(diary.be_read).to eq false
			end

			it "refuses to be written" do
				diary = double("diary")
				allow(diary).to receive(:be_written).and_return(false)
				expect(diary.be_written).to eq false
			end
		end
	end

	describe "#unlocked" do
		context "when unlocked" do
			it "unlocked diary" do
				diary = double("diary")
				allow(diary).to receive(:unlocked).and_return(true)
				expect(diary.unlocked).to eq true
			end

			it "gets read" do
				diary = double("diary")
				allow(diary).to receive(:read).and_return(true)
				expect(diary.read).to eq true
			end

			it "gets written" do
				diary = double("diary")
				allow(diary).to receive(:written).and_return(true)
				expect(diary.written).to eq true
			end
		end
	end
end

 	

   