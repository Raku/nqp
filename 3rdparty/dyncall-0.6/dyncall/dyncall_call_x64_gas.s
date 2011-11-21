/*/////////////////////////////////////////////////////////////////////////////

 Copyright (c) 2007-2009 Daniel Adler <dadler@uni-goettingen.de>, 
                         Tassilo Philipp <tphilipp@potion-studios.com>

 Permission to use, copy, modify, and distribute this software for any
 purpose with or without fee is hereby granted, provided that the above
 copyright notice and this permission notice appear in all copies.

 THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

/////////////////////////////////////////////////////////////////////////////*/

/*///////////////////////////////////////////////////////////////////////

	dyncall__call_x64_gas.s

	SystemV x64 calls for GAS
	November 28, 2007

/*///////////////////////////////////////////////////////////////////////

.intel_syntax
.text

.globl dcCall_x64_sysv
	.type dcCall_x64_sysv, @function

dcCall_x64_sysv:

	/* arguments: */
	/* rdi : size of arguments to be passed via stack */
	/* rsi : pointer to arguments to be passed via the stack */
	/* rdx : pointer to arguments of integral/pointer type to be passed via registers */
	/* rcx : pointer to arguments of floating point type to be passed via registers */
	/* r8  : target function pointer */

	push		%rbp						/* Pseudo-prolog - preserve rbp. */
	push		%rbx						/* Preserve rbx and store pointer to function in it. */

	mov			%rbp, %rsp					/* Store stack pointer in rbp. */

	mov			%rbx, %r8

	movsd		%xmm0, qword ptr[%rcx   ]	/* Copy first 8 floats to xmm0-xmm7 (this makes rcx free to use). */
	movsd		%xmm1, qword ptr[%rcx+ 8]
	movsd		%xmm2, qword ptr[%rcx+16]
	movsd		%xmm3, qword ptr[%rcx+24]
	movsd		%xmm4, qword ptr[%rcx+32]
	movsd		%xmm5, qword ptr[%rcx+40]
	movsd		%xmm6, qword ptr[%rcx+48]
	movsd		%xmm7, qword ptr[%rcx+56]

	sub			%rsp, %rdi					/* Setup stack frame by subtracting the size of the arguments. */

	mov			%rax, %rdi					/* Align stack. */
	add			%rax, 8
	and			%rax, 15
	sub			%rsp, %rax

	mov			%rcx, %rdi					/* Store number of bytes to copy to stack in rcx (for rep movsb). */
	mov			%rdi, %rsp					/* Store pointer to beginning of stack arguments in rdi (for rep movsb). */

	rep movsb	/* @@@ should be optimized (e.g. movq) */

	mov			%rdi, qword ptr[%rdx   ]	/* Copy first six int/pointer arguments to rdi, rsi, rdx, rcx, r8, r9. */
	mov			%rsi, qword ptr[%rdx+ 8]
	mov			%rcx, qword ptr[%rdx+24]
	mov			%r8,  qword ptr[%rdx+32]
	mov			%r9,  qword ptr[%rdx+40]
	mov			%rdx, qword ptr[%rdx+16]	/* Set rdx last to not overwrite it to soon. */

	mov			%al, 8						/* Put upper bound of number of used xmm registers in al. */
	call		%rbx						/* Invoke function. */

	mov			%rsp, %rbp					/* Restore stack pointer (such that we can pop the preserved values). */

	pop			%rbx						/* Restore rbx. */
	pop			%rbp						/* Pseudo-epilog. */

	ret

/* Stack markings for ELF/GNU to specify no executable stack */

.globl dcCall_x64_win64
	.type dcCall_x64_win64, @function


dcCall_x64_win64:
	ret

#if defined (__linux__) && defined(__ELF__)
.section .note.GNU-stack,"",%progbits
#endif

