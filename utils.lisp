(cl:in-package :srfi-87-internal)

(define-syntax begin
  (syntax-rules ()
    ((begin exp ***)
     (progn exp ***))))

(setf (symbol-function 'memv) #'cl:member)