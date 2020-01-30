;;;; package.lisp

(cl:in-package :cl-user)


(eval-when (:compile-toplevel :load-toplevel :execute)
  (intern (string '=>) :cl-user)
  (intern (string 'else) :cl-user))


(defpackage "https://github.com/g000001/srfi-87"
  (:use)
  (:shadowing-import-from :cl-user => else)
  (:export case => else))


(defpackage "https://github.com/g000001/srfi-87#internals"
  (:use "https://github.com/g000001/srfi-87"
        cl
        mbe)
  (:shadowing-import-from "https://github.com/g000001/srfi-87" case))


;;; *EOF*
