require "rails_helper"

RSpec.describe List, type: :model do
  it "画像が添付されている" do
    list = create(:list)

    expect(list.image).to be_attached
    expect(list.image).to be_a(ActiveStorage::Attached::One)
    expect(list.image).to be_an_instance_of(ActiveStorage::Attached::One)
  end
end

describe "モデルのテスト" do
  it "有効な投稿内容の場合は保存されるか" do
    expect(FactoryBot.build(:list)).to be_valid
  end
end