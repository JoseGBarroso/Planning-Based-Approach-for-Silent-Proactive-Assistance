(define (problem visitall-assistance_problem_9_prime)
  (:domain visitall-assistance_prime)
  (:objects
    node1 node2 node3 node4 node5 node6 node7 node8 node9 node10 node11  - place)
    

  (:init
    (connected node1 node2)
    (connected node2 node3)
    (connected node2 node6)
    (connected node2 node8)
    (connected node3 node4)
    (connected node4 node3)
    (connected node4 node5)
    (connected node4 node6)
    (connected node4 node7)
    (connected node5 node6)
    (connected node5 node11)
    (connected node6 node3)
    (connected node6 node7)
    (connected node6 node11)
    (connected node7 node2)
    (connected node7 node3)
    (connected node7 node6)
    (connected node7 node8)
    (connected node8 node1)
    (connected node8 node2)
    (connected node8 node9)
    (connected node9 node3)
    (connected node9 node4)
    (connected node9 node10)
    (connected node10 node3)
    (connected node10 node6)
    (connected node10 node11)
    (connected node11 node3)
    (connected node11 node8)
    (connected node11 node10)

    (at-prime node11)
    (visited node11)

    (= (total-cost) 0)
  )


  (:goal (and 
    (visited node1)
    (visited node2)
    (visited node3)
    (visited node4)
    (visited node5)
    (visited node6)
    (visited node7)
    (visited node8)
    (visited node9)
    (visited node10)
  ))
  (:metric minimize (total-cost))

)