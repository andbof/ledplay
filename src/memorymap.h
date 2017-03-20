#include <stdint.h>

/* 12.2.1 System Reset Status and ID Register (SIM_SRSID) */
#define SIM_SRSID (*(volatile uint32_t*)(0x40048000))
#define SIM_SRSID_SACKERR (1 << 13)
#define SIM_SRSID_MDMAP (1 << 11)
#define SIM_SRSID_SW (1 << 10)
#define SIM_SRSID_LOCKUP (1 << 9)
#define SIM_SRSID_POR (1 << 7)
#define SIM_SRSID_PIN (1 << 6)
#define SIM_SRSID_WDOG (1 << 5)
#define SIM_SRSID_LOC (1 << 2)
#define SIM_SRSID_LVD (1 << 1)

/* 12.2.2 System Options Register (SIM_SOPT) */
#define SIM_SOPT (*(volatile uint32_t*)(0x40048004))
#define NMIE (1 << 1)

/* 12.2.3 Pin Selection Register (SIM_PINSEL) */
#define SIM_PINSEL (*(volatile uint32_t*)(0x40048008))
#define PWTCLKPS (1 << 31)
#define FTM2CLKPS (1 << 30)
#define FTM0CLKPS (1 << 28)
#define FTM2PS3 (1 << 15)
#define FTM2PS2 (1 << 14)
#define FTM0PS1 (1 << 9)
#define FTM0PS0 (1 << 8)
#define UART0PS (1 << 7)
#define SPI0PS (1 << 6)
#define I2C0PS (1 << 5)

/* 12.2.4 System Clock Gating Control Register (SIM_SCGC) */
#define SIM_SCGC (*(volatile uint32_t*)(0x4004800c))
#define ACMP1 (1 << 31)
#define ACMP0 (1 << 30)
#define ADC (1 << 29)
#define IRQ (1 << 27)
#define KBI1 (1 << 25)
#define KBI0 (1 << 24)
#define UART0 (1 << 20)
#define SPI0 (1 << 18)
#define I2C (1 << 17)
#define SWD (1 << 13)
#define FLASH (1 << 12)
#define CRC (1 << 10)
#define FTM2 (1 << 7)
#define FTM0 (1 << 5)
#define PWT (1 << 4)
#define PIT (1 << 1)
#define RTC (1 << 0)

/* 12.2.8 Clock Divider Register (SIM_CLKDIV) */
#define SIM_CLKDIV (*(volatile uint32_t*)(0x4004801c))

/* 13.4.1 System Power Management Status and Control 1 Register (PMC_SPMSC1) */
#define PMC_SPMSC1 (*(volatile uint8_t*)(0x4007d000))
#define PMC_SPMSC1_LVWF (1 << 7)
#define PMC_SPMSC1_LVWACK (1 << 6)
#define PMC_SPMSC1_LVWIE (1 << 5)
#define PMC_SPMSC1_LVDRE (1 << 4)
#define PMC_SPMSC1_LVDSE (1 << 3)
#define PMC_SPMSC1_LVDE (1 << 2)
#define PMC_SPMSC1_BGBE (1 << 0)

/* 13.4.2 System Power Management Status and Control 2 Register (PMC_SPMSC2) */
#define PMC_SPMSC2 (*(volatile uint8_t*)(0x4007d001))
#define PMC_SPMSC2_LVDV (1 << 6)
#define PMC_SPMSC2_LVWV_LOW (0)
#define PMC_SPMSC2_LVWV_MIDDLE1 (1 << 4)
#define PMC_SPMSC2_LVWV_MIDDLE2 (1 << 5)
#define PMC_SPMSC2_LVWV_HIGH (1 << 5 | 1 << 4)

/* 16.2.1 Watchdog Control and Status Register 1 (WDOG_CS1) */
#define WDOG_CS1 (*(volatile uint8_t*)(0x40052000))
#define WDOG_EN (1 << 7)
#define WDOG_INT (1 << 6)
#define WDOG_UPDATE (1 << 5)
#define WDOG_TST (1 << 4 | 1 << 3)
#define WDOG_DBG (1 << 2)
#define WDOG_WAIT (1 << 1)
#define WDOG_STOP (1 << 0)

/* 16.2.2 Watchdog Control and Status Register 2 (WDOG_CS2) */
#define WDOG_CS2 (*(volatile uint8_t*)(0x40052001))
#define WDOG_WIN (1 << 7)
#define WDOG_FLG (1 << 6)
#define WDOG_PRES (1 << 4)
#define WDOG_CLK (1 << 1 | 1 << 0)

/* 16.2.3 Watchdog Counter Register: High (WDOG_CNTH) */
#define WDOG_CNTH (*(volatile uint8_t*)(0x40052002))

/* 16.2.4 Watchdog Counter Register: Low (WDOG_CNTL) */
#define WDOG_CNTL (*(volatile uint8_t*)(0x40052003))

/*
 * According to the reference manual, this register is not defined for word
 * access, but the chapter on "Configuring watchdog" uses it that way and in
 * when testing it turned out byte access didn't properly disable the watchdog
 * (but word access did).
 */
#define WDOG_CNT (*(volatile uint16_t*)(0x40052002))

/* 16.2.5 Watchdog Timeout Value Register: High (WDOG_TOVALH) */
#define WDOG_TOVALH (*(volatile uint8_t*)(0x40052004))

/* 16.2.6 Watchdog Timeout Value Register: Low (WDOG_TOVALL) */
#define WDOG_TOVALL (*(volatile uint8_t*)(0x40052005))

/* 16.2.7 Watchdog Window Register: High (WDOG_WINH) */
#define WDOG_WINH (*(volatile uint8_t*)(0x40052006))

/* 16.2.8 Watchdog Window Register: Log (WDOG_WINL) */
#define WDOG_WINL (*(volatile uint8_t*)(0x40052007))

/* 32.2 UART signal descriptions */
#define UART0_BDH (*(volatile uint8_t*)(0x4006a000))
#define UART0_BDL (*(volatile uint8_t*)(0x4006a001))
#define UART0_C1 (*(volatile uint8_t*)(0x4006a002))
#define UART0_C2 (*(volatile uint8_t*)(0x4006a003))
#define UART0_S1 (*(volatile const uint8_t*)(0x4006a004))
#define UART0_S2 (*(volatile uint8_t*)(0x4006a005))
#define UART0_C3 (*(volatile uint8_t*)(0x4006a006))
#define UART0_D (*(volatile uint8_t*)(0x4006a007))

/* 32.3.1 UART Baud Rate Register: High (UARTx_BDH) */
#define LBKDIE (1 << 7)
#define RXEDGIE (1 << 6)
#define SBNS (1 << 5)
#define SBRH (1 << 3 | 1 << 2 | 1 << 1 | 1 << 0)

/* 32.3.3 UART Control Register 1 (UARTx_C1) */
#define LOOPS (1 << 7)
#define UARTSWAI (1 << 6)
#define RSRC (1 << 5)
#define C1_M (1 << 4)
#define WAKE (1 << 3)
#define ILT (1 << 2)
#define C1_PE (1 << 1)
#define C1_PT (1 << 0)

/* 32.3.4 UART Control Register 2 (UARTx_C2) */
#define UART_TIE (1 << 7)
#define TCIE (1 << 6)
#define RIE (1 << 5)
#define ILIE (1 << 4)
#define C2_TE (1 << 3)
#define C2_RE (1 << 2)
#define RWU (1 << 1)
#define SBK (1 << 0)

/* 32.3.5 UART Status Register 1 (UARTx_S1) */
#define TDRE (1 << 7)
#define S1_TC (1 << 6)
#define RDRF (1 << 5)
#define IDLE (1 << 4)
#define S1_OR (1 << 3)
#define S1_NF (1 << 2)
#define S1_FE (1 << 1)
#define S1_PE (1 << 0)

/* 32.3.6 UART Status Register 2 (UARTx_S2) */
#define LBKDIF (1 << 7)
#define RXEDGIF (1 << 6)
#define RXINV (1 << 4)
#define RWUID (1 << 3)
#define BRK13 (1 << 2)
#define LBKDE (1 << 1)
#define RAF (1 << 0)

/* 32.3.7 UART Control Register 3 (UARTx_C3) */
#define R8 (1 << 7)
#define T8 (1 << 6)
#define TXDIR (1 << 5)
#define TXINV (1 << 4)
#define ORIE (1 << 3)
#define NEIE (1 << 2)
#define FEIE (1 << 1)
#define PEIE (1 << 0)

/* 33.2.1 GPIO/FGPIO register bits assignment */
#define GPIOA_PDOR (*(volatile uint32_t*)(0x400ff000))
#define GPIOA_PSOR (*(volatile uint32_t*)(0x400ff004))
#define GPIOA_PCOR (*(volatile uint32_t*)(0x400ff008))
#define GPIOA_PTOR (*(volatile uint32_t*)(0x400ff00c))
#define GPIOA_PDIR (*(volatile uint32_t*)(0x400ff010))
#define GPIOA_PDDR (*(volatile uint32_t*)(0x400ff014))
#define GPIOA_PIDR (*(volatile uint32_t*)(0x400ff018))

#define PTD7 (1 << 31)
#define PTD6 (1 << 30)
#define PTD5 (1 << 29)
#define PTD4 (1 << 28)
#define PTD3 (1 << 27)
#define PTD2 (1 << 26)
#define PTD1 (1 << 25)
#define PTD0 (1 << 24)
#define PTC7 (1 << 23)
#define PTC6 (1 << 22)
#define PTC5 (1 << 21)
#define PTC4 (1 << 20)
#define PTC3 (1 << 19)
#define PTC2 (1 << 18)
#define PTC1 (1 << 17)
#define PTC0 (1 << 16)
#define PTB7 (1 << 15)
#define PTB6 (1 << 14)
#define PTB5 (1 << 13)
#define PTB4 (1 << 12)
#define PTB3 (1 << 11)
#define PTB2 (1 << 10)
#define PTB1 (1 << 9)
#define PTB0 (1 << 8)
#define PTA7 (1 << 7)
#define PTA6 (1 << 6)
#define PTA5 (1 << 5)
#define PTA4 (1 << 4)
#define PTA3 (1 << 3)
#define PTA2 (1 << 2)
#define PTA1 (1 << 1)
#define PTA0 (1 << 0)

/* 34.4 Memory Map and Registers (KBI) */
#define KBI0_SC (*(volatile uint8_t*)(0x40079000))
#define KBI0_PE (*(volatile uint8_t*)(0x40079001))
#define KBI0_ES (*(volatile uint8_t*)(0x40079002))
#define KBI1_SC (*(volatile uint8_t*)(0x4007a000))
#define KBI1_PE (*(volatile uint8_t*)(0x4007a001))
#define KBI1_ES (*(volatile uint8_t*)(0x4007a002))

#define KBF (1 << 3)
#define KBACK (1 << 2)
#define KBIE (1 << 1)
#define KBMOD (1 << 0)

/* 4.2. NVIC register summary, Cortex-M0+ Techincal Reference Manual */
#define NVIC_ISER (*(volatile uint32_t*)(0xe000e100))
#define NVIC_ICER (*(volatile uint32_t*)(0xe000e180))
#define NVIC_ISPR (*(volatile uint32_t*)(0xe000e200))
#define NVIC_ICPR (*(volatile uint32_t*)(0xe000e280))
#define NVIC_IPR0 (*(volatile uint32_t*)(0xe000e400))
#define NVIC_IPR1 (*(volatile uint32_t*)(0xe000e404))
#define NVIC_IPR2 (*(volatile uint32_t*)(0xe000e408))
#define NVIC_IPR3 (*(volatile uint32_t*)(0xe000e40c))
#define NVIC_IPR4 (*(volatile uint32_t*)(0xe000e410))
#define NVIC_IPR5 (*(volatile uint32_t*)(0xe000e414))
#define NVIC_IPR6 (*(volatile uint32_t*)(0xe000e418))
#define NVIC_IPR7 (*(volatile uint32_t*)(0xe000e41c))

/* 4.3. System Control Block, Cortex-M0+ Devices Generic User Guide */
#define CPUID (*(volatile uint32_t*)(0xe000ed00))
#define ICSR (*(volatile uint32_t*)(0xe000ed04))
#define VTOR (*(volatile uint32_t*)(0xe000ed08))
#define AIRCR (*(volatile uint32_t*)(0xe000ed0c))
#define SCR (*(volatile uint32_t*)(0xe000ed10))
#define CCR (*(volatile uint32_t*)(0xe000ed14))
#define SHPR2 (*(volatile uint32_t*)(0xe000ed1c))
#define SHPR3 (*(volatile uint32_t*)(0xe000ed20))

/* Table 4.14. SCR bit assignments, Cortex-M0+ Devices Generic User Guide */
#define SEVONPEND (1 << 4)
#define SLEEPDEEP (1 << 2)
#define SLEEPONEXIT (1 << 1)

/* 20.3.1 ICS Control Register 1 (ICS_C1) */
#define ICS_C1 (*(volatile uint8_t*)(0x40064000))
#define CLKS (1 << 7 | 1 << 6)
#define RDIV (1 << 5 | 1 << 4 | 1 << 3)
#define IREFS (1 << 2)
#define IRCLKEN (1 << 1)
#define IREFSTEN (1 << 0)

/* 20.3.2 ICS Control Register 2 (ICS_C2) */
#define ICS_C2 (*(volatile uint8_t*)(0x40064001))
#define BDIV (1 << 7 | 1 << 6 | 1 << 5)
#define LP (1 << 4)

/* 20.3.3 ICS Control Register 3 (ICS_C3) */
#define ICS_C3 (*(volatile uint8_t*)(0x40064002))

/* 20.3.4 ICS Control Register 4 (ICS_C4) */
#define ICS_C4 (*(volatile uint8_t*)(0x40064003))
#define LOLIE (1 << 7)
#define CME (1 << 5)
#define SCFTRIM (1 << 0)

/* 20.3.5 ICS Status Register (ICS_S) */
#define ICS_S (*(volatile uint8_t*)(0x40064004))
#define LOLS (1 << 7)
#define LOCK (1 << 6)
#define IREFST (1 << 5)
#define CLKST (1 << 3 | 1 << 2)

/* 21.5.1 OSC Control Register (OSC_CR) */
#define OSC_CR (*(volatile uint8_t*)(0x40065000))
#define OSCEN (1 << 7)
#define OSCSTEN (1 << 5)
#define OSCOS (1 << 4)
#define RANGE (1 << 2)
#define HGO (1 << 1)
#define OSCINIT (1 << 0)

/* 26.3.2 Register descriptions */
#define FTM0_SC (*(volatile uint32_t*)(0x40038000))

/* 26.3.3 Status And Control (FTMx_SC) */
#define TOF (1 << 7)
#define TOIE (1 << 6)
#define CPWMS (1 << 5)
#define FTMx_SC_CLKS_DISABLED (0)
#define FTMx_SC_CLKS_SC (1 << 3)
#define FTMx_SC_CLKS_FIXED (1 << 4)
#define FTMx_SC_CLKS_EXT (1 << 4 | 1 << 3)
#define FTMx_SC_PS_1 (0)
#define FTMx_SC_PS_2 (1 << 0)
#define FTMx_SC_PS_4 (1 << 1)
#define FTMx_SC_PS_8 (1 << 1 | 1 << 0)
#define FTMx_SC_PS_16 (1 << 2)
#define FTMx_SC_PS_32 (1 << 2 | 1 << 0)
#define FTMx_SC_PS_64 (1 << 2 | 1 << 1)
#define FTMx_SC_PS_128 (1 << 2 | 1 << 1 | 1 << 0)

#define FTM0_CNT (*(volatile uint32_t*)(0x40038004))
#define FTM0_MOD (*(volatile uint32_t*)(0x40038008))
#define FTM0_C0SC (*(volatile uint32_t*)(0x4003800c))
#define FTM0_C0V (*(volatile uint32_t*)(0x40038010))
#define FTM0_C1SC (*(volatile uint32_t*)(0x40038014))
#define FTM0_C1V (*(volatile uint32_t*)(0x40038018))
#define FTM0_C2SC (*(volatile uint32_t*)(0x4003801c))
#define FTM0_C2V (*(volatile uint32_t*)(0x40038020))
#define FTM0_C3SC (*(volatile uint32_t*)(0x40038024))
#define FTM0_C3V (*(volatile uint32_t*)(0x40038028))
#define FTM0_C4SC (*(volatile uint32_t*)(0x4003802c))
#define FTM0_C4V (*(volatile uint32_t*)(0x40038030))
#define FTM0_C5SC (*(volatile uint32_t*)(0x40038034))
#define FTM0_C5V (*(volatile uint32_t*)(0x40038038))
#define FTM0_C6SC (*(volatile uint32_t*)(0x4003803c))
#define FTM0_C6V (*(volatile uint32_t*)(0x40038040))
#define FTM0_C7SC (*(volatile uint32_t*)(0x40038044))
#define FTM0_C7V (*(volatile uint32_t*)(0x40038048))
#define FTM0_CNTIN (*(volatile uint32_t*)(0x4003804c))
#define FTM0_STATUS (*(volatile uint32_t*)(0x40038050))
#define FTM0_MODE (*(volatile uint32_t*)(0x40038054))
#define FTM0_SYNC (*(volatile uint32_t*)(0x40038058))
#define FTM0_OUTINIT (*(volatile uint32_t*)(0x4003805c))
#define FTM0_OUTMASK (*(volatile uint32_t*)(0x40038060))
#define FTM0_COMBINE (*(volatile uint32_t*)(0x40038064))
#define FTM0_DEADTIME (*(volatile uint32_t*)(0x40038068))
#define FTM0_EXTTRIG (*(volatile uint32_t*)(0x4003806c))
#define FTM0_POL (*(volatile uint32_t*)(0x40038070))
#define FTM0_FMS (*(volatile uint32_t*)(0x40038074))
#define FTM0_FILTER (*(volatile uint32_t*)(0x40038078))
#define FTM0_FLTCTRL (*(volatile uint32_t*)(0x4003807c))
#define FTM0_CONF (*(volatile uint32_t*)(0x40038084))
#define FTM0_FLTPOL (*(volatile uint32_t*)(0x40038088))
#define FTM0_SYNCONF (*(volatile uint32_t*)(0x4003808c))
#define FTM0_INVCTRL (*(volatile uint32_t*)(0x40038090))
#define FTM0_SWOCTRL (*(volatile uint32_t*)(0x40038094))
#define FTM0_PWMLOAD (*(volatile uint32_t*)(0x40038098))

/* Section 28.3 Memory map/register description */
#define PIT_MCR (*(volatile uint32_t*)(0x40037000))
#define PIT_LDVAL0 (*(volatile uint32_t*)(0x40037100))
#define PIT_CVAL0 (*(volatile uint32_t*)(0x40037104))
#define PIT_TCTRL0 (*(volatile uint32_t*)(0x40037108))
#define PIT_TFLG0 (*(volatile uint32_t*)(0x4003710c))
#define PIT_LDVAL1 (*(volatile uint32_t*)(0x40037110))
#define PIT_CVAL1 (*(volatile uint32_t*)(0x40037114))
#define PIT_TCTRL1 (*(volatile uint32_t*)(0x40037118))
#define PIT_TFLG1 (*(volatile uint32_t*)(0x4003711c))

/* Section 28.3.4 Timer Control Register (PIT_TCTRLn) */
#define CHN (1 << 2)
#define PIT_TIE (1 << 1)
#define PIT_TEN (1 << 0)

/* Section 28.3.5 Timer Flag Register (PIT_TFLGn) */
#define TIF (1 << 0)
