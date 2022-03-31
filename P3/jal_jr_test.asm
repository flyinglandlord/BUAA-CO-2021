jal next_test
ori $1, $0, 1
ori $2, $0, 2
ori $3, $0, 3
addu $4, $5, $3
next_test:
ori $5, $0, 4
jr $ra
