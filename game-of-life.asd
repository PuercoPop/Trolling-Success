(in-package :cl-user)

(asdf:defsystem #:game-of-life
  :description "Game of Life."
  :version (:read-file-form "version.num")
  :serial t
  :depends-on (:alexandria)
               :cl-conspack
               :fast-io)
  :license "<3"
  :pathname "game-of-life"
  :components ((:file "game-of-life")))
