(defpackage :trolling-success
  (:use :cl :local-time)
  (:nicknames "SaS")
  (:import-from :asdf :run-shell-command)
  (:export
   #:write-to-canvas))

(defpackage game-of-life
  (:use :cl)
  (:import-from :alexandria :copy-array)
  (:nicknames "gom"))
