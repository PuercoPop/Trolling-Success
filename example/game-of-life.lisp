(in-package :game-of-life)
(make-world :height 3 :width 4 :live-cells '((0 1) (1 2) (2 0) (2 1) (2 2)))
(print-world (step-world *world*))
