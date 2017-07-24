Feature: Lead segmentation page

Background: I have to access RD Station homepage
  Given We navigate to the homepage
  When I input "jsnpereira@gmail.com" into the username field
  And I input "#j2891R$" into the password field
  And I sign in RD Station


Scenario: Create a new lead segmentation
  Given I go in the leads segmentation page
  When I click "Criar Segmentação" button
  And I input "TestLeads" value in segmentation name field
  And I click button for include an new segmentation
  And I input "tests" value in therm field
  And I click save button
  Then Check "TestLeads" value is display in page
  Then I close the homepage