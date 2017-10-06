target: pwn shellcode web

pwn:
	make -C ./pwn/200-leek/src
	make -C ./pwn/300-nodes/src

shellcode:
	make -C ./shellcode/100-thumb/src
	make -C ./shellcode/200-movon/src
	make -C ./shellcode/300-unimips/src

web:
	make -C ./web/400-Monolith/src

clean:
	make -C ./shellcode/100-thumb/src clean
	make -C ./shellcode/200-movon/src clean
	make -C ./shellcode/300-unimips/src clean
	make -C ./web/400-Monolith/src distclean
