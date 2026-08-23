---
name: test-public-behavior
description: Test Public Behavior Only
---

- **Test through public APIs.** Never expose a private method just to test
  it. Never import `__`-prefixed names in tests.
- **Assert on observable outcomes**, not internal state. If the output is valid,
  the internals are an implementation detail.
- **Avoid mock-heavy tests.** Prefer real objects or in-memory fakes over
  mocked interfaces. A test with 3+ mocks is testing the mock setup, not the code.
- **Don't test the framework.** If the behavior would be exercised by the
  framework's own test suite, skip it.
