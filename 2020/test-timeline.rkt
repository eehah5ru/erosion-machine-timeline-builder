#lang racket

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

 ;;
 ;; absolute path to eeefff's website with all the data
 ;;
 (define eeeffff-website-base-dir (make-parameter "/Users/eehah5ru/it/websites/eeefff-org"))

;;;
;;; host name for assets
;;;
(define host-name (make-parameter "https://dev.eeefff.org"))


;;;
;;; path to output timline json file in tester plugin
;;;
(define timeline-json-path (make-parameter "/Users/eehah5ru/works/2019-outsourcing-paradise/erosion-machine-tester/data/timeline.json"))

;;
;; write timeline to file
;;
(define (write-timeline tl)
  (with-output-to-file (timeline-json-path) #:exists 'replace
    (lambda ()
      (printf (jsexpr->string tl)))))

;;
;; generate scss skeleton
;;
(define (mk-scss-skeleton tl)
  (match tl
    [(hash-table ('timeline ts))

     (foldr string-append "" (map element->scss ts))]

    [_ (error "there is no timeline key")]))

;;;
;;;
;;; assemblages
;;;
;;;
(define (maria-chasy)
  (assemblage maria-chasy-assemblage
              (video maria-01-chasy
                     (video-website-path "maria-01-chasy.mp4")
                     (duration (identity)))

              (video maria-02-chasy
                     (video-website-path "maria-02-chasy.mp4")
                     (duration (identity)))))


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


;;;
;;
;;
;; timeline
;;
;;
(mk-timeline
 test-timeline

 (hadi-01-bolit-spina)
 (hadi-02-risunok)

 (hadi-03-tanec-02)
 (hadi-04-tanec-horiz)

 ;; disabled
 ;; (hadi-03-tanec)

 (hadi-05-kvartira)

 ;; moved to assemblage
 ;; (hadi-06-interface)
 ;; (hadi-07-interface)
 ;; (hadi-08-interface)
 ;; (hadi-09-interface)
 ;; (hadi-10-interface)

 (maria-01-chasy)
 (maria-02-chasy)
 (maria-03-yazyk)

 ;; disabled
 ;; (maria-04-dance)

 (maria-05-dance) ; вставить вместе с МОП
 (vitaly-01-intro)
 (vitaly-02-zabastovka)


 ;; images for RTV mag
 (affects-are-floating)
 (breating-artifacts)
 (code-that-embodies-your-emotional-work)
 (geolocation-soup)
 (hold-the-spinner)
 (i-want-to-hiccup)
 (island-of-affective-data)
 (make-it-go-round)
 (new-geolocation-biography-is-waiting-for-you)
 (time-screeches-into-bits)
 (you-have-a-task)

)

;;
;;
;; RUN
;;
;;
(define (run)
  (parameterize ([assets-basedir "data/outsourcing-paradise-parasite/v2/test/"]
                 ;; set for local test env and ff plugin
                 ;; unset when generate for eeefff.org
                 [settings-delay 3]   ;secs
                 [settings-base-url "https://dev.eeefff.org/"]) ;trailing /
    (dummy-missing-subtitels (eeeffff-website-base-dir) (assets-basedir))
    (define tl (mk-spinner-timeline (eeeffff-website-base-dir)))
    ;; (define tl (mk-test-timeline-timeline (eeeffff-website-base-dir)))

    ;; write timeline to ff plugin
    (write-timeline tl)

    ;; write timeline to erosion engine's test env
    (parameterize ([timeline-json-path "/Users/eehah5ru/works/2019-outsourcing-paradise/erosion-machine-2/public/timeline.json"])
      (write-timeline tl))

    ;;
    ;; copy scss skeleton to clipboard
    ;;
    (string->clipboard
     (mk-scss-skeleton tl))))
