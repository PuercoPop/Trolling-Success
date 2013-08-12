(ql:quickload :cl-github)
(ql:quickload :trolling-success)

;; Configure

(let ((cursor (new-github-cursor "metrics" github-name githubapi))
      (message "Succeeding at success through metrics."))
  (trolling-success:write-to-canvas cursor message))
