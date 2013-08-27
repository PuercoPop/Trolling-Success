(in-package :trolling-sucess)

(defgeneric draw (canvas pixel)
  (:documentation "Take"))

(defclass github-canvas ()
  (origin :allocation :class :initarg :origin :documentation "The
  date of 0, 0")0)

(defclass pixel ()
  ((x :initarg :x)
   (y :initarg :y)))

(defmethod draw ((canvas github-canvas) (pixel pixel))
  ""
  )
