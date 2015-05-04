(ql:quickload :trolling-success)
(in-package :trolling-success)

(let ((cursor (new-github-cursor))
      (message "SUCCEEDING AT SUCCESS THROUGH METRICS."))
  (git-init)
  (trolling-success:write-to-canvas cursor message))
