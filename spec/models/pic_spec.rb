require 'rails_helper'

RSpec.describe Pic, type: :model do
 let!(:user){create(:user)}

  subject{
     build(:pic, user: user)
  }
  
  context "validation" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end
    
    it "should not be valid without title" do
       subject.title = nil
       expect(subject).to_not be_valid
    end
    
    it { should validate_presence_of(:title) }
    
    it "should not be valid without description" do
       subject.description = nil
       expect(subject).to_not be_valid
    end
    
    it { should validate_presence_of(:description) }
  end
  
  context "association" do
    it { should belong_to(:user) }
  end 
end
