#lang racket

(require racket/hash)
(require lathe-comforts)
(require lathe-comforts/hash)

(require txexpr)
(require (except-in markdown
                    xexpr->string))
(require markdown/parse)

(require "erosion-css.rkt")

(provide (all-defined-out))


(define phrases-files
  (make-parameter (list ;"/Users/eehah5ru/Dropbox/eeefff/_works/2019-outsourcing paradise(parasite)/_post-pub/_v2/spinner-deformator - en.md"
                   "/Users/eehah5ru/Dropbox/eeefff/_works/2019-outsourcing paradise(parasite)/_post-pub/_v2/spinner-master-of-paradise - en.md"
                   "/Users/eehah5ru/Dropbox/eeefff/_works/2019-outsourcing paradise(parasite)/_post-pub/_v2/geolocation-deformator - en.md")))

;;;
;;; make show-text structure from xexpr
;;;
(define (xexpr->show-text el)
  (hasheq 'type "showText"
          'label "phrase"
          'class "erosion"
          'text (xexpr->string el)))

;;;
;;; one file
;;;
(define (load-phrases-file p)
  (define md (with-input-from-file p #:mode 'text
               (lambda ()
                 (read-markdown))))

  (map (compose1 add-font-face
                 add-font-size
                 add-shadow
                 xexpr->show-text)
       (filter (compose1 not empty?)
               (map (lambda (el)
                      (match el
                        [(txexpr 'p attrs elems)
                         (txexpr 'p attrs elems)]
                        [_ '()]))
                    md))))

;;;
;;; all files
;;;
(define (parse-phrases)

  (append (map load-phrases-file (phrases-files))))
