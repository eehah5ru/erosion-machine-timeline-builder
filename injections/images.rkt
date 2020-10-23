#lang racket

(require lathe-comforts)
(require lathe-comforts/hash)

(provide (all-defined-out))


(define images-path (make-parameter "/Users/eehah5ru/Desktop/@_PI/_sketches/2020-07-03"))

(define plugin-path (make-parameter "/Users/eehah5ru/works/2019-outsourcing-paradise/erosion-machine-plugin"))

;;;
;;; make list of files in plugin's subdir
;;;
(define (file-names dir)
  (parameterize ([current-directory (plugin-path)])
    (for/list ([f (in-directory dir)])
      (path->string f))))

;;;
;;; list of bkg files
;;;
(define (bkg-files)
  (file-names "bkg"))

;;;
;;; list of images
;;;
(define (image-files)
  (file-names "images"))

;;;
;;; addBackground from path
;;;
(define (mk-add-backgound bkg-path)
  (hasheq 'type "addBackground"
          'label "background"
          'class "erosion"
          'src bkg-path))

;;;
;;; showImage from path
;;;
(define (mk-show-image image-path)
  (hasheq 'type "showImage"
          'source "plugin"
          'label "image"
          'class "erosion"
          'src image-path))

;;;
;;; load backgrounds from directory
;;;
(define (load-backgrounds)
  (define files (bkg-files))

  (map mk-add-backgound
       files))

;;;
;;; load images frrom directory
;;;
(define (load-images subdir)
  (define files (file-names subdir))

  (map mk-show-image
       files))
