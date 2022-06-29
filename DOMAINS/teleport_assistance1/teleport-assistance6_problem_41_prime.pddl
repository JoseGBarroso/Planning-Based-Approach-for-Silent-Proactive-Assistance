(define (problem teleport-assistance6_problem_41_prime)
  (:domain teleport-assistance6_prime)
  (:objects
    pos0-0 pos0-3 pos0-6 pos0-7 pos0-8 pos1-3 pos1-6 pos1-8 pos2-5 pos2-6 pos3-1 pos3-5 pos3-7 pos3-8  - place)

  (:init
    (adj-walk pos0-3 pos1-3 )
    (adj-walk pos1-3 pos0-3 )
    (adj-walk pos0-6 pos0-7 )
    (adj-walk pos0-7 pos0-6 )
    (adj-walk pos0-6 pos1-6 )
    (adj-walk pos1-6 pos0-6 )
    (adj-walk pos0-7 pos0-8 )
    (adj-walk pos0-8 pos0-7 )
    (adj-walk pos0-8 pos1-8 )
    (adj-walk pos1-8 pos0-8 )
    (adj-walk pos1-6 pos2-6 )
    (adj-walk pos2-6 pos1-6 )
    (adj-walk pos2-5 pos2-6 )
    (adj-walk pos2-6 pos2-5 )
    (adj-walk pos2-5 pos3-5 )
    (adj-walk pos3-5 pos2-5 )
    (adj-walk pos3-7 pos3-8 )
    (adj-walk pos3-8 pos3-7 )

    (at-prime pos3-5)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos1-8)))
  (:metric minimize (total-cost))

)