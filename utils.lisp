(cl:in-package "https://github.com/g000001/srfi-87#internals")

(define-syntax begin
  (syntax-rules ()
    ((begin exp ***)
     (progn exp ***))))

(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf (symbol-function 'memv) #'cl:member))

