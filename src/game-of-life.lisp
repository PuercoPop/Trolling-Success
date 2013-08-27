(in-package :game-of-life)

(defvar *world* (make-array '(10 10) :element-type 'bit :initial-element 0))
(defvar *world-height*)
(defvar *world-width*)

(defun make-world (&key (height 10) (width 10) live-cells)
  (setf *world-width* width)
  (setf *world-height* height)
  (setf *world* (make-array `(,height ,width) :element-type 'bit
                            :initial-element 0)))

(defun step (world)
  (loop
     for index below (array-total-size  *world*)
     for cell = (row-major-aref *world* index)
     do
       (when (alive? cell)
         (case (count (get-live-neighbours index *world*))
           ((2 3) (setf cell 1))
           (otherwise (setf cell 0))))
       (when (dead? cell)
         (case (count (get-live-neighbours index *world*))
           (3 (setf cell 1))
           (otherwise (setf cell 0))))))

(defun alive? (cell)
  (when (eq 1 cell)
    t))

(defun dead? (cell)
  (when (eq 0 cell)
    t))

(defun get-live-neighbours (index array)
  (remove 0 (get-neighbours index array)))

(defun get-neighbours (index array)
  (loop for pair in (get-neighbouring-positions index)
     collect (aref world (first pair) (second pair))))

(destructuring-bind (x y) '(1 2)
  y)

(defun get-neighbouring-positions (index)
  (remove-if #'pair-out-of-bounds
             (destructuring-bind (x y) (index->pair index)
               (loop
                  for x-diff from -1 to 1
                  append
                    (loop
                       for y-diff from -1 to 1
                       collect (list (+ x x-diff) (+ y y-diff)))))))

(defun pair-out-of-bounds (pair)
  (destructuring-bind (x y) pair
    (when (or (< x 0)
              (< y 0)
              (>= x *world-width*)
              (>= y *world-height*))
      t)))


(defun index->pair (index)
  (let ((row (floor (/ index *world-width*))))
    (list (- index (* row *world-width*))  row)))


(defun print-world (world))
