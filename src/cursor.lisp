(in-package :trolling-success)

(defclass cursor ()
  ((o :initarg :offset :initform 0 :accessor offset))
  (:documentation "A generic cursor type to extend. It keeps tracks of its position in the line."))

(defmethod update-cursor ((cursor cursor))
  (with-accessors ((offset offset)) cursor
    (setq offset (+ 1 offset))))

(defclass github-cursor (cursor)
  ((github-login :initarg :login :reader login)
   (github-token :initarg :token :reader token
                 :documentation "github's API key.")
   (d :initform +default-origin+
      :reader origin-date :allocation :class))
  (:documentation "Uses github's collaboration as a canvas."))

(defun new-github-cursor ()
  (make-instance 'github-cursor))

(defclass bar ()
  ()
  (:documentation "a generic bar type to extend."))

(defclass 7-bar (bar)
  ((p-0 :initform nil :accessor pixel-0)
   (p-1 :initform nil :accessor pixel-1)
   (p-2 :initform nil :accessor pixel-2)
   (p-3 :initform nil :accessor pixel-3)
   (p-4 :initform nil :accessor pixel-4)
   (p-5 :initform nil :accessor pixel-5)
   (p-6 :initform nil :accessor pixel-6))
  (:documentation "A vertical bar 7 pixels tall."))

(defclass github-bar (7-bar)
  ((p-0 :initform nil :initarg :sunday :accessor sunday)
   (p-1 :initform nil :initarg :monday :accessor monday)
   (p-2 :initform nil :initarg :tuesday :accessor tuesday)
   (p-3 :initform nil :initarg :wednesday :accessor wednesday)
   (p-4 :initform nil :initarg :thursday :accessor thursday)
   (p-5 :initform nil :initarg :friday :accessor friday)
   (p-6 :initform nil  :initarg :saturday :accessor saturday))
  (:documentation "Provides alias for day to y coordinate."))

(defun new-github-bar (&rest args)
  (apply #'make-instance (interleave (list 'github-bar) args (make-list (length args) :initial-element t)))
  )

(new-github-bar :tuesday :wednesday)
(make-instance 'github-bar :tuesday t :wednesday t)

(defmethod sunday ((bar github-bar))
  (when (pixel-0 bar)
    0))

(defmethod monday ((bar github-bar))
  (when (pixel-1 bar)
    1))

(defmethod tuesday ((bar github-bar))
  (when (pixel-2 bar)
    2))

(defmethod wednesday((bar github-bar))
  (when (pixel-3 bar)
    3))

(defmethod thursday ((bar github-bar))
  (when (pixel-4 bar)
    4))

(defmethod friday ((bar github-bar))
  (when (pixel-5 bar)
    5))

(defmethod saturday ((bar github-bar))
  (when (pixel-6 bar)
    6))


(defgeneric draw-bar (cursor bar)
  (:documentation "Draw to the the pixels of each bar at the cursor position."))

(defgeneric letter-to-bars (character)
  (:documentation "Translate a letter to a list of bars which in
  conjunction with a cursor can later be translated to a position."))

(defmethod draw-bar ((cursor github-cursor) (bar github-bar))
  "Transform to dates and run the git commmit command."
  ;; git commit --date="Wed Feb 16 14:00 2011 +0100"
  (with-accessors ((current-week offset)) cursor
    (with-accessors ((sunday sunday)
                     (monday monday)
                     (tuesday tuesday)
                     (wednesday wednesday)
                     (thursday thursday)
                     (friday friday)
                     (saturday saturday)) bar

      (when sunday
        (git-commit (calculate-position current-week sunday)))
      (when monday
        (git-commit (calculate-position current-week monday)))
      (when tuesday
        (git-commit (calculate-position current-week tuesday)))
      (when wednesday
        (git-commit (calculate-position current-week wednesday)))
      (when thursday
        (git-commit (calculate-position current-week thursday)))
      (when friday
        (git-commit (calculate-position current-week friday)))
      (when saturday
        (git-commit (calculate-position current-week saturday)))))
  (update-cursor cursor)
  cursor)

(defun write-to-canvas (cursor message)
  (git-remove)
  (git-init)
  (loop for letter across message
     do
       (loop for bar in (letter-to-bars letter)
          do
            (draw-bar cursor bar))))
