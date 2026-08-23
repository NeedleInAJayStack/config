---
name: simplify-code
description: Simplify code implementations
---

When writing code:

- **No premature abstraction.** Use flat code first. Extract shared logic only
  when you see the same pattern appear 3+ times, not because it "might" be reused.
- **Avoid indirection layers.** No strategy pattern for one implementation, no
  factory for one class, no repository wrapper over a single ORM call.
- **YAGNI.** If the user didn't ask for it, don't build it. Don't "future-proof."
- **Short functions are fine** but extract by readability, not by line count.
- **Prefer the standard library** over a new dependency.
