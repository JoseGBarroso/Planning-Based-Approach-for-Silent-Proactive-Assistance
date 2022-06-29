(define (problem visitall-assistance_problem_42_prime)
  (:domain visitall-assistance_prime)
  (:objects
    node1 node2 node3 node4 node5 node6  - place)
    

  (:init
    (connected node1 node2)
    (connected node2 node3)
    (connected node3 node4)
    (connected node3 node6)
    (connected node4 node5)
    (connected node5 node4)
    (connected node5 node6)
    (connected node6 node4)

    (at-prime node6)
    (visited node6)

    (= (total-cost) 0)
  )


  (:goal (and 
    (visited node1)
    (visited node2)
    (visited node3)
    (visited node4)
    (visited node5)
  ))
  (:metric minimize (total-cost))

)