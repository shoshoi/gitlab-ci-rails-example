require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "post data" do
    it("is valid"){ expect(build(:post)).to be_valid }
  end

  describe "crud" do
    describe "create a user" do
      let(:post) { build(:post) }
      it { expect{post.save}.to change { Post.count }.by(1)}
    end

    describe "delete a user" do
      let!(:post) { create(:post) }
      it { expect{post.destroy}.to change { Post.count }.by(-1) }
    end

    describe "update a user" do
      let(:post) { Post.new(title: "test", content: "test") }
      it "is updated" do
        post.update(title: "updated")
        expect(post.title).to eq "updated"
      end
    end
  end
end
