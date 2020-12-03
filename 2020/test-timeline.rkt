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

(require "chapters.rkt")
(require "test-chapters.rkt")
(require (only-in "test-videos.rkt"
                  [start-time start-time-video]))


;;
;; absolute path to eeefff's website with all the data
;;
(define eeeffff-website-base-dir (make-parameter "/Users/eehah5ru/it/websites/eeefff-org"))

;;;
;;; host name for assets
;;;
(define host-name (make-parameter "https://dev.eeefff.org"))


;;;
;;; path to output timline json file in FF plugin
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
;;
;;
;; timeline
;; split in chapters
;;
(mk-timeline
 test-timeline

 
 (hadi-interfaces)
 
 (hadi-dance)

 (maria-chasy)
 
 (spinner)

 (hadi-risunok)

 (tongue-geolocation)

 (hadi-space)

 (dances)
 
 (darkness)
 
 (pause-intro)

 (removals)
 )

;;
;;
;; RUN FUNCTIONS
;;
;;

;;
;; timeline factory finction
;;
;; (define timeline-f mk-test-removals-timeline)
;; use this one below to generate complete timeline
(define timeline-f mk-test-timeline-timeline)

;;;
;;; final-erosion-event
;;;
(define final-erosion-event start-time-video)

;;
;; ff plugin and elm test env
;;
(define (run-for-local-use)
  
  (parameterize ([assets-basedir "data/outsourcing-paradise-parasite/v2/test/"])
    ;;
    ;; create dummy missing assets
    ;;
    (dummy-missing-subtitels (eeeffff-website-base-dir) (assets-basedir))

    ;; set overrides for local test env and ff plugin
    ;; leave default for eeefff.org
    (parameterize* (                 
                   [settings-delay 3]   ;secs
                   [settings-base-url "https://dev.eeefff.org/"]
                   [settings-final-erosion
                    (parameterize ([current-directory (eeeffff-website-base-dir)])
                      (hash-set (final-erosion-event)
                                'position "overlay"))])
      
      (define tl (timeline-f (eeeffff-website-base-dir)))

      ;; write timeline to ff plugin
      (write-timeline tl)

      ;; write timeline to erosion engine's test env
      (parameterize ([timeline-json-path "/Users/eehah5ru/works/2019-outsourcing-paradise/erosion-machine-2/public/timeline.json"])
        (write-timeline tl))

      ;;
      ;; copy scss skeleton to clipboard
      ;;
      (string->clipboard
       (mk-scss-skeleton tl))
      )))


;;
;; eeefff.org website
;;
(define (run-for-eeefff-org)
  (parameterize ([assets-basedir "data/outsourcing-paradise-parasite/v2/test/"]
                 [timeline-json-path "/Users/eehah5ru/it/websites/eeefff-org/data/outsourcing-paradise-parasite/v2/test/erosion-machine-timeline.json"])
    ;;
    ;; create dummy missing assets
    ;;
    (dummy-missing-subtitels (eeeffff-website-base-dir) (assets-basedir))

    (define tl (timeline-f (eeeffff-website-base-dir)))

    (write-timeline tl)
    ;;
    ;; copy scss skeleton to clipboard
    ;;
    (string->clipboard
     (mk-scss-skeleton tl))))
