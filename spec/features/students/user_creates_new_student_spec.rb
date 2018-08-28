require "rails_helper"

describe "user creates a new student" do
  describe "they link from the index" do
    describe "they fill in a name" do
      it "creates a new student" do
        visit students_path
        click_link "Add New Student"

        expect(current_path).to eq(new_student_path)

        fill_in "student[name]", with: "Maria"
        click_on "Create Student"

        expect(page).to have_content("Maria")
      end
    end
  end
end
