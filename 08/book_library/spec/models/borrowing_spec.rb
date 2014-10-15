require 'rails_helper'

RSpec.describe Borrowing, :type => :model do
  it "isn't valid without user_id" do
    borrowing = Borrowing.new
    borrowing.user_id = nil
    expect(borrowing).not_to be_valid
  end

  describe '#overdue?' do
    context 'due_back is tomorrow' do
      before do
        @borrowing = Borrowing.new(due_back: 1.days.since)
      end

      it "returns false when attribute is default(today)" do
        expect(@borrowing.overdue?).to be(false)
      end

      it "returns true when attribute is 2 days later" do
        expect(@borrowing.overdue?(2.days.since)).to be(true)
      end
    end
  end

  it "create a record with user_id" do
    expect {Borrowing.create(user_id: 1)}.to change{Borrowing.count}.from(0).to(1)
  end
end
