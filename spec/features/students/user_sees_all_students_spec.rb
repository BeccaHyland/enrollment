require "rails_helper"

describe "user sees all students" do
  describe "they visit /students" do
    it "displays all students" do
      student1 = Student.create!(name: "Autumn")
      student2 = Student.create!(name: "Patrick")

      visit students_path

      expect(page).to have_link(student1.name)
      expect(page).to have_link(student2.name)
    end

    it "links to create student page" do

      visit students_path

      expect(page).to have_link("Add New Student")
    end
  end
end
