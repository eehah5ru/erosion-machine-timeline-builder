#lang racket

;;
;;
;; timelines for berliner gazette video
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

;;;
;;;
;;; timeline for imaguru
;;; +++
;;;
(mk-timeline
 imaguru

 (hadi-interfaces)

 (perezagruzka)
 (scroll-rab)

 (screen-is-blinking)

 (code-that-embodies-your-emotional-work)
 (code-that-embodies-your-emotional-work)

 (outsourcing-orgy)
 (outsourcing-orgy)


 )

;;;
;;;
;;; for ...
;;; +++
;;;
(mk-timeline
 hadi-dance

 (hadi-03-tanec-02)
 (interface-dominatrix-01)

 (water-in-office)

 (breating-artifacts)
 (breating-artifacts)
 (breating-artifacts)
 )

;;;
;;;
;;; for telegram?
;;; +++ telegram
;;;
(mk-timeline
 maria-chasy

 (maria-chasy)

 (video-spinner-spi)

 ;; (spinner-ya-vhozhu-vo-vkus)
 ;; (spinner-krutit-spinner-04)
 ;; (spinner-konec)
 )

;;
;;
;; for toloka
;;
;;
(mk-timeline
 spinner
 (spinner-ya-vhozhu-vo-vkus)

 (assemblage spinner-assemblage
             (spinner-krutit-spinner-04)
             (spinner-konec)))

;;;
;;;
;;; for ...
;;; +++
;;;
(mk-timeline
 hadi-risunok

 (hadi-01-bolit-spina)
 (hadi-02-risunok)
 (stop-word-vertical)

 (island-of-affective-data))

;;;
;;;
;;; for ...
;;; +++ matterport ww2 museum
;;;
(mk-timeline
 tongue-geolocation

 (maria-03-yazyk)
 (taxi-driver)

 (dominatrix-volgograd-01)

 (new-geolocation-biography-is-waiting-for-you)
 (new-geolocation-biography-is-waiting-for-you)
 (new-geolocation-biography-is-waiting-for-you)
 (new-geolocation-biography-is-waiting-for-you)
 (new-geolocation-biography-is-waiting-for-you)

 (geolocation-soup)
 (geolocation-soup)
 (geolocation-soup)
 (geolocation-soup)
 (geolocation-soup)
 (geolocation-soup)
 (geolocation-soup)
 (geolocation-soup))

;;;
;;;
;;; for ...
;;; +++ bir.by - dana holdings
;;;
(mk-timeline
 hadi-space

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
 (general-intellect-care))

;;;
;;;
;;; for ...
;;; +++ google komkon 2019 spreadsheet
;;;
(mk-timeline
 dances

 (assemblage dances-in-darkness-assemblage
             (maria-05-dance)
             (vitaly-03-fonarik-no-words))

 (vitaly-02-zabastovka)
 (vitaly-04-fonarik)

 (vremya-prikljucheniy-nastupilo)

 )

;;;
;;;
;;; for ...
;;; +++ casino
;;;
(mk-timeline
 darkness

 (assemblage dances-in-darkness-02-assemblage
             (hadi-04-tanec-horiz)
             (vitaly-06-darkness-no-words))

 (vitaly-05-darkness)

 (panic-attack-new-02)

 (cradle-song-03-blur)
 )

;;;
;;;
;;; for ..
;;; +++ great stone
;;;
(mk-timeline
 pause-intro

 (assemblage intro-and-pause-assemblage
             (vitaly-01-intro)
             (pause))

 (vremya-prikljucheniy-nastupilo)

 (hold-the-spinner)
 (make-it-go-round)
 (time-screeches-into-bits)
 (you-have-a-task)
 )
