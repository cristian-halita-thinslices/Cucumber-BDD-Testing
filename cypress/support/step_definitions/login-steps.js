import { Given, When, And, Then } from "cypress-cucumber-preprocessor/steps";

Given("I access the OrangeHRM Login Page", () => {
  cy.visit(
    "https://opensource-demo.orangehrmlive.com/web/index.php/auth/login"
  );
});

When("I enter username {word}", (username) => {
  cy.get('[name="username"]').type(username);
});

And("I enter password {word}", (password) => {
  cy.get('[name="password"]').type(password);
});
And("I click on the Login button", () => {
  cy.get("form .orangehrm-login-button").click();
});
Then("I should be able to have access to OrangeHRM dashboard", () => {
  cy.url().should("include", "dashboard");
});

Then(
  "I should be able to see an error with the message {word} {word}",
  (word, word2) => {
    cy.get(".oxd-alert-content--error")
      .should("be.visible")
      .should("contain", word + " " + word2);
  }
);
