(in-package #:game-of-life)

(make-world :live-cells '((1 0) (2 1) (0 2) (1 2) (2 2)))
(print-world *world*)
(loop :for index :below 4
      :do
         (step-world *world*)
         (print-world *world*))
