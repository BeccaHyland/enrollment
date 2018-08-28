require "rails_helper"

describe "user creates a new address" do
  describe "they link from student show page" do
    describe "they fill in new address form" do
      it "creates a new address" do
        student = Student.create!(name: "Raja")
        visit student_path(student)
        click_link "Add New Address"

        expect(current_path).to eq(new_student_address_path(student))

        fill_in "student_address[description]", with: "Home Address"
        fill_in "student_address[street_address]", with: "1 Home Street"
        fill_in "student_address[city]", with: "Denver"
        fill_in "student_address[state]", with: "CO"
        fill_in "student_address[zip]", with: 88888
        click_on "Add Address"

        expect(page).to have_content("Home Address")
        expect(page).to have_content("1 Home Street")
        expect(page).to have_content("Denver")
        expect(page).to have_content("CO")
        expect(page).to have_content("88888")
      end
    end
  end
end
