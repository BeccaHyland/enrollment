require "rails_helper"

describe "user sees all students" do
  describe "they visit /students" do
    it "displays all students" do
      student1 = Student.create!(name: "Becca")
      student2 = Student.create!(name: "Tim")

      visit students_path

      expect(page).to have_link(student1.name)
      expect(page).to have_link(student2.name)
    end

    it "links to create student page" do


      visit students_path

      expect(page).to have_link(new_student_path)
    end
  end
end
