#lang racket

(require lathe-comforts)
(require lathe-comforts/hash)

(provide (all-defined-out))


(define images-path (make-parameter "/Users/eehah5ru/Desktop/@_PI/_sketches/2020-07-03"))

(define plugin-path (make-parameter "/Users/eehah5ru/works/2019-outsourcing-paradise/erosion-machine-plugin"))

(define (bkg-files)
  (parameterize ([current-directory (plugin-path)])
    (for/list ([f (in-directory "bkg")])
      (path->string f))))


(define (mk-add-backgound bkg-path)
  (hasheq 'type "addBackground"
          'label "background"
          'class "erosion"
          'src bkg-path))

(define (load-backgrounds)
  (define files (bkg-files))

  (map mk-add-backgound
       files))
