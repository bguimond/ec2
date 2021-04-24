#lang racket

(require "../../mk.rkt")
(require "../../reverseo.rkt")

(define result
  (run 1 (lst) (reverseo '(1 2) lst)))

(with-output-to-file "answer"
  (lambda ()
    (print '((2 1))))
  #:exists 'replace)

(with-output-to-file "output"
  (lambda ()
    (print result))
  #:exists 'replace)

