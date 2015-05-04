(defpackage #:game-of-life
  (:use :cl)
  (:import-from #:alexandria #:copy-array)
  (:nicknames #:gom)
  (:export
   #:step-world
   #:make-world
   #:print-world))

(in-package :game-of-life)

(defvar *world* (make-array (* 10 10) :element-type 'bit :initial-element 0)
  "An array that represents the whole world")
(defvar *world-height* 10
  "The height of the *world* array.")
(defvar *world-width* 10
  "The width of the *world* array.")

(defun make-world (&key
                     (height 10)
                     (width 10)
                     (live-cells '((1 0) (2 1) (0 2) (1 2) (2 2)))) ; Defaults to a Glider
  (setf *world* (make-array (* height width) :element-type 'bit
                                             :initial-element 0))
  (setf *world-width* width)
  (setf *world-height* height)
  (loop
    :for pair :in live-cells
    :do
       (setf (aref *world* (pair->index pair)) 1))
  *world*)

;; TODO: Make the borders 'infinite'
(defun step-world (world)
  (let ((new-world (copy-array world)))
    (loop
      :for index :below (length world)
      :for cell := (aref world index)
      :for number-of-live-neighbors := (length (get-neighbors index world))
      :do
         ;; Logging
         ;; (format t "The Cell in position ~A is ~:[Alive~;Dead~].~%" (index->pair index) (deadp cell))
         (setf (aref new-world index) (next-cell-status index world)))
    (setf *world* new-world)))

(defun next-cell-status (index world)
  "Determine is the cell should live on in the generation."
  (let ((num-live-neighbors (length (get-live-neighbors index world))))
    (if (alivep (aref world index))
        (case num-live-neighbors
          ((2 3) 1)
          (t 0))
        (case num-live-neighbors
          (3 1)
          (t 0)))))

(defun alivep (cell)
  "Is the cell alive?"
  (when (eq 1 cell)
    t))

(defun deadp (cell)
  "Is the cell dead?"
  (not (alivep cell)))

(defun get-neighboring-positions (index)
  "Return the indexes of the, up to 8, neighbors."
  (remove-if #'out-of-bounds
             (loop
                :for x-diff :from -1 to 1
                :append
                  (loop
                    :for y-diff :from -1 to 1
                    :unless (and (eq 0 x-diff) (eq 0 y-diff))
                      :collect (+ index x-diff (* *world-width* y-diff))))))

(defun get-neighbors (index array)
  "Get the status of the neighboring cells."
  (mapcar (lambda (i) (aref array i)) (get-neighboring-positions index)))

(defun get-live-neighbors (index array)
  "Return only the status of the live cells."
  (remove 0 (get-neighbors index array)))

(defun out-of-bounds (index)
  "Is the index out of bounds in the world array."
  (when (or (< index 0)
            (>= index (length *world*)))
    t))


(defun index->pair (index)
  "Translate a a row-major-index to a pair (x y)."
  (let ((row (floor (/ index *world-width*))))
    (list (- index (* row *world-width*))  row)))

(defun pair->index (pair)
  "Translate a pair to an row-major-index."
  (+ (* *world-width* (second pair)) (first pair)))

(defun end-of-column (index)
  "Is the index at the last column?"
  (multiple-value-bind
        (quotient remainder) (floor (/ (1+ index) *world-width*))
    (declare (ignore quotient))
    (eq 0 remainder)))

(defun print-world (world)
  "Print a grid representing the world. 1 is a live cell, 0 a dead one. "
  (format t "~%")
  (loop
    :for index :below (length world)
    :do
       (format t " ~A " (aref world index))
       (when (end-of-column index)
         (format t "~%"))))
