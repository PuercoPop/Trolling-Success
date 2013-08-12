(in-package :trolling-success)
;; succeed at succeeding through metrics

(defmethod letter-to-bars ((character (eql #\S)))
  "Write the letter S."
  (list
   (new-bar :sunday :monday :tuesday :wednesday :saturday)
   (new-bar :sunday :wednesday :saturday)
   (new-bar :sunday :wednesday :saturday)
   (new-bar :sunday :wednesday :thursday :friday :saturday)))

(defmethod letter-to-bars ((character (eql #\U)))
  "Write the letter U."
  (list
   (new-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)
   (new-bar :saturday)
   (new-bar :saturday)
   (new-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)))

(defmethod letter-to-bars ((character (eql #\C)))
  "Write the letter S and return the cursor."
  (list
   (new-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)
   (new-bar :sunday :saturday)
   (new-bar :sunday :saturday)
   (new-bar :sunday :saturday)))

(defmethod letter-to-bars ((character (eql #\E)))
  "Write the letter S and return the cursor."
  (list
   (new-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)
   (new-bar :sunday :wednesday :saturday)
   (new-bar :sunday :wednesday :saturday)
   (new-bar :sunday :wednesday :saturday)))

(defmethod letter-to-bars ((character (eql #\D)))
  "Write the letter S and return the cursor."
  (list
   (new-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)
   (new-bar :sunday :saturday)
   (new-bar :sunday :saturday)
   (new-bar :monday :tuesday :wednesday :thursday :friday)))

(defmethod letter-to-bars ((character (eql #\A)))
  "Write the letter S and return the cursor."
  (list
   (new-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)
   (new-bar :thursday)
   (new-bar :thursday)
   (new-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)))

(defmethod letter-to-bars ((character (eql #\T)))
  "Write the letter S and return the cursor."
  (list
   (new-bar :sunday :monday)
   (new-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)
   (new-bar :sunday :monday)))

(defmethod letter-to-bars ((character (eql #\I)))
  "Write the letter S and return the cursor."
  (list
   (new-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)))

(defmethod letter-to-bars ((character (eql #\N)))
  "Write the letter S and return the cursor."
  (list
   (new-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)
   (new-bar :monday :tuesday)
   (new-bar :tuesday :wednesday)
   (new-bar :wednesday :thursday :friday)
   (new-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)))

(defmethod letter-to-bars ((character (eql #\G)))
  "Write the letter S and return the cursor."
  (list
   (new-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)
   (new-bar :sunday :saturday)
   (new-bar :sunday :thursday :saturday)
   (new-bar :sunday :monday :thursday :friday :saturday)))

(defmethod letter-to-bars ((character (eql #\H)))
  "Write the letter S and return the cursor."
  (list
   (new-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)
   (new-bar :wednesday :thursday)
   (new-bar :wednesday :thursday)
   (new-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)))

(defmethod letter-to-bars ((character (eql #\R)))
  "Write the letter S and return the cursor."
  (list
   (new-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)
   (new-bar :sunday :thursday )
   (new-bar :monday :wednesday :friday)
   (new-bar :tuesday :saturday)))

(defmethod letter-to-bars ((character (eql #\O)))
  "Write the letter S and return the cursor."
  (list
   (new-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)
   (new-bar :sunday :saturday)
   (new-bar :sunday :saturday)
   (new-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)))

(defmethod letter-to-bars ((character (eql #\M)))
  "Write the letter S and return the cursor."
  (list
   (new-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)
   (new-bar :monday)
   (new-bar :tuesday :wednesday)
   (new-bar :monday)
   (new-bar :sunday :monday :tuesday :wednesday :thursday :friday :saturday)))
