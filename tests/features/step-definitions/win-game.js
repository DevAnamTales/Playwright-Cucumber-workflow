import { Given, When, Then, world } from '@cucumber/cucumber';
import { expect } from 'chai';
import { getMenuChoiceElement, checkIfDescriptionContainsString } from './helpers.js';

When('I click on button {string}', async function (button_text) {
  let menuChoiceElement = await getMenuChoiceElement(world, button_text);
  await menuChoiceElement.click();
});

Then('I should see the text {string}', async function (expectedText) {
  // Use the helper function to check if the description contains the expected text
  await checkIfDescriptionContainsString(this, expectedText, true);
});
