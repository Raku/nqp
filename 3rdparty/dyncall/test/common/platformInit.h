/*

 Package: dyncall
 Library: test
 File: test/common/platformInit.h
 Description: 
 License:

   Copyright (c) 2007-2011 Daniel Adler <dadler@uni-goettingen.de>, 
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

*/



#include "../../dyncall/dyncall_macros.h"

#if defined(DC__OS_NDS)

#include <nds.h>
#include <stdio.h>

void dcTest_initPlatform()
{
  powerOn(POWER_ALL);

  /* Interrupt handlers. */
  /*irqInit();*/
  /*irqSet(IRQ_VBLANK, OnIrq);*/

  /* Use the touch screen for output. */
  videoSetMode(MODE_FB0);
  vramSetBankA(VRAM_A_LCD);
  videoSetModeSub(MODE_0_2D | DISPLAY_BG0_ACTIVE);
  vramSetBankC(VRAM_C_SUB_BG);
  REG_BG0CNT_SUB = BG_MAP_BASE(31);

  /* Set the colour of the font. */
  /* BG_PALETTE_SUB[255] = RGB15(25, 11, 9); */

  /* consoleInitDefault((u16*)SCREEN_BASE_BLOCK_SUB(31), (u16*)CHAR_BASE_BLOCK_SUB(0), 16); */
  consoleDemoInit();
}


void dcTest_deInitPlatform()
{
  /* Main loop - console style. */
  while(1) {
    swiWaitForVBlank();
  }
}

#elif defined(DC__OS_PSP)

#include <pspkernel.h>
#include <pspdebug.h>
#include <pspdisplay.h>

PSP_MODULE_INFO("dyncall_test",0,1,1);


#define printf pspDebugScreenPrintf

int exit_callback(int arg1, int arg2, void *common)
{
  sceKernelExitGame();
  return 0;
}

int CallbackThread(SceSize args, void *argp)
{
  int cbid;
  cbid = sceKernelCreateCallback("Exit Callback", &exit_callback, NULL);
  sceKernelRegisterExitCallback(cbid);
  sceKernelSleepThreadCB();
  return 0;
}

void dcTest_initPlatform()
{
  pspDebugScreenInit();
  pspDebugScreenClear();

  int thid = 0;
  thid = sceKernelCreateThread("update_thread", &CallbackThread, 0x11, 0xFA0, THREAD_ATTR_USER, 0);
  if (thid >= 0)
      sceKernelStartThread(thid, 0, 0);

  sceDisplayWaitVblankStart();
  pspDebugScreenSetXY(0, 0);
}

void dcTest_deInitPlatform()
{
  sceKernelSleepThread();
  sceKernelExitGame();
}

#else

void dcTest_initPlatform()
{
}

void dcTest_deInitPlatform()
{
}

#endif
