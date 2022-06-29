(define (problem teleport-assistance7_problem_125_prime)
  (:domain teleport-assistance7_prime)
  (:objects
    pos1-4 pos2-1 pos3-1 pos4-1 pos4-2 pos4-3 pos4-4 pos5-1  - place)

  (:init
    (adj-walk pos2-1 pos3-1 )
    (adj-walk pos3-1 pos2-1 )
    (adj-walk pos3-1 pos4-1 )
    (adj-walk pos4-1 pos3-1 )
    (adj-walk pos4-1 pos4-2 )
    (adj-walk pos4-2 pos4-1 )
    (adj-walk pos4-1 pos5-1 )
    (adj-walk pos5-1 pos4-1 )
    (adj-walk pos4-2 pos4-3 )
    (adj-walk pos4-3 pos4-2 )
    (adj-walk pos4-3 pos4-4 )
    (adj-walk pos4-4 pos4-3 )

    (free pos1-4)
    (free pos2-1)
    (free pos3-1)
    (free pos4-1)
    (free pos4-2)
    (free pos4-3)
    (free pos4-4)
    (free pos5-1)

    (at-prime pos5-1)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos4-3)))
  (:metric minimize (total-cost))

)