#lang racket

(require "../engine/timeline-syntax.rkt")

(provide (all-defined-out))

(define (video-spinner-spi)
  (video spinner-spi
         "data/outsourcing-paradise-parasite/videos/cradle-song-01.mp4"
         (duration (identity))
         (looped false)
         (position 'replace)))

(mk-timeline test-timeline-video-spinner-spi
             (video-spinner-spi))
