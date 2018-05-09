Feature: Login Screen
Scenario: 
  When Step 1: Navigate to Homepage
  Then Step 2: Input Email
  Then Step 3: Input Password
  Then Step 4: Click to Log me In

Scenario Outline:
  Given the following users exist:
  | email                     | password  |
  | minhnguyenqc87@gmail.com  | password  |
  | panda@supplier.flamingo   | password  |
  | panda@fasupplier.flamingo | password  |
  Then I input email and password to fields