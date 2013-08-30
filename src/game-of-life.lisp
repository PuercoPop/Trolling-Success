(in-package :game-of-life)

(defvar *world* (make-array '(10 10) :element-type 'bit :initial-element 0))
(defvar *world-height*)
(defvar *world-width*)

(defun make-world (&key (height 10) (width 10) live-cells)
  (prog1
      (setf *world* (make-array (* height width) :element-type 'bit
                                :initial-element 0))
    (setf *world-width* width)
    (setf *world-height* height)
    (loop for pair in live-cells
       do
         (setf (aref *world* (pair->index pair)) 1))))

(defun step-world (world)
  (let ((new-world (copy-array world)))
    (loop
       for index below (length world)
       do
         (let ((cell (aref world index))
               (live-neighbours (length (get-live-neighbours index world))))

           (format t "The Cell ~A in position ~A is Alive: ~A Dead: ~A~%"
                   cell
                   (index->pair index)
                   (alive? cell)
                   (dead? cell))

           (cond ((and (alive? cell)
                       (or (eq 2 live-neighbours)
                           (eq 3 live-neighbours)))
                  (setf cell 1))
                 ((and (dead? cell) (eq 3 live-neighbours))
                  (setf cell 1))
                 (t
                  (setf cell 0)))))
    (setf *world* new-world)))

(defun alive? (cell)
  (when (eq 1 cell)
    t))

(defun dead? (cell)
  (when (eq 0 cell)
    t))

(defun get-live-neighbours (index array)
  (remove 0 (get-neighbours index array)))

(defun get-neighbours (index array)
  (mapcar (lambda (i) (aref array i)) (get-neighbouring-positions index)))

(defun get-neighbouring-positions (index)
  (remove-if #'out-of-bounds
             (loop
                for x-diff from -1 to 1
                append
                  (loop
                     for y-diff from -1 to 1
                     unless (and (eq 0 x-diff) (eq 0 y-diff))
                     collect (+ index x-diff (* *world-width* y-diff))))))

(defun out-of-bounds (index)
  (when (or (< index 0)
            (>= index (length *world*)))
    t))


(defun index->pair (index)
  (let ((row (floor (/ index *world-width*))))
    (list (- index (* row *world-width*))  row)))

(defun pair->index (pair)
  (+ (* *world-width* (second pair)) (first pair)))

(defun end-of-column (index)
  (multiple-value-bind
        (quotient remainder) (floor (/ (1+ index) *world-width*))
    (declare (ignore quotient))
    (eq 0 remainder)))

(defun print-world (world)
  (format t "~%")
  (loop
     for index below (length world)
     do
       (format t " ~A " (aref world index))
       (when (end-of-column index)
         (format t "~%")))
  world)
