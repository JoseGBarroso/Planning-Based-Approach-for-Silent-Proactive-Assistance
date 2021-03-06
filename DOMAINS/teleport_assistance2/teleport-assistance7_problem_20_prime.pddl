(define (problem teleport-assistance7_problem_20_prime)
  (:domain teleport-assistance7_prime)
  (:objects
    pos0-2 pos0-3 pos0-4 pos0-5 pos1-1 pos1-2 pos1-3 pos1-4 pos1-5 pos2-0 pos2-1 pos2-2 pos2-3 pos2-4 pos2-5 pos3-2 pos3-3 pos3-4 pos3-5 pos4-1 pos4-2 pos4-3 pos4-4 pos4-5 pos5-0 pos5-1 pos5-3 pos5-4 pos5-5 pos6-2 pos6-3 pos6-4 pos6-5 pos7-0 pos7-1 pos7-2 pos7-3 pos7-4  - place)

  (:init
    (adj-walk pos0-2 pos0-3 )
    (adj-walk pos0-3 pos0-2 )
    (adj-walk pos0-2 pos1-2 )
    (adj-walk pos1-2 pos0-2 )
    (adj-walk pos0-3 pos0-4 )
    (adj-walk pos0-4 pos0-3 )
    (adj-walk pos0-3 pos1-3 )
    (adj-walk pos1-3 pos0-3 )
    (adj-walk pos0-4 pos0-5 )
    (adj-walk pos0-5 pos0-4 )
    (adj-walk pos0-4 pos1-4 )
    (adj-walk pos1-4 pos0-4 )
    (adj-walk pos0-5 pos1-5 )
    (adj-walk pos1-5 pos0-5 )
    (adj-walk pos1-1 pos1-2 )
    (adj-walk pos1-2 pos1-1 )
    (adj-walk pos1-1 pos2-1 )
    (adj-walk pos2-1 pos1-1 )
    (adj-walk pos1-2 pos1-3 )
    (adj-walk pos1-3 pos1-2 )
    (adj-walk pos1-2 pos2-2 )
    (adj-walk pos2-2 pos1-2 )
    (adj-walk pos1-3 pos1-4 )
    (adj-walk pos1-4 pos1-3 )
    (adj-walk pos1-3 pos2-3 )
    (adj-walk pos2-3 pos1-3 )
    (adj-walk pos1-4 pos1-5 )
    (adj-walk pos1-5 pos1-4 )
    (adj-walk pos1-4 pos2-4 )
    (adj-walk pos2-4 pos1-4 )
    (adj-walk pos1-5 pos2-5 )
    (adj-walk pos2-5 pos1-5 )
    (adj-walk pos2-0 pos2-1 )
    (adj-walk pos2-1 pos2-0 )
    (adj-walk pos2-1 pos2-2 )
    (adj-walk pos2-2 pos2-1 )
    (adj-walk pos2-2 pos2-3 )
    (adj-walk pos2-3 pos2-2 )
    (adj-walk pos2-2 pos3-2 )
    (adj-walk pos3-2 pos2-2 )
    (adj-walk pos2-3 pos2-4 )
    (adj-walk pos2-4 pos2-3 )
    (adj-walk pos2-3 pos3-3 )
    (adj-walk pos3-3 pos2-3 )
    (adj-walk pos2-4 pos2-5 )
    (adj-walk pos2-5 pos2-4 )
    (adj-walk pos2-4 pos3-4 )
    (adj-walk pos3-4 pos2-4 )
    (adj-walk pos2-5 pos3-5 )
    (adj-walk pos3-5 pos2-5 )
    (adj-walk pos3-2 pos3-3 )
    (adj-walk pos3-3 pos3-2 )
    (adj-walk pos3-2 pos4-2 )
    (adj-walk pos4-2 pos3-2 )
    (adj-walk pos3-3 pos3-4 )
    (adj-walk pos3-4 pos3-3 )
    (adj-walk pos3-3 pos4-3 )
    (adj-walk pos4-3 pos3-3 )
    (adj-walk pos3-4 pos3-5 )
    (adj-walk pos3-5 pos3-4 )
    (adj-walk pos3-4 pos4-4 )
    (adj-walk pos4-4 pos3-4 )
    (adj-walk pos3-5 pos4-5 )
    (adj-walk pos4-5 pos3-5 )
    (adj-walk pos4-1 pos4-2 )
    (adj-walk pos4-2 pos4-1 )
    (adj-walk pos4-1 pos5-1 )
    (adj-walk pos5-1 pos4-1 )
    (adj-walk pos4-2 pos4-3 )
    (adj-walk pos4-3 pos4-2 )
    (adj-walk pos4-3 pos4-4 )
    (adj-walk pos4-4 pos4-3 )
    (adj-walk pos4-3 pos5-3 )
    (adj-walk pos5-3 pos4-3 )
    (adj-walk pos4-4 pos4-5 )
    (adj-walk pos4-5 pos4-4 )
    (adj-walk pos4-4 pos5-4 )
    (adj-walk pos5-4 pos4-4 )
    (adj-walk pos4-5 pos5-5 )
    (adj-walk pos5-5 pos4-5 )
    (adj-walk pos5-0 pos5-1 )
    (adj-walk pos5-1 pos5-0 )
    (adj-walk pos5-3 pos5-4 )
    (adj-walk pos5-4 pos5-3 )
    (adj-walk pos5-3 pos6-3 )
    (adj-walk pos6-3 pos5-3 )
    (adj-walk pos5-4 pos5-5 )
    (adj-walk pos5-5 pos5-4 )
    (adj-walk pos5-4 pos6-4 )
    (adj-walk pos6-4 pos5-4 )
    (adj-walk pos5-5 pos6-5 )
    (adj-walk pos6-5 pos5-5 )
    (adj-walk pos6-2 pos6-3 )
    (adj-walk pos6-3 pos6-2 )
    (adj-walk pos6-2 pos7-2 )
    (adj-walk pos7-2 pos6-2 )
    (adj-walk pos6-3 pos6-4 )
    (adj-walk pos6-4 pos6-3 )
    (adj-walk pos6-3 pos7-3 )
    (adj-walk pos7-3 pos6-3 )
    (adj-walk pos6-4 pos6-5 )
    (adj-walk pos6-5 pos6-4 )
    (adj-walk pos6-4 pos7-4 )
    (adj-walk pos7-4 pos6-4 )
    (adj-walk pos7-0 pos7-1 )
    (adj-walk pos7-1 pos7-0 )
    (adj-walk pos7-1 pos7-2 )
    (adj-walk pos7-2 pos7-1 )
    (adj-walk pos7-2 pos7-3 )
    (adj-walk pos7-3 pos7-2 )
    (adj-walk pos7-3 pos7-4 )
    (adj-walk pos7-4 pos7-3 )

    (free pos0-2)
    (free pos0-3)
    (free pos0-4)
    (free pos0-5)
    (free pos1-1)
    (free pos1-2)
    (free pos1-3)
    (free pos1-4)
    (free pos1-5)
    (free pos2-0)
    (free pos2-1)
    (free pos2-2)
    (free pos2-3)
    (free pos2-4)
    (free pos2-5)
    (free pos3-2)
    (free pos3-3)
    (free pos3-4)
    (free pos3-5)
    (free pos4-1)
    (free pos4-2)
    (free pos4-3)
    (free pos4-4)
    (free pos4-5)
    (free pos5-0)
    (free pos5-1)
    (free pos5-3)
    (free pos5-4)
    (free pos5-5)
    (free pos6-2)
    (free pos6-3)
    (free pos6-4)
    (free pos6-5)
    (free pos7-0)
    (free pos7-1)
    (free pos7-2)
    (free pos7-3)
    (free pos7-4)

    (at-prime pos7-0)
    (= (total-cost) 0)
  )


  (:goal (and (at-prime pos4-5)))
  (:metric minimize (total-cost))

)