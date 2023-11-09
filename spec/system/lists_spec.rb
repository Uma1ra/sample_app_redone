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

  describe "投稿画面のテスト" do
    before do
      visit new_list_path
    end
    
    context "表示の確認" do
      it "new_list_pathが'/lists/new'であるか" do
        expect(current_path).to eq("/lists/new")
      end
    end
    it "投稿ボタンが表示されているか" do
      expect(page).to have_button "投稿"
    end
    
    context "投稿処理のテスト" do
      it "投稿後のリダイレクト先は正しいか" do
        fill_in "list[title]", with: Faker::Lorem.characters(number:5)
        fill_in "list[body]", with: Faker::Lorem.characters(number:20)
        attach_file("list[image]", "spec/support/test_no_image.jpg")
        click_button "投稿"
        expect(page).to have_current_path list_path(List.last) 
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