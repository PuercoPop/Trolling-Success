(in-package :trolling-success)

(defgeneric draw-line (cursor bar)
  (:documentation "Draw the bar at the cursors offset and push cursor to the next position."))


(defclass cursor ()
  ((o :accessor offset))
  (:documentation "A generic cursor type to extend. It keeps tracks of its position in the line."))

(defclass github-cursor (cursor)
  ((github-login :accessor login)
   (github-token :accessor token :documentation "github's API key."))
  (:documentation "Uses github's collaboration as a canvas."))

(defclass bar ()
  ()
  (:documentation "a generic bar type to extend."))

(defclass 7-bar (bar)
  ((z :accessor zero)
   (o :accessor one)
   (t :accessor two)
   (th :accessor three)
   (f :accessor fourth)
   (fi :accessor fifth)
   (s :accessor sixth))
  (:documentation "A vertical bar 7 pixels tall."))

(defclass github-bar (7-bar)
  ((z :initarg :sunday :accessor sunday)
   (o :initarg :monday :accessor monday)
   (t :initarg :tuesday :accessor tuesday)
   (th :initarg :wednesday :accessor wednesday)
   (f :initarg :thursday :accessor thursday)
   (fi :initarg :friday :accessor friday)
   (s  :initarg :saturday :accessor saturday))
  (:documentation "Provides the day to position mapping."))


(defmethod draw-line ((cursor github-cursor) (bar github-bar))
  "Transform to dates"
  )
