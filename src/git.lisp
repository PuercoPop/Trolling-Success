(in-package :trolling-success)
;; Git CLI 'wrapper'

(defparameter +git-commit-messages+ '("HyponoToad was here."
                                      "I'm in yur commits eating yur code."
                                      "Can I haz cheese plz?"
                                      "We shall overcome."
                                      "Shut up and take my money!")
  "Some funny quotes to put in the commit message.")

(defun git-init ()
  "Initialize a git repo."
  (run-shell-command "git init"))

(defun git-remove ()
  "Remove the git repo of the current working directory."
  (run-shell-command "rm -r .git < /usr/bin/yes")
  (run-shell-command "rm -r quotes"))

(defun git-commit (date)
  "Create a commit using the date and a random commit message."
  (run-shell-command "fortune >> quotes")

  (run-shell-command "git add quotes")

  (run-shell-command
   (concatenate 'string
                (format nil
                        "git commit --date=\"~A\" -m \"~A\""
                        (format-timestring nil date :format +iso-8601-format+)
                        (random-elt +git-commit-messages+))
                (if (and (boundp '*git-author*)
                         (boundp '*git-email*))
                    (format nil " --author=\"~A <~A>\""
                            *git-author* *git-email*)
                    ""))))
