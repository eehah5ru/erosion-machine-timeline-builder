#lang racket

(require "../engine/timeline-syntax.rkt")

(provide (all-defined-out))


(bootstrap-video screen-is-blinking
                 "cradle-song-02-screen.mp4")


;; (define (screen-is-blinking)
;;   (video screen-is-blinking-video
;;          (video-website-path "cradle-song-02-screen.mp4")
;;          (duration (identity))
;;          (looped false)
;;          (position 'replace)))

;; (mk-timeline test-screen-is-blinking (empty-splash-screen-text)
;;              (screen-is-blinking))

;; (current-directory "..")
