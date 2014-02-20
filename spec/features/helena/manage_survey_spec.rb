require 'spec_helper'

feature 'Survey management' do
  scenario 'lists all surveys' do
    create :survey, name: 'My first survey', description: 'I am very proud of it'
    create :survey, name: 'Another cool survey', description: 'Everybody likes it'

    visit helena.surveys_path

    within '#helena_survey_1' do
      expect(page).to have_text 'My first survey'
      expect(page).to have_text 'I am very proud of it'
    end

    within '#helena_survey_2' do
      expect(page).to have_text 'Another cool survey'
      expect(page).to have_text 'Everybody likes it'
    end
  end

  scenario 'creates a new surveys'
  scenario 'edits a survey'

  scenario 'deletes a survey' do
    create :survey, name: 'My first survey', description: 'I am very proud of it'

    visit helena.surveys_path

    within '#helena_survey_1' do
      expect { click_link 'Delete' }.to change { Helena::Survey.count }.by(-1)
    end
  end

  scenario 'trying to delete a survey without authorization throws you an error'
end
