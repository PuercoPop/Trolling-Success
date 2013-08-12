(in-package :cl-user)

(asdf:defsystem :trolling-success
  :description "Draw to github's contribution graph as it were a grid."
  :version (:read-file-form "version.lisp-expr")
  :serial t
  :depends-on (:simple-date)
  :license "<3"
  :pathname "src"
  :components ((:file "packages")
               (:file "grid")))




