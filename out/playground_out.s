main:
	mov	r3, #3 		
	sub	r3, r3, #1 
	lsl	r3, r3, #2 
	mov r2, r3     
	sub	r3, r3, #2 
	add	r3, r3, r2 
	lsl	r3, r3, #1 
	mov	r0, r3    
