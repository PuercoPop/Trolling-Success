(in-package :cl-user)

(asdf:defsystem :trolling-success
  :description "Draw to github's contribution graph as it were a grid."
  :version (:read-file-form "version.num")
  :serial t
  :depends-on (:local-time)
  :license "<3"
  :pathname "src"
  :components ((:file "packages")
               (:file "utils")
               (:file "git")
               (:file "grid")
               (:file "alphabet")
               (:file "cursor")))
