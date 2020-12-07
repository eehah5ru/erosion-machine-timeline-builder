#lang racket

(require "../engine/timeline-syntax.rkt")

(provide (all-defined-out))

(define (kot-odin)
  (assemblage kot-odin-assemblage

              (video kot-odin-video
                     "data/outsourcing-paradise-parasite/videos/spinner-kot-odin.mp4"
                     (duration (identity))
                     (looped false)
                     (position 'replace))

              (text kot-odin-text
                    "Together let's find a gesture that will be algorithmized well"
                    (duration (dur kot-odin-video)))))

(mk-timeline test-assemblage-kot-odin (empty-splash-screen-text)
             (kot-odin))
