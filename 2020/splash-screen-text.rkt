#lang racket

(require predicates)

(require lathe-comforts)
(require lathe-comforts/hash)

(require txexpr)

(require json)

(require (for-syntax "../engine/timeline-syntax.rkt")
         "../engine/timeline-syntax.rkt")


(provide (all-defined-out))

(define (mk-splash-screen-text)
  (splash-screen-text
   (ru "Изнеможение от аутсорсинга"
       "усталость от селф-менеджмента"
       "и подавленное желание сломаться"
       "В Аутсорсинговом парадайзе(паразите)"
       "взаимодействие с желаниями пользователей интернета"
       "связанными с их пользовательским восприятием"
       "с его изменением, деформацией"
       "запутанностью"
       "с его складками")
   (en "Outsourcing exhaustion"
       "fatigue from self-management"
       "the suppressed desire for breaking down"
       "engaging with internet users’ wishs"
       "online user experience to be modified"
       "deformed"
       "perplexed"
       "“wrinkled”")))
