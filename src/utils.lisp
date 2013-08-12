(in-package :trolling-success)
;; 2013-05-14 18:42:26 -0500
;; git commit --date="Wed Feb 16 14:00 2011 +0100"

(defun calculate-position (x y &optional (date (now)))
  "Return the date that represents given position for a given date. If
  no date is given use the current date. For every x add 7 days; for
  every y 1 day."
  (let ((origin (next-sunday date))
        (offset (+ (* 7 x) y)))
    (timestamp+ origin offset :day)))


(defun next-sunday (date)
  ""
  (if (eq 0 (timestamp-day-of-week date))
      date
      (next-sunday (timestamp+ date 1 :day))))

(defun random-elt (list)
  "Return a random element from the list."
  (elt list
       (random (length list))))

(defun interleave (&rest lists)
  "Return a list whose elements alternate between each of the lists
  `lists`. When a list has been exhausted, interleaving continues with
  whatever other non-empty lists."
  (loop :while (some #'identity lists)
     :nconc (loop :for list-head :on lists
               :for list := (first list-head)
               :when list
               :collect (pop (first list-head)))))
