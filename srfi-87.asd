;;;; srfi-87.asd

(cl:in-package :asdf)

(defsystem :srfi-87
  :serial t
  :depends-on (:mbe)
  :components ((:file "package")
               (:file "srfi-87")))

(defmethod perform ((o test-op) (c (eql (find-system :srfi-87))))
  (load-system :srfi-87)
  (or (flet ((_ (pkg sym)
               (intern (symbol-name sym) (find-package pkg))))
         (let ((result (funcall (_ :fiveam :run) (_ :srfi-87-internal :srfi-87))))
           (funcall (_ :fiveam :explain!) result)
           (funcall (_ :fiveam :results-status) result)))
      (error "test-op failed") ))

