require "rails_helper"

describe "投稿のテスト" do
  let!(:list) {create(:list)}

  describe "トップ画面のテスト" do
    before do
      visit root_path
    end

    context "表示の確認" do
      it "トップ画面(root_path)「Homes#top」が表示されているか" do
        expect(page).to have_content "Homes#top"
      end
      it "root_pathが/であるか" do
        expect(current_path).to eq("/")
      end
    end
  end

  # describe "" do
  #   context "" do
  #     it do

  #     end
  #   end
  #   it do

  #   end
  # end

end