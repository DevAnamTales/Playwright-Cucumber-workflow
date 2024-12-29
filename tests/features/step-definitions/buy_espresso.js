import { Given, When, Then, world } from '@cucumber/cucumber';
import { expect } from 'chai';
import { getMenuChoiceElement, getValues } from './helpers.js';

When('I buy {float} espressos', async function (count) {
  for (let i = 0; i < count; i++) {
    let menuChoiceElement = await getMenuChoiceElement(world, 'Buy an espresso');
    await menuChoiceElement.click();
  }
});

Then('the value of my {string} should be {float}', async function (sectionName, count) {
  expect(await getValues(this, sectionName)).to.equal(count);
});

Given('the value of my {string} is {float}', async function (sectionName, count) {
  expect(await getValues(this, sectionName)).to.equal(count);
});