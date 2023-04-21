# Mocking Bites 4: Unit Testing API requests in Ruby
This repository contains a practice exercise to learn how to unit test API requests in Ruby using RSpec.

## Purpose
The purpose of t his practice is to learn how to test code that relies on external APIs while ensuring that tests remain deterministic and isolated from external dependencies.

## Goal
1. Learn how to use dependency injection to replace actual API calls with test doubles.
2. Understand the importance of controlling external dependencies in  unit tests.
3. Become familiar with RSpec's syntax and features for testing and stubbing.

## How to practice
Follow the step-by-step guide to complete the tasks, exercises, and challenges. Pay attention to the structure and design patterns used in the examples provided.

## Tasks
1. Refactor the given code samples to make them testable by implementing dependency injection.
2. Write unit tests using RSpec for each class, replacing the actual API calls with test doubles.
3. Make sure that all tests pass and that the code is well-structured and maintainable.

## Exercise and Challenge
1. Exercise: Unit test the 'TimeError' class
2. Challenge: Unit test the 'CatFacts' class
In the exercise and challenge, we will need to refactor the given class to accept a test double for the API request, the write the appropriate RSpec test to ensure the class behaves as expected.

## What we did and learned
1. Refactored classes to accept a test double for th e SPI requester object, making them testable.
2. Learned  how to create test doubles using RSpec and control their behavior with stubs.
3. Wrote RSpec tests for each class, ensuring that they pass and that the code is well-structured and maintainable.
4. Gained a deeper understanding of the importance of controlling external dependencies in unit tests to achieve deterministic and reliable test results.

By practicing these concepts, we will be better equipped to write robust and maintainable code that is easy to test and debug.
