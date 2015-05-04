(in-package :game-of-life)

(make-world :live-cells '((1 0) (2 1) (0 2) (1 2) (2 2)))
(save-world #P"~/foo.hex")
(setf *world* nil
      *world-heght* nil
      *world-width* nil)
(load-world #P"~/foo.hex")
(assert (and (not (null *world*))
             (not (null *world-height*))
             (not (null *world-width*))))
