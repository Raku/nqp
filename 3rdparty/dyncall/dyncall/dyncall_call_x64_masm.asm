;//////////////////////////////////////////////////////////////////////////////
;
; Copyright (c) 2007-2009 Daniel Adler <dadler@uni-goettingen.de>, 
;                         Tassilo Philipp <tphilipp@potion-studios.com>
;
; Permission to use, copy, modify, and distribute this software for any
; purpose with or without fee is hereby granted, provided that the above
; copyright notice and this permission notice appear in all copies.
;
; THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
; WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
; MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
; ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
; WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
; ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
; OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
;
;//////////////////////////////////////////////////////////////////////////////

;///////////////////////////////////////////////////////////////////////
;
;	dyncall_call_x64_masm.asm
;
;	MS Windows x64 calls (for MASM)
;	November 28, 2007
;
;///////////////////////////////////////////////////////////////////////


.CODE


; Main dyncall call.
dcCall_x64_win64 PROC

	OPTION PROLOGUE:NONE, EPILOGUE:NONE

	; arguments:
	; rcx : size of arguments to be passed via stack
	; rdx : pointer to arguments to be passed via stack
	; r8  : pointer to arguments to be passed by registers
	; r9  : target function pointer

	push		rbp							; Pseudo-prolog - preserve rbp.
	push		rsi							; Preserve rsi and rdi.
	push		rdi

	mov			rbp, rsp					; Store stack pointer in rbp.

	sub			rsp, rcx					; Setup stack frame by subtracting the size of the arguments.

	mov			rax, rcx					; Align stack.
	add			rax, 8
	and			rax, 15
	sub			rsp, rax

	mov			rsi, rdx					; Let rsi point to the arguments.
	mov			rdi, rsp					; Store pointer to beginning of stack arguments in rdi (for rep movsb).
	mov			rax, r9						; Put function address in rax.

	rep movsb	; @@@ should be optimized (e.g. movq)

	mov			rcx,  qword ptr[r8   ]		; Copy first four arguments to rcx, rdx, r8, r9 and xmm0-xmm3.
	mov			rdx,  qword ptr[r8+ 8]
	mov			r9,   qword ptr[r8+24]		; Set r9 first to not overwrite r8 too soon.
	mov			r8,   qword ptr[r8+16]
	movd		xmm0, rcx
	movd		xmm1, rdx
	movd		xmm2, r8
	movd		xmm3, r9

	push		r9							; Push first four arguments onto the stack preserve area.
	push		r8
	push		rdx
	push		rcx

	call		rax							; Invoke function.

	mov			rsp, rbp					; Restore stack pointer (such that we can pop the preserved values).

	pop			rdi							; Restore rsi and rdi.
	pop			rsi
	pop			rbp							; Pseudo-epilog.

	ret

dcCall_x64_win64 ENDP

END
