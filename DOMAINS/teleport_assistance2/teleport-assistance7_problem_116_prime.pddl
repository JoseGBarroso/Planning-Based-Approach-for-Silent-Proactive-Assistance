(define (problem teleport-assistance7_problem_116_prime)
  (:domain teleport-assistance7_prime)
  (:objects
    pos0-1 pos1-0 pos2-1 pos2-2 pos3-2 pos4-1 pos4-2 pos5-0 pos5-3  - place)

  (:init
    (adj-walk pos2-1 pos2-2 )
    (adj-walk pos2-2 pos2-1 )
    (adj-walk pos2-2 pos3-2 )
    (adj-walk pos3-2 pos2-2 )
    (adj-walk pos3-2 pos4-2 )
    (adj-walk pos4-2 pos3-2 )
    (adj-walk pos4-1 pos4-2 )
    (adj-walk pos4-2 pos4-1 )

    (free pos0-1)
    (free pos1-0)
    (free pos2-1)
    (free pos2-2)
    (free pos3-2)
    (free pos4-1)
    (free pos4-2)
    (free pos5-0)
    (free pos5-3)

    (at-prime pos2-2)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos4-1)))
  (:metric minimize (total-cost))

)