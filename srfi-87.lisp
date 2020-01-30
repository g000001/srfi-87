;;;; srfi-87.lisp

(cl:in-package "https://github.com/g000001/srfi-87#internals")


(define-syntax case
  (syntax-rules (else =>)
    ((case (key ***)
       clauses ***)
     (with ((atom-key (gensym)))
       (let ((atom-key (key ***)))
         (case atom-key clauses ***))))
    ((case key
       (else => result))
     (funcall result key))
    ((case key
       ((atoms ***) => result))
     (if (member key '(atoms ***))
         (funcall result key)))
    ((case key
       ((atoms ***) => result)
       clause clauses ***)
     (if (member key '(atoms ***))
         (funcall result key)
         (case key clause clauses ***)))
    ((case key
       (else result1 result2 ***))
     (progn result1 result2 ***))
    ((case key
       ((atoms ***) result1 result2 ***))
     (if (member key '(atoms ***))
         (progn result1 result2 ***)))
    ((case key
       ((atoms ***) result1 result2 ***)
       clause clauses ***)
     (if (member key '(atoms ***))
         (progn result1 result2 ***)
         (case key clause clauses ***)))))


;;; *EOF*
