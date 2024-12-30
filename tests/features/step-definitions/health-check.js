import { When, Then } from '@cucumber/cucumber';
import { getValues } from './helpers.js'
import { expect } from 'chai';

Then('the value of my {string} should be decreased', async function (sectionName) {
  expect(await getValues(this, sectionName)).to.decreases;
});