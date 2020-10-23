#lang racket

(require predicates)

(require lathe-comforts)
(require lathe-comforts/hash)

(require txexpr)

(require json)

(require "../erosion-timeline/timeline.rkt")
(require "../erosion-timeline/utils.rkt")
(require "phrases.rkt")
(require "images.rkt")


;;
;; absolute path to eeefff's website with all the data
;;
(define eeeffff-website-base-dir (make-parameter "/Users/eehah5ru/it/websites/eeefff-org"))

;;;
;;; host name for assets
;;;
(define host-name (make-parameter "https://eeefff.org"))

;;;
;;; path to outputinjections json file
;;;
(define injections-json-path (make-parameter "/Users/eehah5ru/works/2019-outsourcing-paradise/erosion-machine-plugin/data/injections.json"))


;;;
;;;
;;; utils
;;;
;;;

;;;
;;; add category to the element
;;;
(define (add-category cat el)
  (hash-set el 'category cat))

;;;
;;; write injections json
;;;
(define (write-injections is)
  (with-output-to-file (injections-json-path) #:exists 'replace
    (lambda ()
      (printf (jsexpr->string is)))))

;;;
;;;
;;; timeline event to html tags converters
;;; hasheq -> txexpr
;;;

;;;
;;; image -> txexpr
;;;
(define (show-image->txexpr e)
  (match e
    [(hash-table ('src url))
     (txexpr 'img `((src ,url)) '())]
    [_ (error "malformed image timeline event" e)]))

;;;
;;; video -> txexpr
;;;
(define (show-video->txexpr e)
  (match e
    [(hash-table ('url_mp4 url))
     (txexpr 'video `((src ,url)) '())]
    [_ (error "malformed video timeline event"  e)]))

;;;
;;; text -> txexpr
;;;
(define (show-text->txexpr e)
  (match e
    [(hash-table ('text text))
     (txexpr 'div '() `(,text))]))

;;;
;;; event -> txexpr
;;;
(define (event->txexpr e)
  (match e
    [(hash-table ('type "showImage"))
     (show-image->txexpr e)]

    [(hash-table ('type "showVideo"))
     (show-video->txexpr e)]

    [(hash-table ('type "showText"))
     (show-text->txexpr e)]

    [_ (error "unknown event type: " e)]))


;;;
;;; extract events from timline items
;;;
(define (extract-events timeline-items)
  (flatten (for/list ([timeline-item timeline-items])
             (match timeline-item
               ;; extract image
               [(hash-table ('type "showImage"))
                timeline-item]

               ;; extract showVideo
               [(hash-table ('type "showVideo"))
                timeline-item]

               ;; extract text
               [(hash-table ('type "showText"))
                timeline-item]

               ;; extract assemblage
               [(hash-table ('type "assemblage") ('events evs))
                (extract-events evs)]

               ;; ignore addClass
               [(hash-table ('type "addClass"))
                '()]

               ;; ignore removeClass
               [(hash-table ('type "removeClass"))
                '()]


               ;; error if other
               [_ (error "unknown type of event" timeline-item)]
               ))))

(define (fix-hostname el)
  (define (fix-hostname-func s)
    (string-replace s "HOST_NAME" (host-name)))

  (match el
    [(hash-table ('type "showImage"))
     (hash-update el
                  'src
                  fix-hostname-func)]

    [(hash-table ('type "showVideo"))
     (hash-update el
                  'url_mp4
                  fix-hostname-func)]

    [_ el]))

(define (flatten-erosion-timeline)
  (define erosion-timeline (mk-outsoursing-paradise-parasite-timeline (eeeffff-website-base-dir)))

  (match erosion-timeline
    [(hash-table ('timeline ts))
     ;; go into timeline
     ;; (map (compose1 xexpr->string
     ;;                event->txexpr)
     ;;      (extract-events ts))
     (map fix-hostname
          (extract-events ts))
     ]
    [_ (error "there is no timeline key")]))



(define (log-injections label a-pred xs)
  (display label (current-error-port))
  (displayln (length (filter a-pred xs))))

;;;
;;;
;;; run
;;;
;;;
(define (write-all-injections)
  (define ts (filter (and? (not? show-image?)
                           (not? show-text?))
                     (flatten-erosion-timeline)))

  (log-injections "timeline length: " (const #t) ts)

  (define phrases (parse-phrases))

  (define bkgs (load-backgrounds))

  (define screenshots (map (curry add-category "screenshot")
                           (load-images "images/screenshots")))

  (define ui (map (curry add-category "ui")
                      (load-images "images/ui")))


  (define all-injections (flatten (append ts phrases bkgs screenshots ui)))

  (log-injections "images: " show-image? all-injections)
  (log-injections "texts: " show-text? all-injections)
  (log-injections "videos: " show-video? all-injections)
  (log-injections "backgrounds: " add-background? all-injections)

  (write-injections all-injections))
