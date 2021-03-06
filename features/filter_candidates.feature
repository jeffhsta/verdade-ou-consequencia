Feature: Filter candidates
  In order to discover candidates and their score with me
  as an user
  I want to be able to filter candidates

  @omniauth_test @javascript
  Scenario: Filtering candidates by age
    Given I'm logged in
    And there is an unrelated party called "MR"
    And there is a candidate called "Leonardo Eloi" and 32 years old for this party
    And there is a candidate called "Nicolera" and 45 years old for this party
    And there is a candidate called "Ainbinder" and 23 years old for this party
    And there is a chosen question saying "tem animais de estimação?"
    And the candidate "Leonardo Eloi" answered "Sim" for this question
    And the candidate "Nicolera" answered "Não" for this question
    And the candidate "Ainbinder" answered "Sim" for this question
    And I'm on "the answers page"
    And I choose "Sim" for the question "tem animais de estimação?"
    And I press "Ver resultado"
    And I should be in "the parties page"
    And I click "MR"
    And I should see LEONARDO ELOI
    And I should see NICOLERA
    And I should see AINBINDER
    When I choose "de 18 a 25 anos" from the filter form
    Then I should see AINBINDER
    And I should not see LEONARDO ELOI
    And I should not see NICOLERA


  @omniauth_test @javascript
  Scenario: Filtering candidates by scholarity
    Given I'm logged in
    And there is an unrelated party called "MR"
    And there is a candidate "Leonardo Eloi" with scholarity "Superior completo"
    And there is a candidate "Nicolera" with scholarity "Superior incompleto"
    And there is a candidate "Ainbinder" with scholarity "Fundamental completo"
    And there is a chosen question saying "tem animais de estimação?"
    And the candidate "Leonardo Eloi" answered "Sim" for this question
    And the candidate "Nicolera" answered "Não" for this question
    And the candidate "Ainbinder" answered "Sim" for this question
    And I'm on "the answers page"
    And I choose "Sim" for the question "tem animais de estimação?"
    And I press "Ver resultado"
    And I should be in "the parties page"
    And I click "MR"
    And I should see LEONARDO ELOI
    And I should see NICOLERA
    And I should see AINBINDER
    When I check "Superior Completo" from the filter form
    Then I should see LEONARDO ELOI
    And I should not see AINBINDER
    And I should not see NICOLERA

  @omniauth_test @javascript
  Scenario: Filtering candidates by reelection 
    Given I'm logged in
    And there is an unrelated party called "MR"
    And there is a candidate "Leonardo Eloi" that is not a politician 
    And there is a candidate "Nicolera" that is a politician
    And there is a candidate "Ainbinder" that is not a politician
    And there is a chosen question saying "tem animais de estimação?"
    And the candidate "Leonardo Eloi" answered "Sim" for this question
    And the candidate "Nicolera" answered "Não" for this question
    And the candidate "Ainbinder" answered "Sim" for this question
    And I'm on "the answers page"
    And I choose "Sim" for the question "tem animais de estimação?"
    And I press "Ver resultado"
    And I should be in "the parties page"
    And I click "MR"
    And I should see LEONARDO ELOI
    And I should see NICOLERA
    And I should see AINBINDER
    When I check "Sim" from the filter form
    Then I should see NICOLERA
    And I should not see AINBINDER
    And I should not see LEONARDO ELOI

  @omniauth_test @javascript
  Scenario: Filtering candidates by gender 
    Given I'm logged in
    And there is an unrelated party called "MR"
    And there is a candidate "Leonardo Eloi" that is male 
    And there is a candidate "Nicolera" that is female
    And there is a candidate "Ainbinder" that is male
    And there is a chosen question saying "tem animais de estimação?"
    And the candidate "Leonardo Eloi" answered "Sim" for this question
    And the candidate "Nicolera" answered "Não" for this question
    And the candidate "Ainbinder" answered "Sim" for this question
    And I'm on "the answers page"
    And I choose "Sim" for the question "tem animais de estimação?"
    And I press "Ver resultado"
    And I should be in "the parties page"
    When I click "MR"
    Then I should see LEONARDO ELOI
    Then I should see NICOLERA
    Then I should see AINBINDER
    When I check "Masculino" from the filter form
    Then I should not see NICOLERA
    And I should see AINBINDER
    And I should see LEONARDO ELOI
