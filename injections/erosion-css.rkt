#lang racket


(require math/base)
(require racket/hash)

(provide (all-defined-out))


;;;
;;;
;;; css classes
;;; see css/erosion.css in erosion-plugin
;;;
;;;

;;;
;;; text shadow color variants
;;;
(define css-text-shadow-colors (list "shadow-red"
                                     "shadow-blue"
                                     "shadow-cyan"))

(define css-text-shadow-sizes (list "shadow-normal"))


;;;
;;; font size variants
;;;
(define css-font-sizes (list "normal"
                             "big"
                             "huge"
                             "large"))

;;;
;;; font-faces
;;;
(define css-font-faces (list '("font-default" . 75)
                             '("font-desdemona" . 10)
                             '("font-blackoak-std" . 10)
                             '("font-bodoni-ornaments" . 5)))


(define (weighted-random-element xs)
  (define r (random-integer 0 (sum (map cdr xs))))


  (define (f base ys)
    (cond
      [(empty? ys) (error "weighted-random-element: can't found value for " r)])

    (define y (first ys))
    (define y-weight (cdr y))
    (define y-val (car y))

    (cond
      [(< r (+ base y-weight)) y-val]

      [else (f (+ base y-weight) (rest ys))]))

  (f 0 (sort xs
             (lambda (x y)
               (< (cdr x) (cdr y))))))


(define (add-shadow el)
  (hash-update el
               'class
               (lambda (classes)
                 (string-append classes
                                " "
                                (first (shuffle css-text-shadow-colors))
                                " "
                                (first (shuffle css-text-shadow-sizes))))
               ""))


(define (add-font-size el)
  (hash-update el
               'class
               (lambda (classes)
                 (string-append classes
                                " "
                                (first (shuffle css-font-sizes))))
               ""))

(define (add-font-face el)
  (hash-update el
               'class
               (lambda (classes)
                 (string-append classes
                                " "
                                (weighted-random-element css-font-faces)))
               ""))
