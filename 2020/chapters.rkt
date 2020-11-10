#lang racket

;;
;;
;;
;; chapters for garage digital generation of narrative
;;
;;
;;
(require predicates)

(require lathe-comforts)
(require lathe-comforts/hash)

(require txexpr)

(require json)

(require (for-syntax "../engine/timeline-syntax.rkt")
         "../engine/timeline-syntax.rkt")

(require "../engine/subtitels-utils.rkt")
(require "../engine/system-utils.rkt")

(require "../erosion-timeline/timeline.rkt")
(require "../erosion-timeline/utils.rkt")


(require "../erosion-timeline/assemblage-watchdog.rkt"
         "../erosion-timeline/video-spinner-spi.rkt"
         "../erosion-timeline/assemblage-kot-odin.rkt"
         "../erosion-timeline/screen-is-blinking.rkt"
         "../erosion-timeline/outsourcing-orgy.rkt"
         "../erosion-timeline/water-in-office.rkt"
         "../erosion-timeline/pause.rkt"
         "../erosion-timeline/images.rkt"
         "../erosion-timeline/bare-videos.rkt")

(require "test-videos.rkt")
(require "images.rkt")

(provide (all-defined-out))

;;;
;;;
;;; CHAPTERS
;;;
;;;

;;
;; CHAPTER pause-intro
;;
(mk-chapter pause-intro
            (assemblage intro-and-pause-assemblage
                        (vitaly-01-intro)
                        (pause))

            (vremya-prikljucheniy-nastupilo)

            (hold-the-spinner)
            (make-it-go-round)
            (time-screeches-into-bits)
            (you-have-a-task)
            )

;;
;; CHAPTER hadi-interfaces
;;
(mk-chapter hadi-interfaces
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
                               (duration (identity))))

            (perezagruzka)
            (scroll-rab)

            (screen-is-blinking)

            (code-that-embodies-your-emotional-work)
            ;; (code-that-embodies-your-emotional-work)

            (outsourcing-orgy)
            (outsourcing-orgy))
;;
;; CHAPTER hadi-dance
;;
(mk-chapter hadi-dance
            (hadi-03-tanec-02)
            (interface-dominatrix-01)

            (water-in-office)

            (breating-artifacts)
            ;; (breating-artifacts)
            ;; (breating-arti)facts)
            )

;;
;; CHAPTER maria-chasy
;;
(mk-chapter maria-chasy
            (assemblage maria-chasy-assemblage
                        (video maria-01-chasy
                               (video-website-path "maria-01-chasy.mp4")
                               (duration (identity)))

                        (video maria-02-chasy
                               (video-website-path "maria-02-chasy.mp4")
                               (duration (identity))))

            (video-spinner-spi))

;;
;; CHAPTER spinner
;;
(mk-chapter spinner
            (spinner-ya-vhozhu-vo-vkus)

            (assemblage spinner-assemblage
                        (spinner-krutit-spinner-04)
                        (spinner-konec)))

;;
;; CHAPTER hadi-risunok
;;

(mk-chapter hadi-risunok
            (hadi-01-bolit-spina)
            (hadi-02-risunok)
            (stop-word-vertical)

            (island-of-affective-data))

;;
;; CHAPTER tongue-geolocation
;;

(mk-chapter tongue-geolocation
            (maria-03-yazyk)
            (taxi-driver)

            (dominatrix-volgograd-01)

            (new-geolocation-biography-is-waiting-for-you)
            ;; (new-geolocation-biography-is-waiting-for-you)
            ;; (new-geolocation-biography-is-waiting-for-you)
            ;; (new-geolocation-biography-is-waiting-for-you)
            ;; (new-geolocation-biography-is-waiting-for-you)

            (geolocation-soup)
            (geolocation-soup)
            ;; (geolocation-soup)
            ;; (geolocation-soup)
            ;; (geolocation-soup)
            ;; (geolocation-soup)
            ;; (geolocation-soup)
            ;; (geolocation-soup)
            )

;;
;; CHAPTER hadi-space
;;
(mk-chapter hadi-space
            (assemblage kvartira-and-sleep-assemblage
                        (hadi-05-kvartira)
                        (sleep-vertical))

            (watchdog)
            (kot-odin)

            (general-intellect-care)
            (general-intellect-care)
            (general-intellect-care)
            (general-intellect-care)
            (general-intellect-care)
            (general-intellect-care)
            (general-intellect-care)
            )

;;
;; CHAPTER dances
;;
(mk-chapter dances
            (assemblage dances-in-darkness-assemblage
                        (maria-05-dance)
                        (vitaly-03-fonarik-no-words))

            (vitaly-02-zabastovka)
            (vitaly-04-fonarik)

            (vremya-prikljucheniy-nastupilo)
            )

;;
;; CHAPTER darkness
;;
(mk-chapter darkness
            (assemblage dances-in-darkness-02-assemblage
                        (hadi-04-tanec-horiz)
                        (vitaly-06-darkness-no-words))

            (vitaly-05-darkness)

            (panic-attack-new-02)

            (cradle-song-03-blur)
            )
