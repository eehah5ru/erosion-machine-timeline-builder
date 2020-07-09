#lang racket

(provide (all-defined-out))

(define (is-type? typ x)
  (eq? typ (hash-ref x 'type 'unknown)))

(define (show-image? x)
  (is-type? "showImage" x))

(define (show-text? x)
  (is-type? "showText" x))

(define (show-video? x)
  (is-type? "showVideo" x))

(define (add-background? x)
  (is-type? "addBackground" x))
