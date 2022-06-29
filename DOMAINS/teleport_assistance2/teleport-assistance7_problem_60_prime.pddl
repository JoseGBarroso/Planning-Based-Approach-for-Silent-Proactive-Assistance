(define (problem teleport-assistance7_problem_60_prime)
  (:domain teleport-assistance7_prime)
  (:objects
    pos0-2 pos1-0 pos1-1 pos2-0 pos2-3 pos3-0  - place)

  (:init
    (adj-walk pos1-0 pos1-1 )
    (adj-walk pos1-1 pos1-0 )
    (adj-walk pos1-0 pos2-0 )
    (adj-walk pos2-0 pos1-0 )
    (adj-walk pos2-0 pos3-0 )
    (adj-walk pos3-0 pos2-0 )

    (free pos0-2)
    (free pos1-0)
    (free pos1-1)
    (free pos2-0)
    (free pos2-3)
    (free pos3-0)

    (at-prime pos3-0)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos1-1)))
  (:metric minimize (total-cost))

)