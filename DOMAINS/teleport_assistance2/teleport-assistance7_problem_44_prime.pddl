(define (problem teleport-assistance7_problem_44_prime)
  (:domain teleport-assistance7_prime)
  (:objects
    pos0-0 pos0-1 pos0-3 pos1-0 pos1-3 pos2-2 pos2-3 pos3-1  - place)

  (:init
    (adj-walk pos0-0 pos0-1 )
    (adj-walk pos0-1 pos0-0 )
    (adj-walk pos0-0 pos1-0 )
    (adj-walk pos1-0 pos0-0 )
    (adj-walk pos0-3 pos1-3 )
    (adj-walk pos1-3 pos0-3 )
    (adj-walk pos1-3 pos2-3 )
    (adj-walk pos2-3 pos1-3 )
    (adj-walk pos2-2 pos2-3 )
    (adj-walk pos2-3 pos2-2 )

    (free pos0-0)
    (free pos0-1)
    (free pos0-3)
    (free pos1-0)
    (free pos1-3)
    (free pos2-2)
    (free pos2-3)
    (free pos3-1)

    (at-prime pos2-2)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos0-3)))
  (:metric minimize (total-cost))

)