(define (problem teleport-assistance7_problem_56_prime)
  (:domain teleport-assistance7_prime)
  (:objects
    pos0-4 pos1-2 pos1-4 pos1-5 pos2-3 pos2-4 pos2-5 pos2-6 pos3-0 pos3-3 pos3-6 pos4-0 pos4-3 pos4-4 pos4-6 pos5-4 pos6-0 pos6-1 pos6-3 pos7-4  - place)

  (:init
    (adj-walk pos0-4 pos1-4 )
    (adj-walk pos1-4 pos0-4 )
    (adj-walk pos1-4 pos1-5 )
    (adj-walk pos1-5 pos1-4 )
    (adj-walk pos1-4 pos2-4 )
    (adj-walk pos2-4 pos1-4 )
    (adj-walk pos1-5 pos2-5 )
    (adj-walk pos2-5 pos1-5 )
    (adj-walk pos2-3 pos2-4 )
    (adj-walk pos2-4 pos2-3 )
    (adj-walk pos2-3 pos3-3 )
    (adj-walk pos3-3 pos2-3 )
    (adj-walk pos2-4 pos2-5 )
    (adj-walk pos2-5 pos2-4 )
    (adj-walk pos2-5 pos2-6 )
    (adj-walk pos2-6 pos2-5 )
    (adj-walk pos2-6 pos3-6 )
    (adj-walk pos3-6 pos2-6 )
    (adj-walk pos3-0 pos4-0 )
    (adj-walk pos4-0 pos3-0 )
    (adj-walk pos3-3 pos4-3 )
    (adj-walk pos4-3 pos3-3 )
    (adj-walk pos3-6 pos4-6 )
    (adj-walk pos4-6 pos3-6 )
    (adj-walk pos4-3 pos4-4 )
    (adj-walk pos4-4 pos4-3 )
    (adj-walk pos4-4 pos5-4 )
    (adj-walk pos5-4 pos4-4 )
    (adj-walk pos6-0 pos6-1 )
    (adj-walk pos6-1 pos6-0 )

    (free pos0-4)
    (free pos1-2)
    (free pos1-4)
    (free pos1-5)
    (free pos2-3)
    (free pos2-4)
    (free pos2-5)
    (free pos2-6)
    (free pos3-0)
    (free pos3-3)
    (free pos3-6)
    (free pos4-0)
    (free pos4-3)
    (free pos4-4)
    (free pos4-6)
    (free pos5-4)
    (free pos6-0)
    (free pos6-1)
    (free pos6-3)
    (free pos7-4)

    (at-prime pos2-5)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos5-4)))
  (:metric minimize (total-cost))

)