TEXT ·nop(SB),7,$64-4
	MOVL $0, 0(SP)
	MOVL $1000000000, 4(SP)
	MOVL n+0(FP), CX
l0:
	DECL CX
	JNS l0
	RET

TEXT ·bound(SB),7,$64-4
	MOVL $0, 0(SP)
	MOVL $1000000000, 4(SP)
	MOVL n+0(FP), CX
l1:
	BOUNDL CX, 0(SP)
	DECL CX
	JNS l1
	RET

TEXT ·cmp(SB),7,$64-4
	MOVL $0, 0(SP)
	MOVL $1000000000, 4(SP)
	MOVL n+0(FP), CX
l2:
	CMPL 0(SP), CX
	JGT l3
	DECL CX
	JNS l2
	RET
l3:
	MOVL $0, 0

TEXT ·cmpreg(SB),7,$64-4
	MOVL $0, 0(SP)
	MOVL $1000000000, 4(SP)
	MOVL n+0(FP), CX
	MOVL 4(SP), DX
l4:
	CMPL DX, CX
	JLT l5
	DECL CX
	JNS l4
	RET
l5:
	MOVL $0, 0