require 'SecretDiary.rb'

describe SecretDiary do
    it 'The diary is locked, meaning that no entries can be made' do
      expect(subject.lock).to eq true
    end

    it "the diary can unlock" do
        expect(subject.unlock).to eq false
    end


    it "the entries cannot be added when diary is locked" do
        expect { subject.add_entry("Diary note")}.to raise_error('failed to add entry as diary is locked')
    end

    it "entries cannot be obtained when diary is locked" do
        expect { subject.get_entries }.to raise_error('failed to get entry as diary is locked')
    end

    it "entries can be added when diary is unlocked" do
        subject.unlock
        expect(subject.add_entry("Diary note")).to eq("Diary note")
    end
end
