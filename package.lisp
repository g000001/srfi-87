;;;; package.lisp

(cl:in-package :cl-user)

(defpackage :srfi-87
  (:use)
  (:export :case))

(defpackage :srfi-87-internal
  (:use :srfi-87 :cl :fiveam :mbe)
  (:shadowing-import-from :srfi-87 :case))

