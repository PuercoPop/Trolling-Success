(in-package :trolling-success)
;; succeed at succeeding through metrics

(defmacro define-letter (character &body body)
  "Add an extra empty column between letters"
  `(defmethod letter-to-bars ((character (eql,character)))
     (list ,@body (new-github-bar))))

(define-letter #\S
  (new-github-bar :sunday :monday :tuesday :wednesday :saturday)
  (new-github-bar :sunday :wednesday :saturday)
  (new-github-bar :sunday :wednesday :saturday)
  (new-github-bar :sunday :wednesday :thursday :friday :saturday))

(define-letter #\U
  (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)
  (new-github-bar :saturday)
  (new-github-bar :saturday)
  (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday))

(define-letter #\C
  (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)
  (new-github-bar :sunday :saturday)
  (new-github-bar :sunday :saturday)
  (new-github-bar :sunday :saturday))

(define-letter #\E
  (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)
  (new-github-bar :sunday :wednesday :saturday)
  (new-github-bar :sunday :wednesday :saturday)
  (new-github-bar :sunday :wednesday :saturday))

(define-letter #\D
  (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)
  (new-github-bar :sunday :saturday)
  (new-github-bar :sunday :saturday)
  (new-github-bar :monday :tuesday :wednesday :thursday :friday))

(define-letter #\A
  (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)
  (new-github-bar :thursday)
  (new-github-bar :thursday)
  (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday))

(define-letter #\T
  (new-github-bar :sunday :monday)
  (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)
  (new-github-bar :sunday :monday))

(define-letter #\I
  (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday))

(define-letter #\N
  (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)
  (new-github-bar :monday :tuesday)
  (new-github-bar :tuesday :wednesday)
  (new-github-bar :wednesday :thursday :friday)
  (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday))

(define-letter #\G
  (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)
  (new-github-bar :sunday :saturday)
  (new-github-bar :sunday :thursday :saturday)
  (new-github-bar :sunday :monday :thursday :friday :saturday))

(define-letter #\H
  (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)
  (new-github-bar :wednesday :thursday)
  (new-github-bar :wednesday :thursday)
  (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday))

(define-letter #\R
  (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)
  (new-github-bar :sunday :thursday )
  (new-github-bar :monday :wednesday :friday)
  (new-github-bar :tuesday :saturday))

(define-letter #\O
  (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)
  (new-github-bar :sunday :saturday)
  (new-github-bar :sunday :saturday)
  (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday))

(define-letter #\M
  (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)
  (new-github-bar :monday)
  (new-github-bar :tuesday :wednesday)
  (new-github-bar :monday)
  (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday))

(define-letter #\space
  (new-github-bar)
  (new-github-bar))

(define-letter #\.
  (new-github-bar :friday :saturday)
  (new-github-bar :friday :saturday))

(define-letter #\L
  (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)
  (new-github-bar :saturday)
  (new-github-bar :saturday)
  (new-github-bar :saturday))
