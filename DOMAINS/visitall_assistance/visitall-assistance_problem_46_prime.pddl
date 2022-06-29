(define (problem visitall-assistance_problem_46_prime)
  (:domain visitall-assistance_prime)
  (:objects
    node1 node2 node3 node4 node5 node6 node7 node8 node9 node10  - place)
    

  (:init
    (connected node1 node2)
    (connected node1 node4)
    (connected node1 node8)
    (connected node2 node3)
    (connected node2 node9)
    (connected node3 node4)
    (connected node4 node5)
    (connected node5 node1)
    (connected node5 node6)
    (connected node5 node9)
    (connected node6 node7)
    (connected node7 node8)
    (connected node8 node9)
    (connected node9 node4)
    (connected node9 node10)

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
    (visited node7)
    (visited node8)
    (visited node9)
    (visited node10)
  ))
  (:metric minimize (total-cost))

)