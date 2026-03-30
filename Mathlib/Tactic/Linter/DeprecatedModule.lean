/-
Copyright (c) 2025 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/
module

public import Mathlib.Init

/-!
# The `deprecated.module` linter

The `deprecated_module` command and `linter.deprecated.module` option are now provided by Lean core.
This file is kept for backward compatibility with imports.

The usage is as follows. Write
```lean
import B
...
import Z

deprecated_module "Optional string here with further details" (since := "yyyy-mm-dd")
```
in module `A` with the expectation that `A` contains nothing else.
This triggers a warning for every file with `import A`
to instead import the *direct imports* of `A`, that is `B, ..., Z`.
-/
