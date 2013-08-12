(in-package :trolling-success)
;; 2013-05-14 18:42:26 -0500
;; git commit --date="Wed Feb 16 14:00 2011 +0100"
(defparameter +1-day+ (encode-interval :day 1))


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
