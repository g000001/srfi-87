# SRFI 87 for CL: => in case clauses

* Copyright (C) 2006 Chongkai Zhu. All Rights Reserved.
* License: MIT

```cl
(defpackage "71a48394-cae7-5c43-8a51-6fc3aa089bf5"
  (:use cl srfi-87)
  (:shadowing-import-from srfi-87 case))

(in-package "71a48394-cae7-5c43-8a51-6fc3aa089bf5")

(defun fib (n)
  (case n
    ((0 1) => #'identity)
    (else (+ (fib (1- n))
             (fib (- n 2))))))

(fib 40)
→ 102334155
```