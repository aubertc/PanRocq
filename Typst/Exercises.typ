#set raw(syntaxes: "Rocq.sublime-syntax", lang: "rocq", theme: "Rocq.tmTheme")

```rocq
From Stdlib Require Import List.
Import ListNotations.
```

Recall the definition of the type of lists with entries in a type `A`.

```rocq
Inductive list (A : Type) : Type :=
| nil  : list A
| cons : A → list A → list A.

Arguments nil {A}.
Arguments cons {A} a l.

Infix "::" := cons (at level 60, right associativity) : list_scope.
```

Recall also the definition of the function `negb`.

```rocq
Definition negb (b : bool) : bool :=
  match b with
  | true  => false
  | false => true
  end.
```

*Exercise 1*

Write a function `length : list A → nat` that returns the length of a list.

*Exercise 2*

Prove the following result: 

```rocq
Theorem negb_inv (b : bool) : negb (negb b) = b.
```
