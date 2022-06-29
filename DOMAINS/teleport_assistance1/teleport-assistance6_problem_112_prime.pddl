(define (problem teleport-assistance6_problem_112_prime)
  (:domain teleport-assistance6_prime)
  (:objects
    pos0-2 pos0-4 pos1-0 pos1-4 pos4-0 pos4-1 pos4-2 pos4-4 pos5-0 pos5-2  - place)

  (:init
    (adj-walk pos0-4 pos1-4 )
    (adj-walk pos1-4 pos0-4 )
    (adj-walk pos4-0 pos4-1 )
    (adj-walk pos4-1 pos4-0 )
    (adj-walk pos4-0 pos5-0 )
    (adj-walk pos5-0 pos4-0 )
    (adj-walk pos4-1 pos4-2 )
    (adj-walk pos4-2 pos4-1 )
    (adj-walk pos4-2 pos5-2 )
    (adj-walk pos5-2 pos4-2 )

    (at-prime pos5-2)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos5-0)))
  (:metric minimize (total-cost))

)