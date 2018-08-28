require "rails_helper"

describe "user edits a student" do
  describe "they link from the index" do
    describe "they fill in a different name" do
      student = Student.create!(name: "Nicholas")
      it "edits a student" do
        visit student_path(student)

        click_link "Edit"

        expect(current_path).to eq(edit_student_path(student))

        fill_in "student[name]", with: "Nick"
        click_on "Update Student"

        expect(current_path).to eq(student_path(student))
        expect(page).to have_content("Nick")
        expect(page).to_not have_content("Nicholas")
      end
    end
  end
end
