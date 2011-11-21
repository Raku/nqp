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

	dyncall_call_x64_apple.s

	SystemV x64 calls for apple GNU AS
	November 28, 2007

/*///////////////////////////////////////////////////////////////////////

.intel_syntax
.text

.globl _dcCall_x64_sysv

/* Main dyncall call. */
_dcCall_x64_sysv:

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

	movsd		%xmm0, [%rcx   ]	/* Copy first 8 floats to xmm0-xmm7 (this makes rcx free to use). */
	movsd		%xmm1, [%rcx+ 8]
	movsd		%xmm2, [%rcx+16]
	movsd		%xmm3, [%rcx+24]
	movsd		%xmm4, [%rcx+32]
	movsd		%xmm5, [%rcx+40]
	movsd		%xmm6, [%rcx+48]
	movsd		%xmm7, [%rcx+56]	/* 'movsd' is a 128-bit media instruction here, not a string operation */

	sub			%rsp, %rdi					/* Setup stack frame by subtracting the size of the arguments. */

	mov			%rax, %rdi					/* Align stack. */
	add			%rax, 8
	and			%rax, 15
	sub			%rsp, %rax

	mov			%rcx, %rdi					/* Store number of bytes to copy to stack in rcx (for rep movsb). */
	mov			%rdi, %rsp					/* Store pointer to beginning of stack arguments in rdi (for rep movsb). */

	rep movsb	/* @@@ should be optimized (e.g. movq) */

	mov			%rdi, [%rdx   ]	/* Copy first six int/pointer arguments to rdi, rsi, rdx, rcx, r8, r9. */
	mov			%rsi, [%rdx+ 8]
	mov			%rcx, [%rdx+24]
	mov			%r8,  [%rdx+32]
	mov			%r9,  [%rdx+40]
	mov			%rdx, [%rdx+16]	/* Set rdx last to not overwrite it to soon. */

	mov			%al, 8						/* Put upper bound of number of used xmm registers in al. */
	call		%rbx						/* Invoke function. */

	mov			%rsp, %rbp					/* Restore stack pointer (such that we can pop the preserved values). */

	pop			%rbx						/* Restore rbx. */
	pop			%rbp						/* Pseudo-epilog. */

	ret

