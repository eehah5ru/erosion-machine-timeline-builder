#lang racket

(require "../engine/timeline-syntax.rkt")

(provide (all-defined-out))

;;
;; test videos
;;

(bootstrap-video hadi-01-bolit-spina
                 "hadi-01-bolit-spina.mp4")


(bootstrap-video hadi-02-risunok
                 "hadi-02-risunok.mp4")

(bootstrap-video hadi-03-tanec-02
                 "hadi-03-tanec-02.mp4")

(bootstrap-video hadi-03-tanec
                 "hadi-03-tanec.mp4")

(bootstrap-video hadi-04-tanec-horiz
                 "hadi-04-tanec-horiz.mp4")

(bootstrap-video hadi-05-kvartira
                 "hadi-05-kvartira.mp4")

(bootstrap-video maria-01-chasy
                 "maria-01-chasy.mp4")

(bootstrap-video maria-02-chasy
                 "maria-02-chasy.mp4")

(bootstrap-video maria-03-yazyk
                 "maria-03-yazyk.mp4")

(bootstrap-video maria-04-dance
                 "maria-04-dance.mp4")

(bootstrap-video maria-05-dance
                 "maria-05-dance.mp4")

(bootstrap-video vitaly-01-intro
                 "vitaly-01-intro.mp4")

(bootstrap-video vitaly-02-zabastovka
                 "vitaly-02-zabastovka.mp4")

(bootstrap-video vitaly-03-fonarik-no-words
                 "vitaly-03-fonarik-no-words.mp4")

(bootstrap-video vitaly-04-fonarik
                 "vitaly-04-fonarik.mp4")

(bootstrap-video vitaly-05-darkness
                 "vitaly-05-darkness.mp4")

(bootstrap-video vitaly-06-darkness-no-words
                 "vitaly-06-darkness-no-words.mp4")

;;;
;;; assemblages
;;;
(define (hadi-interfaces)
  (assemblage hadi-interfaces-assemblage

              (video hadi-06-interface
                     (video-website-path "hadi-06-interface.mp4")
                     (duration (identity)))

              (video hadi-07-interface
                     (video-website-path "hadi-07-interface.mp4")
                     (duration (identity)))

              (video hadi-08-interface
                     (video-website-path "hadi-08-interface.mp4")
                     (duration (identity)))

              (video hadi-09-interface
                     (video-website-path "hadi-09-interface.mp4")
                     (duration (identity)))

              (video hadi-10-interface
                     (video-website-path "hadi-10-interface.mp4")
                     (duration (identity)))))

(mk-timeline test-hadi-interfaces
             (hadi-interfaces))


(define (maria-chasy)
  (assemblage maria-chasy-assemblage
              (video maria-01-chasy
                     (video-website-path "maria-01-chasy.mp4")
                     (duration (identity)))

              (video maria-02-chasy
                     (video-website-path "maria-02-chasy.mp4")
                     (duration (identity)))))
