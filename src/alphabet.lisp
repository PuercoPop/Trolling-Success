(in-package :trolling-success)
;; succeed at succeeding through metrics

(defmethod draw ((cursor github-cursor) (character (eql #\S)))
  "Write the letter S and return the cursor."
  (new-bar :sunday :monday :tuesday :wednesday :saturday)
  (new-bar :sunday :wednesday :saturday)
  (new-bar :sunday :wednesday :saturday)
  (new-bar :sunday :wednesday :thursday :friday :saturday)
  cursor)
