#lang racket

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
