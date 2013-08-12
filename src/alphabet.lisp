(in-package :trolling-success)
;; succeed at succeeding through metrics

(defmethod letter-to-bars ((character (eql #\S)))
  "Write the letter S."
  (list
   (new-github-bar :sunday :monday :tuesday :wednesday :saturday)
   (new-github-bar :sunday :wednesday :saturday)
   (new-github-bar :sunday :wednesday :saturday)
   (new-github-bar :sunday :wednesday :thursday :friday :saturday)))

(defmethod letter-to-bars ((character (eql #\U)))
  "Write the letter U."
  (list
   (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)
   (new-github-bar :saturday)
   (new-github-bar :saturday)
   (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)))

(defmethod letter-to-bars ((character (eql #\C)))
  "Write the letter S and return the cursor."
  (list
   (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)
   (new-github-bar :sunday :saturday)
   (new-github-bar :sunday :saturday)
   (new-github-bar :sunday :saturday)))

(defmethod letter-to-bars ((character (eql #\E)))
  "Write the letter S and return the cursor."
  (list
   (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)
   (new-github-bar :sunday :wednesday :saturday)
   (new-github-bar :sunday :wednesday :saturday)
   (new-github-bar :sunday :wednesday :saturday)))

(defmethod letter-to-bars ((character (eql #\D)))
  "Write the letter S and return the cursor."
  (list
   (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)
   (new-github-bar :sunday :saturday)
   (new-github-bar :sunday :saturday)
   (new-github-bar :monday :tuesday :wednesday :thursday :friday)))

(defmethod letter-to-bars ((character (eql #\A)))
  "Write the letter S and return the cursor."
  (list
   (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)
   (new-github-bar :thursday)
   (new-github-bar :thursday)
   (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)))

(defmethod letter-to-bars ((character (eql #\T)))
  "Write the letter S and return the cursor."
  (list
   (new-github-bar :sunday :monday)
   (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)
   (new-github-bar :sunday :monday)))

(defmethod letter-to-bars ((character (eql #\I)))
  "Write the letter S and return the cursor."
  (list
   (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)))

(defmethod letter-to-bars ((character (eql #\N)))
  "Write the letter S and return the cursor."
  (list
   (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)
   (new-github-bar :monday :tuesday)
   (new-github-bar :tuesday :wednesday)
   (new-github-bar :wednesday :thursday :friday)
   (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)))

(defmethod letter-to-bars ((character (eql #\G)))
  "Write the letter S and return the cursor."
  (list
   (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)
   (new-github-bar :sunday :saturday)
   (new-github-bar :sunday :thursday :saturday)
   (new-github-bar :sunday :monday :thursday :friday :saturday)))

(defmethod letter-to-bars ((character (eql #\H)))
  "Write the letter S and return the cursor."
  (list
   (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)
   (new-github-bar :wednesday :thursday)
   (new-github-bar :wednesday :thursday)
   (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)))

(defmethod letter-to-bars ((character (eql #\R)))
  "Write the letter S and return the cursor."
  (list
   (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)
   (new-github-bar :sunday :thursday )
   (new-github-bar :monday :wednesday :friday)
   (new-github-bar :tuesday :saturday)))

(defmethod letter-to-bars ((character (eql #\O)))
  "Write the letter S and return the cursor."
  (list
   (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)
   (new-github-bar :sunday :saturday)
   (new-github-bar :sunday :saturday)
   (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)))

(defmethod letter-to-bars ((character (eql #\M)))
  "Write the letter S and return the cursor."
  (list
   (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)
   (new-github-bar :monday)
   (new-github-bar :tuesday :wednesday)
   (new-github-bar :monday)
   (new-github-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)))

(defmethod letter-to-bars ((character (eql #\space)))
  (list
   (new-github-bar)
   (new-github-bar)))

(defmethod letter-to-bars ((character (eql #\.)))
  "Write the letter S and return the cursor."
  (list
   (new-github-bar :friday :saturday)
   (new-github-bar :friday :saturday)))
