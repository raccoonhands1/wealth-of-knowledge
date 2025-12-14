---
tags: [cpp, concept]
created: 2025-12-13
---
>[!concept]
> this rule states that a compiler may optimize your code however it likes as long as it doesn't alter the underlying observable behavior
> >[!important] 
> > the exception to this rule is when many calls to copy or move constructors are called unnecessarily. In this case, the compiler may optimize away those copy or move constructors even if the behavior is observable

> [!example] 
> ```
> int x {3+4};
> ```
> auto-optimizes to be
> ```
> int x {7};
> ```
> this is called [[constant folding]]

> [!see]
> [[constant propagation]] [[dead code elimation]] [[constant propagation]]