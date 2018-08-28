require 'rails_helper'

describe "user sees one student" do
	describe "they link from the students index" do
		it "displays information for one student" do
      student1 = Student.create!(name: "Becca")
      student2 = Student.create!(name: "Tim")

      visit students_path

      click_link student1.name

      expect(current_path).to eq(student_path(student1))
      expect(page).to have_content(student1.name)
		end
	end
end
