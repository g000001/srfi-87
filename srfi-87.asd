;;;; srfi-87.asd

(cl:in-package :asdf)


(defsystem :srfi-87
  :version "20200131"
  :description "SRFI 87: => in case clauses"
  :long-description "SRFI 87: => in case clauses
https://srfi.schemers.org/srfi-87"
  :author "Chongkai Zhu"
  :maintainer "CHIBA Masaomi"
  :license "MIT"
  :serial t
  :depends-on (:mbe)
  :components ((:file "package")
               (:file "srfi-87")))


(defmethod perform :after ((o load-op) (c (eql (find-system :srfi-87))))
  (let ((name "https://github.com/g000001/srfi-87") (nickname :srfi-87))
    (if (and (find-package nickname)
             (not (eq (find-package nickname) (find-package name))))
        (warn "~A: A package with name ~A already exists." name nickname)
        (rename-package name name `(,nickname)))))


;;; *EOF*
