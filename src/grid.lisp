(in-package :trolling-success)

(defgeneric draw-line (cursor bar)
  (:documentation "Draw the bar at the cursors offset and push cursor to the next position."))
