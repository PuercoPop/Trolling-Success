(in-package :trolling-success)

(defun write-to-canvas (cursor message)
  (map nil #'draw message))
