Then(/^I see the organisation name in the url$/) do
  expect(current_url).to have_content('Friendly')
end