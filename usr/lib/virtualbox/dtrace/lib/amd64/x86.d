/** @file
 * IPRT - X86 and AMD64 Structures and Definitions.
 *
 * @note x86.mac is generated from this file by running 'kmk incs' in the root.
 */

/*
 * Copyright (C) 2006-2017 Oracle Corporation
 *
 * This file is part of VirtualBox Open Source Edition (OSE), as
 * available from http://www.virtualbox.org. This file is free software;
 * you can redistribute it and/or modify it under the terms of the GNU
 * General Public License (GPL) as published by the Free Software
 * Foundation, in version 2 as it comes in the "COPYING" file of the
 * VirtualBox OSE distribution. VirtualBox OSE is distributed in the
 * hope that it will be useful, but WITHOUT ANY WARRANTY of any kind.
 *
 * The contents of this file may alternatively be used under the terms
 * of the Common Development and Distribution License Version 1.0
 * (CDDL) only, as it comes in the "COPYING.CDDL" file of the
 * VirtualBox OSE distribution, in which case the provisions of the
 * CDDL are applicable instead of those of the GPL.
 *
 * You may elect to license modified versions of this file under the
 * terms and conditions of either the GPL or the CDDL or both.
 */



#pragma D  depends_on library vbox-types.d

/* Workaround for Solaris sys/regset.h defining CS, DS */

/** @defgroup grp_rt_x86   x86 Types and Definitions
 * @ingroup grp_rt
 * @{
 */


/**
 * EFLAGS.
 */
typedef union X86EFLAGS
{
    /** The plain unsigned view. */
    uint32_t        u;
    /** The 8-bit view. */
    uint8_t         au8[4];
    /** The 16-bit view. */
    uint16_t        au16[2];
    /** The 32-bit view. */
    uint32_t        au32[1];
    /** The 32-bit view. */
    uint32_t        u32;
} X86EFLAGS;
/** Pointer to EFLAGS. */
typedef X86EFLAGS *PX86EFLAGS;
/** Pointer to const EFLAGS. */
typedef const X86EFLAGS *PCX86EFLAGS;

/**
 * RFLAGS (32 upper bits are reserved).
 */
typedef union X86RFLAGS
{
    /** The plain unsigned view. */
    uint64_t        u;
    /** The 8-bit view. */
    uint8_t         au8[8];
    /** The 16-bit view. */
    uint16_t        au16[4];
    /** The 32-bit view. */
    uint32_t        au32[2];
    /** The 64-bit view. */
    uint64_t        au64[1];
    /** The 64-bit view. */
    uint64_t        u64;
} X86RFLAGS;
/** Pointer to RFLAGS. */
typedef X86RFLAGS *PX86RFLAGS;
/** Pointer to const RFLAGS. */
typedef const X86RFLAGS *PCX86RFLAGS;


/** @name EFLAGS
 * @{
 */
/** Bit 0 - CF - Carry flag - Status flag. */
inline uint32_t X86_EFL_CF = 1U << 0;

inline uint8_t X86_EFL_CF_BIT = 0;

/** Bit 1 - Reserved, reads as 1. */
inline uint32_t X86_EFL_1 = 1U << 1;

/** Bit 2 - PF - Parity flag - Status flag. */
inline uint32_t X86_EFL_PF = 1U << 2;

/** Bit 4 - AF - Auxiliary carry flag - Status flag. */
inline uint32_t X86_EFL_AF = 1U << 4;

inline uint8_t X86_EFL_AF_BIT = 4;

/** Bit 6 - ZF - Zero flag - Status flag. */
inline uint32_t X86_EFL_ZF = 1U << 6;

inline uint8_t X86_EFL_ZF_BIT = 6;

/** Bit 7 - SF - Signed flag - Status flag. */
inline uint32_t X86_EFL_SF = 1U << 7;

inline uint8_t X86_EFL_SF_BIT = 7;

/** Bit 8 - TF - Trap flag - System flag. */
inline uint32_t X86_EFL_TF = 1U << 8;

/** Bit 9 - IF - Interrupt flag - System flag. */
inline uint32_t X86_EFL_IF = 1U << 9;

/** Bit 10 - DF - Direction flag - Control flag. */
inline uint32_t X86_EFL_DF = 1U << 10;

/** Bit 11 - OF - Overflow flag - Status flag. */
inline uint32_t X86_EFL_OF = 1U << 11;

inline uint8_t X86_EFL_OF_BIT = 11;

/** Bit 12-13 - IOPL - I/O privilege level flag - System flag. */

/** Bit 14 - NT - Nested task flag - System flag. */
inline uint32_t X86_EFL_NT = 1U << 14;

/** Bit 16 - RF - Resume flag - System flag. */
inline uint32_t X86_EFL_RF = 1U << 16;

/** Bit 17 - VM - Virtual 8086 mode - System flag. */
inline uint32_t X86_EFL_VM = 1U << 17;

/** Bit 18 - AC - Alignment check flag - System flag. Works with CR0.AM. */
inline uint32_t X86_EFL_AC = 1U << 18;

/** Bit 19 - VIF - Virtual interrupt flag - System flag. */
inline uint32_t X86_EFL_VIF = 1U << 19;

/** Bit 20 - VIP - Virtual interrupt pending flag - System flag. */
inline uint32_t X86_EFL_VIP = 1U << 20;

/** Bit 21 - ID - CPUID flag - System flag. If this responds to flipping CPUID is supported. */
inline uint32_t X86_EFL_ID = 1U << 21;

/** All live bits. */
inline uint32_t X86_EFL_LIVE_MASK = 0x003f7fd5;

/** Read as 1 bits. */
inline uint32_t X86_EFL_RA1_MASK = 1U << 1;

/** IOPL shift. */
inline uint8_t X86_EFL_IOPL_SHIFT = 12;

/** The IOPL level from the flags. */

/** Bits restored by popf */

/** Bits restored by popf */

/** The status bits commonly updated by arithmetic instructions. */

/** @} */


/** CPUID Feature information - ECX.
 * CPUID query with EAX=1.
 */
typedef uint32_t X86CPUIDFEATECX;
/** Pointer to CPUID Feature Information - ECX. */
typedef X86CPUIDFEATECX *PX86CPUIDFEATECX;
/** Pointer to const CPUID Feature Information - ECX. */
typedef const X86CPUIDFEATECX *PCX86CPUIDFEATECX;


/** CPUID Feature Information - EDX.
 * CPUID query with EAX=1.
 */
typedef uint32_t X86CPUIDFEATEDX;
/** Pointer to CPUID Feature Information - EDX. */
typedef X86CPUIDFEATEDX *PX86CPUIDFEATEDX;
/** Pointer to const CPUID Feature Information - EDX. */
typedef const X86CPUIDFEATEDX *PCX86CPUIDFEATEDX;

/** @name CPUID Vendor information.
 * CPUID query with EAX=0.
 * @{
 */











/** @} */


/** @name CPUID Feature information.
 * CPUID query with EAX=1.
 * @{
 */
/** ECX Bit 0 - SSE3 - Supports SSE3 or not. */
inline uint32_t X86_CPUID_FEATURE_ECX_SSE3 = 1U << 0;

/** ECX Bit 1 - PCLMUL - PCLMULQDQ support (for AES-GCM). */
inline uint32_t X86_CPUID_FEATURE_ECX_PCLMUL = 1U << 1;

/** ECX Bit 2 - DTES64 - DS Area 64-bit Layout. */
inline uint32_t X86_CPUID_FEATURE_ECX_DTES64 = 1U << 2;

/** ECX Bit 3 - MONITOR - Supports MONITOR/MWAIT. */
inline uint32_t X86_CPUID_FEATURE_ECX_MONITOR = 1U << 3;

/** ECX Bit 4 - CPL-DS - CPL Qualified Debug Store. */
inline uint32_t X86_CPUID_FEATURE_ECX_CPLDS = 1U << 4;

/** ECX Bit 5 - VMX - Virtual Machine Technology. */
inline uint32_t X86_CPUID_FEATURE_ECX_VMX = 1U << 5;

/** ECX Bit 6 - SMX - Safer Mode Extensions. */
inline uint32_t X86_CPUID_FEATURE_ECX_SMX = 1U << 6;

/** ECX Bit 7 - EST - Enh. SpeedStep Tech. */
inline uint32_t X86_CPUID_FEATURE_ECX_EST = 1U << 7;

/** ECX Bit 8 - TM2 - Terminal Monitor 2. */
inline uint32_t X86_CPUID_FEATURE_ECX_TM2 = 1U << 8;

/** ECX Bit 9 - SSSE3 - Supplemental Streaming SIMD Extensions 3. */
inline uint32_t X86_CPUID_FEATURE_ECX_SSSE3 = 1U << 9;

/** ECX Bit 10 - CNTX-ID - L1 Context ID. */
inline uint32_t X86_CPUID_FEATURE_ECX_CNTXID = 1U << 10;

/** ECX Bit 11 - SDBG - Sillicon debug interface (IA32_DEBUG_INTERFACE MSR).
 * See figure 3-6 and table 3-10, in intel Vol. 2A. from 2015-01-01. */
inline uint32_t X86_CPUID_FEATURE_ECX_SDBG = 1U << 11;

/** ECX Bit 12 - FMA. */
inline uint32_t X86_CPUID_FEATURE_ECX_FMA = 1U << 12;

/** ECX Bit 13 - CX16 - CMPXCHG16B. */
inline uint32_t X86_CPUID_FEATURE_ECX_CX16 = 1U << 13;

/** ECX Bit 14 - xTPR Update Control. Processor supports changing IA32_MISC_ENABLES[bit 23]. */
inline uint32_t X86_CPUID_FEATURE_ECX_TPRUPDATE = 1U << 14;

/** ECX Bit 15 - PDCM - Perf/Debug Capability MSR. */
inline uint32_t X86_CPUID_FEATURE_ECX_PDCM = 1U << 15;

/** ECX Bit 17 - PCID - Process-context identifiers. */
inline uint32_t X86_CPUID_FEATURE_ECX_PCID = 1U << 17;

/** ECX Bit 18 - DCA - Direct Cache Access. */
inline uint32_t X86_CPUID_FEATURE_ECX_DCA = 1U << 18;

/** ECX Bit 19 - SSE4_1 - Supports SSE4_1 or not. */
inline uint32_t X86_CPUID_FEATURE_ECX_SSE4_1 = 1U << 19;

/** ECX Bit 20 - SSE4_2 - Supports SSE4_2 or not. */
inline uint32_t X86_CPUID_FEATURE_ECX_SSE4_2 = 1U << 20;

/** ECX Bit 21 - x2APIC support. */
inline uint32_t X86_CPUID_FEATURE_ECX_X2APIC = 1U << 21;

/** ECX Bit 22 - MOVBE instruction. */
inline uint32_t X86_CPUID_FEATURE_ECX_MOVBE = 1U << 22;

/** ECX Bit 23 - POPCNT instruction. */
inline uint32_t X86_CPUID_FEATURE_ECX_POPCNT = 1U << 23;

/** ECX Bir 24 - TSC-Deadline. */
inline uint32_t X86_CPUID_FEATURE_ECX_TSCDEADL = 1U << 24;

/** ECX Bit 25 - AES instructions. */
inline uint32_t X86_CPUID_FEATURE_ECX_AES = 1U << 25;

/** ECX Bit 26 - XSAVE instruction. */
inline uint32_t X86_CPUID_FEATURE_ECX_XSAVE = 1U << 26;

/** ECX Bit 27 - Copy of CR4.OSXSAVE. */
inline uint32_t X86_CPUID_FEATURE_ECX_OSXSAVE = 1U << 27;

/** ECX Bit 28 - AVX. */
inline uint32_t X86_CPUID_FEATURE_ECX_AVX = 1U << 28;

/** ECX Bit 29 - F16C - Half-precision convert instruction support. */
inline uint32_t X86_CPUID_FEATURE_ECX_F16C = 1U << 29;

/** ECX Bit 30 - RDRAND instruction. */
inline uint32_t X86_CPUID_FEATURE_ECX_RDRAND = 1U << 30;

/** ECX Bit 31 - Hypervisor Present (software only). */
inline uint32_t X86_CPUID_FEATURE_ECX_HVP = 1U << 31;



/** Bit 0 - FPU - x87 FPU on Chip. */
inline uint32_t X86_CPUID_FEATURE_EDX_FPU = 1U << 0;

/** Bit 1 - VME - Virtual 8086 Mode Enhancements. */
inline uint32_t X86_CPUID_FEATURE_EDX_VME = 1U << 1;

/** Bit 2 - DE - Debugging extensions. */
inline uint32_t X86_CPUID_FEATURE_EDX_DE = 1U << 2;

/** Bit 3 - PSE - Page Size Extension. */
inline uint32_t X86_CPUID_FEATURE_EDX_PSE = 1U << 3;


/** Bit 4 - TSC - Time Stamp Counter. */
inline uint32_t X86_CPUID_FEATURE_EDX_TSC = 1U << 4;

/** Bit 5 - MSR - Model Specific Registers RDMSR and WRMSR Instructions. */
inline uint32_t X86_CPUID_FEATURE_EDX_MSR = 1U << 5;

/** Bit 6 - PAE - Physical Address Extension. */
inline uint32_t X86_CPUID_FEATURE_EDX_PAE = 1U << 6;


/** Bit 7 - MCE - Machine Check Exception. */
inline uint32_t X86_CPUID_FEATURE_EDX_MCE = 1U << 7;

/** Bit 8 - CX8 - CMPXCHG8B instruction. */
inline uint32_t X86_CPUID_FEATURE_EDX_CX8 = 1U << 8;

/** Bit 9 - APIC - APIC On-Chip. */
inline uint32_t X86_CPUID_FEATURE_EDX_APIC = 1U << 9;

/** Bit 11 - SEP - SYSENTER and SYSEXIT Present. */
inline uint32_t X86_CPUID_FEATURE_EDX_SEP = 1U << 11;

/** Bit 12 - MTRR - Memory Type Range Registers. */
inline uint32_t X86_CPUID_FEATURE_EDX_MTRR = 1U << 12;

/** Bit 13 - PGE - PTE Global Bit. */
inline uint32_t X86_CPUID_FEATURE_EDX_PGE = 1U << 13;

/** Bit 14 - MCA - Machine Check Architecture. */
inline uint32_t X86_CPUID_FEATURE_EDX_MCA = 1U << 14;

/** Bit 15 - CMOV - Conditional Move Instructions. */
inline uint32_t X86_CPUID_FEATURE_EDX_CMOV = 1U << 15;

/** Bit 16 - PAT - Page Attribute Table. */
inline uint32_t X86_CPUID_FEATURE_EDX_PAT = 1U << 16;

/** Bit 17 - PSE-36 - 36-bit Page Size Extension. */
inline uint32_t X86_CPUID_FEATURE_EDX_PSE36 = 1U << 17;

/** Bit 18 - PSN - Processor Serial Number. */
inline uint32_t X86_CPUID_FEATURE_EDX_PSN = 1U << 18;

/** Bit 19 - CLFSH - CLFLUSH Instruction. */
inline uint32_t X86_CPUID_FEATURE_EDX_CLFSH = 1U << 19;

/** Bit 21 - DS - Debug Store. */
inline uint32_t X86_CPUID_FEATURE_EDX_DS = 1U << 21;

/** Bit 22 - ACPI - Thermal Monitor and Software Controlled Clock Facilities. */
inline uint32_t X86_CPUID_FEATURE_EDX_ACPI = 1U << 22;

/** Bit 23 - MMX - Intel MMX Technology. */
inline uint32_t X86_CPUID_FEATURE_EDX_MMX = 1U << 23;

/** Bit 24 - FXSR - FXSAVE and FXRSTOR Instructions. */
inline uint32_t X86_CPUID_FEATURE_EDX_FXSR = 1U << 24;

/** Bit 25 - SSE - SSE Support. */
inline uint32_t X86_CPUID_FEATURE_EDX_SSE = 1U << 25;

/** Bit 26 - SSE2 - SSE2 Support. */
inline uint32_t X86_CPUID_FEATURE_EDX_SSE2 = 1U << 26;

/** Bit 27 - SS - Self Snoop. */
inline uint32_t X86_CPUID_FEATURE_EDX_SS = 1U << 27;

/** Bit 28 - HTT - Hyper-Threading Technology. */
inline uint32_t X86_CPUID_FEATURE_EDX_HTT = 1U << 28;

/** Bit 29 - TM - Therm. Monitor. */
inline uint32_t X86_CPUID_FEATURE_EDX_TM = 1U << 29;

/** Bit 31 - PBE - Pending Break Enabled. */
inline uint32_t X86_CPUID_FEATURE_EDX_PBE = 1U << 31;

/** @} */

/** @name CPUID mwait/monitor information.
 * CPUID query with EAX=5.
 * @{
 */
/** ECX Bit 0 - MWAITEXT - Supports mwait/monitor extensions or not. */
inline uint32_t X86_CPUID_MWAIT_ECX_EXT = 1U << 0;

/** ECX Bit 1 - MWAITBREAK - Break mwait for external interrupt even if EFLAGS.IF=0. */
inline uint32_t X86_CPUID_MWAIT_ECX_BREAKIRQIF0 = 1U << 1;

/** @} */


/** @name CPUID Structured Extended Feature information.
 * CPUID query with EAX=7.
 * @{
 */
/** EBX Bit 0 - FSGSBASE - Supports RDFSBASE/RDGSBASE/WRFSBASE/WRGSBASE. */
inline uint32_t X86_CPUID_STEXT_FEATURE_EBX_FSGSBASE = 1U << 0;

/** EBX Bit 1 - TSCADJUST - Supports MSR_IA32_TSC_ADJUST. */
inline uint32_t X86_CPUID_STEXT_FEATURE_EBX_TSC_ADJUST = 1U << 1;

/** EBX Bit 2 - SGX - Supports Software Guard Extensions . */
inline uint32_t X86_CPUID_STEXT_FEATURE_EBX_SGX = 1U << 2;

/** EBX Bit 3 - BMI1 - Advanced Bit Manipulation extension 1. */
inline uint32_t X86_CPUID_STEXT_FEATURE_EBX_BMI1 = 1U << 3;

/** EBX Bit 4 - HLE - Hardware Lock Elision. */
inline uint32_t X86_CPUID_STEXT_FEATURE_EBX_HLE = 1U << 4;

/** EBX Bit 5 - AVX2 - Advanced Vector Extensions 2. */
inline uint32_t X86_CPUID_STEXT_FEATURE_EBX_AVX2 = 1U << 5;

/** EBX Bit 6 - FDP_EXCPTN_ONLY - FPU data pointer only updated on exceptions if set. */
inline uint32_t X86_CPUID_STEXT_FEATURE_EBX_FDP_EXCPTN_ONLY = 1U << 6;

/** EBX Bit 7 - SMEP - Supervisor Mode Execution Prevention. */
inline uint32_t X86_CPUID_STEXT_FEATURE_EBX_SMEP = 1U << 7;

/** EBX Bit 8 - BMI2 - Advanced Bit Manipulation extension 2. */
inline uint32_t X86_CPUID_STEXT_FEATURE_EBX_BMI2 = 1U << 8;

/** EBX Bit 9 - ERMS - Supports Enhanced REP MOVSB/STOSB. */
inline uint32_t X86_CPUID_STEXT_FEATURE_EBX_ERMS = 1U << 9;

/** EBX Bit 10 - INVPCID - Supports INVPCID. */
inline uint32_t X86_CPUID_STEXT_FEATURE_EBX_INVPCID = 1U << 10;

/** EBX Bit 11 - RTM - Supports Restricted Transactional Memory. */
inline uint32_t X86_CPUID_STEXT_FEATURE_EBX_RTM = 1U << 11;

/** EBX Bit 12 - PQM - Supports Platform Quality of Service Monitoring. */
inline uint32_t X86_CPUID_STEXT_FEATURE_EBX_PQM = 1U << 12;

/** EBX Bit 13 - DEPFPU_CS_DS - Deprecates FPU CS, FPU DS values if set. */
inline uint32_t X86_CPUID_STEXT_FEATURE_EBX_DEPR_FPU_CS_DS = 1U << 13;

/** EBX Bit 14 - MPE - Supports Intel Memory Protection Extensions. */
inline uint32_t X86_CPUID_STEXT_FEATURE_EBX_MPE = 1U << 14;

/** EBX Bit 15 - PQE - Supports Platform Quality of Service Enforcement. */
inline uint32_t X86_CPUID_STEXT_FEATURE_EBX_PQE = 1U << 15;

/** EBX Bit 16 - AVX512F - Supports AVX512F. */
inline uint32_t X86_CPUID_STEXT_FEATURE_EBX_AVX512F = 1U << 16;

/** EBX Bit 18 - RDSEED - Supports RDSEED. */
inline uint32_t X86_CPUID_STEXT_FEATURE_EBX_RDSEED = 1U << 18;

/** EBX Bit 19 - ADX - Supports ADCX/ADOX. */
inline uint32_t X86_CPUID_STEXT_FEATURE_EBX_ADX = 1U << 19;

/** EBX Bit 20 - SMAP - Supports Supervisor Mode Access Prevention. */
inline uint32_t X86_CPUID_STEXT_FEATURE_EBX_SMAP = 1U << 20;

/** EBX Bit 23 - CLFLUSHOPT - Supports CLFLUSHOPT (Cache Line Flush). */
inline uint32_t X86_CPUID_STEXT_FEATURE_EBX_CLFLUSHOPT = 1U << 23;

/** EBX Bit 25 - INTEL_PT - Supports Intel Processor Trace. */
inline uint32_t X86_CPUID_STEXT_FEATURE_EBX_INTEL_PT = 1U << 25;

/** EBX Bit 26 - AVX512PF - Supports AVX512PF. */
inline uint32_t X86_CPUID_STEXT_FEATURE_EBX_AVX512PF = 1U << 26;

/** EBX Bit 27 - AVX512ER - Supports AVX512ER. */
inline uint32_t X86_CPUID_STEXT_FEATURE_EBX_AVX512ER = 1U << 27;

/** EBX Bit 28 - AVX512CD - Supports AVX512CD. */
inline uint32_t X86_CPUID_STEXT_FEATURE_EBX_AVX512CD = 1U << 28;

/** EBX Bit 29 - SHA - Supports Secure Hash Algorithm extensions. */
inline uint32_t X86_CPUID_STEXT_FEATURE_EBX_SHA = 1U << 29;


/** ECX Bit 0 - PREFETCHWT1 - Supports the PREFETCHWT1 instruction. */
inline uint32_t X86_CPUID_STEXT_FEATURE_ECX_PREFETCHWT1 = 1U << 0;

/** @} */


/** @name CPUID Extended Feature information.
 *  CPUID query with EAX=0x80000001.
 *  @{
 */
/** ECX Bit 0 - LAHF/SAHF support in 64-bit mode. */
inline uint32_t X86_CPUID_EXT_FEATURE_ECX_LAHF_SAHF = 1U << 0;


/** EDX Bit 11 - SYSCALL/SYSRET. */
inline uint32_t X86_CPUID_EXT_FEATURE_EDX_SYSCALL = 1U << 11;

/** EDX Bit 20 - No-Execute/Execute-Disable. */
inline uint32_t X86_CPUID_EXT_FEATURE_EDX_NX = 1U << 20;

/** EDX Bit 26 - 1 GB large page. */
inline uint32_t X86_CPUID_EXT_FEATURE_EDX_PAGE1GB = 1U << 26;

/** EDX Bit 27 - RDTSCP. */
inline uint32_t X86_CPUID_EXT_FEATURE_EDX_RDTSCP = 1U << 27;

/** EDX Bit 29 - AMD Long Mode/Intel-64 Instructions. */
inline uint32_t X86_CPUID_EXT_FEATURE_EDX_LONG_MODE = 1U << 29;

/** @}*/

/** @name CPUID AMD Feature information.
 * CPUID query with EAX=0x80000001.
 * @{
 */
/** Bit 0 - FPU - x87 FPU on Chip. */
inline uint32_t X86_CPUID_AMD_FEATURE_EDX_FPU = 1U << 0;

/** Bit 1 - VME - Virtual 8086 Mode Enhancements. */
inline uint32_t X86_CPUID_AMD_FEATURE_EDX_VME = 1U << 1;

/** Bit 2 - DE - Debugging extensions. */
inline uint32_t X86_CPUID_AMD_FEATURE_EDX_DE = 1U << 2;

/** Bit 3 - PSE - Page Size Extension. */
inline uint32_t X86_CPUID_AMD_FEATURE_EDX_PSE = 1U << 3;

/** Bit 4 - TSC - Time Stamp Counter. */
inline uint32_t X86_CPUID_AMD_FEATURE_EDX_TSC = 1U << 4;

/** Bit 5 - MSR - K86 Model Specific Registers RDMSR and WRMSR Instructions. */
inline uint32_t X86_CPUID_AMD_FEATURE_EDX_MSR = 1U << 5;

/** Bit 6 - PAE - Physical Address Extension. */
inline uint32_t X86_CPUID_AMD_FEATURE_EDX_PAE = 1U << 6;

/** Bit 7 - MCE - Machine Check Exception. */
inline uint32_t X86_CPUID_AMD_FEATURE_EDX_MCE = 1U << 7;

/** Bit 8 - CX8 - CMPXCHG8B instruction. */
inline uint32_t X86_CPUID_AMD_FEATURE_EDX_CX8 = 1U << 8;

/** Bit 9 - APIC - APIC On-Chip. */
inline uint32_t X86_CPUID_AMD_FEATURE_EDX_APIC = 1U << 9;

/** Bit 12 - MTRR - Memory Type Range Registers. */
inline uint32_t X86_CPUID_AMD_FEATURE_EDX_MTRR = 1U << 12;

/** Bit 13 - PGE - PTE Global Bit. */
inline uint32_t X86_CPUID_AMD_FEATURE_EDX_PGE = 1U << 13;

/** Bit 14 - MCA - Machine Check Architecture. */
inline uint32_t X86_CPUID_AMD_FEATURE_EDX_MCA = 1U << 14;

/** Bit 15 - CMOV - Conditional Move Instructions. */
inline uint32_t X86_CPUID_AMD_FEATURE_EDX_CMOV = 1U << 15;

/** Bit 16 - PAT - Page Attribute Table. */
inline uint32_t X86_CPUID_AMD_FEATURE_EDX_PAT = 1U << 16;

/** Bit 17 - PSE-36 - 36-bit Page Size Extension. */
inline uint32_t X86_CPUID_AMD_FEATURE_EDX_PSE36 = 1U << 17;

/** Bit 22 - AXMMX - AMD Extensions to MMX Instructions. */
inline uint32_t X86_CPUID_AMD_FEATURE_EDX_AXMMX = 1U << 22;

/** Bit 23 - MMX - Intel MMX Technology. */
inline uint32_t X86_CPUID_AMD_FEATURE_EDX_MMX = 1U << 23;

/** Bit 24 - FXSR - FXSAVE and FXRSTOR Instructions. */
inline uint32_t X86_CPUID_AMD_FEATURE_EDX_FXSR = 1U << 24;

/** Bit 25 - FFXSR - AMD fast FXSAVE and FXRSTOR Instructions. */
inline uint32_t X86_CPUID_AMD_FEATURE_EDX_FFXSR = 1U << 25;

/** Bit 30 - 3DNOWEXT - AMD Extensions to 3DNow. */
inline uint32_t X86_CPUID_AMD_FEATURE_EDX_3DNOW_EX = 1U << 30;

/** Bit 31 - 3DNOW - AMD 3DNow. */
inline uint32_t X86_CPUID_AMD_FEATURE_EDX_3DNOW = 1U << 31;


/** Bit 1 - CmpLegacy - Core multi-processing legacy mode. */
inline uint32_t X86_CPUID_AMD_FEATURE_ECX_CMPL = 1U << 1;

/** Bit 2 - SVM - AMD VM extensions. */
inline uint32_t X86_CPUID_AMD_FEATURE_ECX_SVM = 1U << 2;

/** Bit 3 - EXTAPIC - AMD extended APIC registers starting at 0x400. */
inline uint32_t X86_CPUID_AMD_FEATURE_ECX_EXT_APIC = 1U << 3;

/** Bit 4 - CR8L - AMD LOCK MOV CR0 means MOV CR8. */
inline uint32_t X86_CPUID_AMD_FEATURE_ECX_CR8L = 1U << 4;

/** Bit 5 - ABM - AMD Advanced bit manipulation. LZCNT instruction support. */
inline uint32_t X86_CPUID_AMD_FEATURE_ECX_ABM = 1U << 5;

/** Bit 6 - SSE4A - AMD EXTRQ, INSERTQ, MOVNTSS, and MOVNTSD instruction support. */
inline uint32_t X86_CPUID_AMD_FEATURE_ECX_SSE4A = 1U << 6;

/** Bit 7 - MISALIGNSSE - AMD Misaligned SSE mode. */
inline uint32_t X86_CPUID_AMD_FEATURE_ECX_MISALNSSE = 1U << 7;

/** Bit 8 - 3DNOWPRF - AMD PREFETCH and PREFETCHW instruction support. */
inline uint32_t X86_CPUID_AMD_FEATURE_ECX_3DNOWPRF = 1U << 8;

/** Bit 9 - OSVW - AMD OS visible workaround. */
inline uint32_t X86_CPUID_AMD_FEATURE_ECX_OSVW = 1U << 9;

/** Bit 10 - IBS - Instruct based sampling. */
inline uint32_t X86_CPUID_AMD_FEATURE_ECX_IBS = 1U << 10;

/** Bit 11 - XOP - Extended operation support (see APM6). */
inline uint32_t X86_CPUID_AMD_FEATURE_ECX_XOP = 1U << 11;

/** Bit 12 - SKINIT - AMD SKINIT: SKINIT, STGI, and DEV support. */
inline uint32_t X86_CPUID_AMD_FEATURE_ECX_SKINIT = 1U << 12;

/** Bit 13 - WDT - AMD Watchdog timer support. */
inline uint32_t X86_CPUID_AMD_FEATURE_ECX_WDT = 1U << 13;

/** Bit 15 - LWP - Lightweight profiling support. */
inline uint32_t X86_CPUID_AMD_FEATURE_ECX_LWP = 1U << 15;

/** Bit 16 - FMA4 - Four operand FMA instruction support. */
inline uint32_t X86_CPUID_AMD_FEATURE_ECX_FMA4 = 1U << 16;

/** Bit 19 - NodeId - Indicates support for
 * MSR_C001_100C[NodeId,NodesPerProcessr]. */
inline uint32_t X86_CPUID_AMD_FEATURE_ECX_NODEID = 1U << 19;

/** Bit 21 - TBM - Trailing bit manipulation instruction support. */
inline uint32_t X86_CPUID_AMD_FEATURE_ECX_TBM = 1U << 21;

/** Bit 22 - TopologyExtensions - . */
inline uint32_t X86_CPUID_AMD_FEATURE_ECX_TOPOEXT = 1U << 22;

/** @} */


/** @name CPUID AMD Feature information.
 * CPUID query with EAX=0x80000007.
 * @{
 */
/** Bit 0 - TS - Temperature Sensor. */
inline uint32_t X86_CPUID_AMD_ADVPOWER_EDX_TS = 1U << 0;

/** Bit 1 - FID - Frequency ID Control. */
inline uint32_t X86_CPUID_AMD_ADVPOWER_EDX_FID = 1U << 1;

/** Bit 2 - VID - Voltage ID Control. */
inline uint32_t X86_CPUID_AMD_ADVPOWER_EDX_VID = 1U << 2;

/** Bit 3 - TTP - THERMTRIP. */
inline uint32_t X86_CPUID_AMD_ADVPOWER_EDX_TTP = 1U << 3;

/** Bit 4 - TM - Hardware Thermal Control. */
inline uint32_t X86_CPUID_AMD_ADVPOWER_EDX_TM = 1U << 4;

/** Bit 5 - STC - Software Thermal Control. */
inline uint32_t X86_CPUID_AMD_ADVPOWER_EDX_STC = 1U << 5;

/** Bit 6 - MC - 100 Mhz Multiplier Control. */
inline uint32_t X86_CPUID_AMD_ADVPOWER_EDX_MC = 1U << 6;

/** Bit 7 - HWPSTATE - Hardware P-State Control. */
inline uint32_t X86_CPUID_AMD_ADVPOWER_EDX_HWPSTATE = 1U << 7;

/** Bit 8 - TSCINVAR - TSC Invariant. */
inline uint32_t X86_CPUID_AMD_ADVPOWER_EDX_TSCINVAR = 1U << 8;

/** Bit 9 - CPB - TSC Invariant. */
inline uint32_t X86_CPUID_AMD_ADVPOWER_EDX_CPB = 1U << 9;

/** Bit 10 - EffFreqRO - MPERF/APERF. */
inline uint32_t X86_CPUID_AMD_ADVPOWER_EDX_EFRO = 1U << 10;

/** Bit 11 - PFI - Processor feedback interface (see EAX). */
inline uint32_t X86_CPUID_AMD_ADVPOWER_EDX_PFI = 1U << 11;

/** Bit 12 - PA - Processor accumulator (MSR c001_007a). */
inline uint32_t X86_CPUID_AMD_ADVPOWER_EDX_PA = 1U << 12;

/** @} */


/** @name CPUID AMD SVM Feature information.
 * CPUID query with EAX=0x8000000a.
 * @{
 */
/** Bit 0 - NP - Nested Paging supported. */
inline uint32_t X86_CPUID_SVM_FEATURE_EDX_NESTED_PAGING = 1U << 0;

/** Bit 1 - LbrVirt - Support for saving five debug MSRs. */
inline uint32_t X86_CPUID_SVM_FEATURE_EDX_LBR_VIRT = 1U << 1;

/** Bit 2 - SVML - SVM locking bit supported. */
inline uint32_t X86_CPUID_SVM_FEATURE_EDX_SVM_LOCK = 1U << 2;

/** Bit 3 - NRIPS - Saving the next instruction pointer is supported. */
inline uint32_t X86_CPUID_SVM_FEATURE_EDX_NRIP_SAVE = 1U << 3;

/** Bit 4 - TscRateMsr - Support for MSR TSC ratio. */
inline uint32_t X86_CPUID_SVM_FEATURE_EDX_TSC_RATE_MSR = 1U << 4;

/** Bit 5 - VmcbClean - Support VMCB clean bits. */
inline uint32_t X86_CPUID_SVM_FEATURE_EDX_VMCB_CLEAN = 1U << 5;

/** Bit 6 - FlushByAsid - Indicate TLB flushing for current ASID only, and that
 *  VMCB.TLB_Control is supported. */
inline uint32_t X86_CPUID_SVM_FEATURE_EDX_FLUSH_BY_ASID = 1U << 6;

/** Bit 7 - DecodeAssist - Indicate decode assist is supported. */
inline uint32_t X86_CPUID_SVM_FEATURE_EDX_DECODE_ASSIST = 1U << 7;

/** Bit 10 - PauseFilter - Indicates support for the PAUSE intercept filter. */
inline uint32_t X86_CPUID_SVM_FEATURE_EDX_PAUSE_FILTER = 1U << 10;

/** Bit 12 - PauseFilterThreshold - Indicates support for the PAUSE
 *  intercept filter cycle count threshold. */
inline uint32_t X86_CPUID_SVM_FEATURE_EDX_PAUSE_FILTER_THRESHOLD = 1U << 12;

/** Bit 13 - AVIC - Advanced Virtual Interrupt Controller. */
inline uint32_t X86_CPUID_SVM_FEATURE_EDX_AVIC = 1U << 13;

/** Bit 15 - V_VMSAVE_VMLOAD - Supports virtualized VMSAVE/VMLOAD. */
inline uint32_t X86_CPUID_SVM_FEATURE_EDX_VIRT_VMSAVE_VMLOAD = 1U << 15;

/** Bit 16 - V_VMSAVE_VMLOAD - Supports virtualized GIF. */
inline uint32_t X86_CPUID_SVM_FEATURE_EDX_VGIF = 1U << 16;

/** @} */


/** @name CR0
 * @remarks The 286 (MSW), 386 and 486 ignores attempts at setting
 *          reserved flags.
 * @{ */
/** Bit 0 - PE - Protection Enabled */
inline uint32_t X86_CR0_PE = 1U << 0;

inline uint32_t X86_CR0_PROTECTION_ENABLE = 1U << 0;

/** Bit 1 - MP - Monitor Coprocessor */
inline uint32_t X86_CR0_MP = 1U << 1;

inline uint32_t X86_CR0_MONITOR_COPROCESSOR = 1U << 1;

/** Bit 2 - EM - Emulation. */
inline uint32_t X86_CR0_EM = 1U << 2;

inline uint32_t X86_CR0_EMULATE_FPU = 1U << 2;

/** Bit 3 - TS - Task Switch. */
inline uint32_t X86_CR0_TS = 1U << 3;

inline uint32_t X86_CR0_TASK_SWITCH = 1U << 3;

/** Bit 4 - ET - Extension flag. (386, 'hardcoded' to 1 on 486+) */
inline uint32_t X86_CR0_ET = 1U << 4;

inline uint32_t X86_CR0_EXTENSION_TYPE = 1U << 4;

/** Bit 5 - NE - Numeric error (486+). */
inline uint32_t X86_CR0_NE = 1U << 5;

inline uint32_t X86_CR0_NUMERIC_ERROR = 1U << 5;

/** Bit 16 - WP - Write Protect (486+). */
inline uint32_t X86_CR0_WP = 1U << 16;

inline uint32_t X86_CR0_WRITE_PROTECT = 1U << 16;

/** Bit 18 - AM - Alignment Mask (486+). */
inline uint32_t X86_CR0_AM = 1U << 18;

inline uint32_t X86_CR0_ALIGMENT_MASK = 1U << 18;

/** Bit 29 - NW - Not Write-though (486+). */
inline uint32_t X86_CR0_NW = 1U << 29;

inline uint32_t X86_CR0_NOT_WRITE_THROUGH = 1U << 29;

/** Bit 30 - WP - Cache Disable (486+). */
inline uint32_t X86_CR0_CD = 1U << 30;

inline uint32_t X86_CR0_CACHE_DISABLE = 1U << 30;

/** Bit 31 - PG - Paging. */
inline uint32_t X86_CR0_PG = 1U << 31;

inline uint32_t X86_CR0_PAGING = 1U << 31;

/** @} */


/** @name CR3
 * @{ */
/** Bit 3 - PWT - Page-level Writes Transparent. */
inline uint32_t X86_CR3_PWT = 1U << 3;

/** Bit 4 - PCD - Page-level Cache Disable. */
inline uint32_t X86_CR3_PCD = 1U << 4;

/** Bits 12-31 - - Page directory page number. */

/** Bits  5-31 - - PAE Page directory page number. */

/** Bits 12-51 - - AMD64 Page directory page number. */
inline uint64_t X86_CR3_AMD64_PAGE_MASK = 0x000ffffffffff000;

/** @} */


/** @name CR4
 * @{ */
/** Bit 0 - VME - Virtual-8086 Mode Extensions. */
inline uint32_t X86_CR4_VME = 1U << 0;

/** Bit 1 - PVI - Protected-Mode Virtual Interrupts. */
inline uint32_t X86_CR4_PVI = 1U << 1;

/** Bit 2 - TSD - Time Stamp Disable. */
inline uint32_t X86_CR4_TSD = 1U << 2;

/** Bit 3 - DE - Debugging Extensions. */
inline uint32_t X86_CR4_DE = 1U << 3;

/** Bit 4 - PSE - Page Size Extension. */
inline uint32_t X86_CR4_PSE = 1U << 4;

/** Bit 5 - PAE - Physical Address Extension. */
inline uint32_t X86_CR4_PAE = 1U << 5;

/** Bit 6 - MCE - Machine-Check Enable. */
inline uint32_t X86_CR4_MCE = 1U << 6;

/** Bit 7 - PGE - Page Global Enable. */
inline uint32_t X86_CR4_PGE = 1U << 7;

/** Bit 8 - PCE - Performance-Monitoring Counter Enable. */
inline uint32_t X86_CR4_PCE = 1U << 8;

/** Bit 9 - OSFXSR - Operating System Support for FXSAVE and FXRSTORE instructions. */
inline uint32_t X86_CR4_OSFXSR = 1U << 9;

/** Bit 10 - OSXMMEEXCPT - Operating System Support for Unmasked SIMD Floating-Point Exceptions. */
inline uint32_t X86_CR4_OSXMMEEXCPT = 1U << 10;

/** Bit 13 - VMXE - VMX mode is enabled. */
inline uint32_t X86_CR4_VMXE = 1U << 13;

/** Bit 14 - SMXE - Safer Mode Extensions Enabled. */
inline uint32_t X86_CR4_SMXE = 1U << 14;

/** Bit 17 - PCIDE - Process-Context Identifiers Enabled. */
inline uint32_t X86_CR4_PCIDE = 1U << 17;

/** Bit 18 - OSXSAVE - Operating System Support for XSAVE and processor
 * extended states. */
inline uint32_t X86_CR4_OSXSAVE = 1U << 18;

/** Bit 20 - SMEP - Supervisor-mode Execution Prevention enabled. */
inline uint32_t X86_CR4_SMEP = 1U << 20;

/** Bit 21 - SMAP - Supervisor-mode Access Prevention enabled. */
inline uint32_t X86_CR4_SMAP = 1U << 21;

/** Bit 22 - PKE - Protection Key Enable. */
inline uint32_t X86_CR4_PKE = 1U << 22;

/** @} */


/** @name DR6
 * @{ */
/** Bit 0 - B0 - Breakpoint 0 condition detected. */
inline uint32_t X86_DR6_B0 = 1U << 0;

/** Bit 1 - B1 - Breakpoint 1 condition detected. */
inline uint32_t X86_DR6_B1 = 1U << 1;

/** Bit 2 - B2 - Breakpoint 2 condition detected. */
inline uint32_t X86_DR6_B2 = 1U << 2;

/** Bit 3 - B3 - Breakpoint 3 condition detected. */
inline uint32_t X86_DR6_B3 = 1U << 3;

/** Mask of all the Bx bits. */
inline uint64_t X86_DR6_B_MASK = 0x0000000f;

/** Bit 13 - BD - Debug register access detected. Corresponds to the X86_DR7_GD bit. */
inline uint32_t X86_DR6_BD = 1U << 13;

/** Bit 14 - BS - Single step */
inline uint32_t X86_DR6_BS = 1U << 14;

/** Bit 15 - BT - Task switch. (TSS T bit.) */
inline uint32_t X86_DR6_BT = 1U << 15;

/** Value of DR6 after powerup/reset. */
inline uint64_t X86_DR6_INIT_VAL = 0xFFFF0FF0;

/** Bits which must be 1s in DR6. */
inline uint64_t X86_DR6_RA1_MASK = 0xffff0ff0;

/** Bits which must be 0s in DR6. */
inline uint64_t X86_DR6_RAZ_MASK = 1ULL << 12;

/** Bits which must be 0s on writes to DR6. */
inline uint64_t X86_DR6_MBZ_MASK = 0xffffffff00000000;

/** @} */

/** Get the DR6.Bx bit for a the given breakpoint. */



/** @name DR7
 * @{ */
/** Bit 0 - L0 - Local breakpoint enable. Cleared on task switch. */
inline uint32_t X86_DR7_L0 = 1U << 0;

/** Bit 1 - G0 - Global breakpoint enable. Not cleared on task switch. */
inline uint32_t X86_DR7_G0 = 1U << 1;

/** Bit 2 - L1 - Local breakpoint enable. Cleared on task switch. */
inline uint32_t X86_DR7_L1 = 1U << 2;

/** Bit 3 - G1 - Global breakpoint enable. Not cleared on task switch. */
inline uint32_t X86_DR7_G1 = 1U << 3;

/** Bit 4 - L2 - Local breakpoint enable. Cleared on task switch. */
inline uint32_t X86_DR7_L2 = 1U << 4;

/** Bit 5 - G2 - Global breakpoint enable. Not cleared on task switch. */
inline uint32_t X86_DR7_G2 = 1U << 5;

/** Bit 6 - L3 - Local breakpoint enable. Cleared on task switch. */
inline uint32_t X86_DR7_L3 = 1U << 6;

/** Bit 7 - G3 - Global breakpoint enable. Not cleared on task switch. */
inline uint32_t X86_DR7_G3 = 1U << 7;

/** Bit 8 - LE - Local breakpoint exact. (Not supported (read ignored) by P6 and later.) */
inline uint32_t X86_DR7_LE = 1U << 8;

/** Bit 9 - GE - Local breakpoint exact. (Not supported (read ignored) by P6 and later.) */
inline uint32_t X86_DR7_GE = 1U << 9;


/** L0, L1, L2, and L3.  */
inline uint64_t X86_DR7_LE_ALL = 0x0000000000000055;

/** L0, L1, L2, and L3.  */
inline uint64_t X86_DR7_GE_ALL = 0x00000000000000aa;


/** Bit 12 - IR (ICE) - Interrupt redirection on Pentium.  When set, the in
 * Circuit Emulator (ICE) will break emulation on breakpoints and stuff.
 * May cause CPU hang if enabled without ICE attached when the ICEBP/INT1
 * instruction is executed.
 * @see http://www.rcollins.org/secrets/DR7.html  */
inline uint32_t X86_DR7_ICE_IR = 1U << 12;

/** Bit 13 - GD - General detect enable. Enables emulators to get exceptions when
 * any DR register is accessed. */
inline uint32_t X86_DR7_GD = 1U << 13;

/** Bit 14 - TR1 (ICE) - Code discontinuity trace for use with ICE on
 *  Pentium. */
inline uint32_t X86_DR7_ICE_TR1 = 1U << 14;

/** Bit 15 - TR2 (ICE) - Controls unknown ICE trace feature of the pentium. */
inline uint32_t X86_DR7_ICE_TR2 = 1U << 15;

/** Bit 16 & 17 - R/W0 - Read write field 0. Values X86_DR7_RW_*. */

/** Bit 18 & 19 - LEN0 - Length field 0. Values X86_DR7_LEN_*. */

/** Bit 20 & 21 - R/W1 - Read write field 0. Values X86_DR7_RW_*. */

/** Bit 22 & 23 - LEN1 - Length field 0. Values X86_DR7_LEN_*. */

/** Bit 24 & 25 - R/W2 - Read write field 0. Values X86_DR7_RW_*. */

/** Bit 26 & 27 - LEN2 - Length field 0. Values X86_DR7_LEN_*. */

/** Bit 28 & 29 - R/W3 - Read write field 0. Values X86_DR7_RW_*. */

/** Bit 30 & 31 - LEN3 - Length field 0. Values X86_DR7_LEN_*. */


/** Bits which reads as 1s. */
inline uint32_t X86_DR7_RA1_MASK = 1U << 10;

/** Bits which reads as zeros.  These are related to ICE (bits 12, 14, 15). */
inline uint64_t X86_DR7_RAZ_MASK = 0x0000d800;

/** Bits which must be 0s when writing to DR7. */
inline uint64_t X86_DR7_MBZ_MASK = 0xffffffff00000000;


/** Calcs the L bit of Nth breakpoint.
 * @param   iBp     The breakpoint number [0..3].
 */


/** Calcs the G bit of Nth breakpoint.
 * @param   iBp     The breakpoint number [0..3].
 */


/** Calcs the L and G bits of Nth breakpoint.
 * @param   iBp     The breakpoint number [0..3].
 */


/** @name Read/Write values.
 * @{ */
/** Break on instruction fetch only. */
inline uint32_t X86_DR7_RW_EO = 0;

/** Break on write only. */
inline uint32_t X86_DR7_RW_WO = 1;

/** Break on I/O read/write. This is only defined if CR4.DE is set. */
inline uint32_t X86_DR7_RW_IO = 2;

/** Break on read or write (but not instruction fetches). */
inline uint32_t X86_DR7_RW_RW = 3;

/** @} */

/** Shifts a X86_DR7_RW_* value to its right place.
 * @param   iBp     The breakpoint number [0..3].
 * @param   fRw     One of the X86_DR7_RW_* value.
 */


/** Fetch the R/Wx bits for a given breakpoint (so it can be compared with
 * one of the X86_DR7_RW_XXX constants).
 *
 * @returns X86_DR7_RW_XXX
 * @param   uDR7    DR7 value
 * @param   iBp     The breakpoint number [0..3].
 */


/** R/W0, R/W1, R/W2, and R/W3. */
inline uint32_t X86_DR7_RW_ALL_MASKS = 0x33330000;



/** @name Length values.
 * @{ */
inline uint32_t X86_DR7_LEN_BYTE = 0;

inline uint32_t X86_DR7_LEN_WORD = 1;


inline uint32_t X86_DR7_LEN_DWORD = 3;

/** @} */

/** Shifts a X86_DR7_LEN_* value to its right place.
 * @param   iBp     The breakpoint number [0..3].
 * @param   cb      One of the X86_DR7_LEN_* values.
 */


/** Fetch the breakpoint length bits from the DR7 value.
 * @param   uDR7    DR7 value
 * @param   iBp     The breakpoint number [0..3].
 */


/** Mask used to check if any breakpoints are enabled. */
inline uint32_t X86_DR7_ENABLED_MASK = 0x000000ff;


/** LEN0, LEN1, LEN2, and LEN3. */
inline uint32_t X86_DR7_LEN_ALL_MASKS = 0xcccc0000;

/** R/W0, R/W1, R/W2, R/W3,LEN0, LEN1, LEN2, and LEN3. */
inline uint32_t X86_DR7_RW_LEN_ALL_MASKS = 0xffff0000;


/** Value of DR7 after powerup/reset. */
inline uint16_t X86_DR7_INIT_VAL = 0x400;

/** @} */


/** @name Machine Specific Registers
 * @{
 */
/** Machine check address register (P5). */
inline uint32_t MSR_P5_MC_ADDR = 0x00000000;

/** Machine check type register (P5). */
inline uint32_t MSR_P5_MC_TYPE = 0x00000001;

/** Time Stamp Counter. */
inline uint8_t MSR_IA32_TSC = 0x10;

inline uint32_t MSR_IA32_CESR = 0x00000011;

inline uint32_t MSR_IA32_CTR0 = 0x00000012;

inline uint32_t MSR_IA32_CTR1 = 0x00000013;


inline uint8_t MSR_IA32_PLATFORM_ID = 0x17;


inline uint8_t MSR_IA32_APICBASE = 0x1b;

/** Local APIC enabled. */
inline uint64_t MSR_IA32_APICBASE_EN = 1ULL << 11;

/** X2APIC enabled (requires the EN bit to be set). */
inline uint64_t MSR_IA32_APICBASE_EXTD = 1ULL << 10;

/** The processor is the boot strap processor (BSP). */
inline uint64_t MSR_IA32_APICBASE_BSP = 1ULL << 8;

/** Minimum base address mask, consult CPUID leaf 0x80000008 for the actual
 *  width. */
inline uint64_t MSR_IA32_APICBASE_BASE_MIN = 0x0000000ffffff000;

/** The default physical base address of the APIC. */
inline uint64_t MSR_IA32_APICBASE_ADDR = 0x00000000fee00000;

/** Gets the physical base address from the MSR. */


/** Undocumented intel MSR for reporting thread and core counts.
 * Judging from the XNU sources, it seems to be introduced in Nehalem. The
 * first 16 bits is the thread count. The next 16 bits the core count, except
 * on Westmere where it seems it's only the next 4 bits for some reason. */
inline uint8_t MSR_CORE_THREAD_COUNT = 0x35;


/** CPU Feature control. */
inline uint8_t MSR_IA32_FEATURE_CONTROL = 0x3A;

inline uint32_t MSR_IA32_FEATURE_CONTROL_LOCK = 1U << 0;

inline uint32_t MSR_IA32_FEATURE_CONTROL_SMX_VMXON = 1U << 1;

inline uint32_t MSR_IA32_FEATURE_CONTROL_VMXON = 1U << 2;


/** Per-processor TSC adjust MSR. */
inline uint8_t MSR_IA32_TSC_ADJUST = 0x3B;


/** BIOS update trigger (microcode update). */
inline uint8_t MSR_IA32_BIOS_UPDT_TRIG = 0x79;


/** BIOS update signature (microcode). */
inline uint8_t MSR_IA32_BIOS_SIGN_ID = 0x8B;


/** SMM monitor control. */
inline uint8_t MSR_IA32_SMM_MONITOR_CTL = 0x9B;


/** General performance counter no. 0. */
inline uint8_t MSR_IA32_PMC0 = 0xC1;

/** General performance counter no. 1. */
inline uint8_t MSR_IA32_PMC1 = 0xC2;

/** General performance counter no. 2. */
inline uint8_t MSR_IA32_PMC2 = 0xC3;

/** General performance counter no. 3. */
inline uint8_t MSR_IA32_PMC3 = 0xC4;


/** Nehalem power control. */
inline uint8_t MSR_IA32_PLATFORM_INFO = 0xCE;


/** Get FSB clock status (Intel-specific). */
inline uint8_t MSR_IA32_FSB_CLOCK_STS = 0xCD;


/** C-State configuration control. Intel specific: Nehalem, Sandy Bridge. */
inline uint32_t MSR_PKG_CST_CONFIG_CONTROL = 0x000000e2;


/** C0 Maximum Frequency Clock Count */
inline uint8_t MSR_IA32_MPERF = 0xE7;

/** C0 Actual Frequency Clock Count */
inline uint8_t MSR_IA32_APERF = 0xE8;


/** MTRR Capabilities. */
inline uint8_t MSR_IA32_MTRR_CAP = 0xFE;


/** Cache control/info. */
inline uint32_t MSR_BBL_CR_CTL3 = 0x11e;


/** SYSENTER_CS - the R0 CS, indirectly giving R0 SS, R3 CS and R3 DS.
 * R0 SS == CS + 8
 * R3 CS == CS + 16
 * R3 SS == CS + 24
 */
inline uint16_t MSR_IA32_SYSENTER_CS = 0x174;

/** SYSENTER_ESP - the R0 ESP. */
inline uint16_t MSR_IA32_SYSENTER_ESP = 0x175;

/** SYSENTER_EIP - the R0 EIP. */
inline uint16_t MSR_IA32_SYSENTER_EIP = 0x176;


/** Machine Check Global Capabilities Register. */
inline uint16_t MSR_IA32_MCG_CAP = 0x179;

/** Machine Check Global Status Register. */
inline uint16_t MSR_IA32_MCG_STATUS = 0x17A;

/** Machine Check Global Control Register. */
inline uint16_t MSR_IA32_MCG_CTRL = 0x17B;


/** Page Attribute Table. */
inline uint16_t MSR_IA32_CR_PAT = 0x277;


/** Performance counter MSRs. (Intel only) */
inline uint16_t MSR_IA32_PERFEVTSEL0 = 0x186;

inline uint16_t MSR_IA32_PERFEVTSEL1 = 0x187;

/** Flexible ratio, seems to be undocumented, used by XNU (tsc.c).
 * The 16th bit whether flex ratio is being used, in which case bits 15:8
 * holds a ratio that Apple takes for TSC granularity.
 *
 * @note This MSR conflicts the P4 MSR_MCG_R12 register. */
inline uint16_t MSR_FLEX_RATIO = 0x194;

/** Performance state value and starting with Intel core more.
 * Apple uses the >=core features to determine TSC granularity on older CPUs. */
inline uint16_t MSR_IA32_PERF_STATUS = 0x198;

inline uint16_t MSR_IA32_PERF_CTL = 0x199;

inline uint16_t MSR_IA32_THERM_STATUS = 0x19c;


/** Enable misc. processor features (R/W). */
inline uint16_t MSR_IA32_MISC_ENABLE = 0x1A0;

/** Enable fast-strings feature (for REP MOVS and REP STORS). */
inline uint64_t MSR_IA32_MISC_ENABLE_FAST_STRINGS = 1ULL << 0;

/** Automatic Thermal Control Circuit Enable (R/W). */
inline uint64_t MSR_IA32_MISC_ENABLE_TCC = 1ULL << 3;

/** Performance Monitoring Available (R). */
inline uint64_t MSR_IA32_MISC_ENABLE_PERF_MON = 1ULL << 7;

/** Branch Trace Storage Unavailable (R/O). */
inline uint64_t MSR_IA32_MISC_ENABLE_BTS_UNAVAIL = 1ULL << 11;

/** Precise Event Based Sampling (PEBS) Unavailable (R/O). */
inline uint64_t MSR_IA32_MISC_ENABLE_PEBS_UNAVAIL = 1ULL << 12;

/** Enhanced Intel SpeedStep Technology Enable (R/W). */
inline uint64_t MSR_IA32_MISC_ENABLE_SST_ENABLE = 1ULL << 16;

/** If MONITOR/MWAIT is supported (R/W). */
inline uint64_t MSR_IA32_MISC_ENABLE_MONITOR = 1ULL << 18;

/** Limit CPUID Maxval to 3 leafs (R/W). */
inline uint64_t MSR_IA32_MISC_ENABLE_LIMIT_CPUID = 1ULL << 22;

/** When set to 1, xTPR messages are disabled (R/W). */
inline uint64_t MSR_IA32_MISC_ENABLE_XTPR_MSG_DISABLE = 1ULL << 23;

/** When set to 1, the Execute Disable Bit feature (XD Bit) is disabled (R/W). */
inline uint64_t MSR_IA32_MISC_ENABLE_XD_DISABLE = 1ULL << 34;


/** Trace/Profile Resource Control (R/W) */
inline uint32_t MSR_IA32_DEBUGCTL = 0x000001d9;

/** The number (0..3 or 0..15) of the last branch record register on P4 and
 * related Xeons. */
inline uint32_t MSR_P4_LASTBRANCH_TOS = 0x000001da;

/** @name Last branch registers for P4 and Xeon, models 0 thru 2.
 * @{ */
inline uint32_t MSR_P4_LASTBRANCH_0 = 0x000001db;

inline uint32_t MSR_P4_LASTBRANCH_1 = 0x000001dc;

inline uint32_t MSR_P4_LASTBRANCH_2 = 0x000001dd;

inline uint32_t MSR_P4_LASTBRANCH_3 = 0x000001de;

/** @} */


inline uint16_t IA32_MTRR_PHYSBASE0 = 0x200;

inline uint16_t IA32_MTRR_PHYSMASK0 = 0x201;

inline uint16_t IA32_MTRR_PHYSBASE1 = 0x202;

inline uint16_t IA32_MTRR_PHYSMASK1 = 0x203;

inline uint16_t IA32_MTRR_PHYSBASE2 = 0x204;

inline uint16_t IA32_MTRR_PHYSMASK2 = 0x205;

inline uint16_t IA32_MTRR_PHYSBASE3 = 0x206;

inline uint16_t IA32_MTRR_PHYSMASK3 = 0x207;

inline uint16_t IA32_MTRR_PHYSBASE4 = 0x208;

inline uint16_t IA32_MTRR_PHYSMASK4 = 0x209;

inline uint16_t IA32_MTRR_PHYSBASE5 = 0x20a;

inline uint16_t IA32_MTRR_PHYSMASK5 = 0x20b;

inline uint16_t IA32_MTRR_PHYSBASE6 = 0x20c;

inline uint16_t IA32_MTRR_PHYSMASK6 = 0x20d;

inline uint16_t IA32_MTRR_PHYSBASE7 = 0x20e;

inline uint16_t IA32_MTRR_PHYSMASK7 = 0x20f;

inline uint16_t IA32_MTRR_PHYSBASE8 = 0x210;

inline uint16_t IA32_MTRR_PHYSMASK8 = 0x211;

inline uint16_t IA32_MTRR_PHYSBASE9 = 0x212;

inline uint16_t IA32_MTRR_PHYSMASK9 = 0x213;


/** Fixed range MTRRs.
 * @{  */
inline uint16_t IA32_MTRR_FIX64K_00000 = 0x250;

inline uint16_t IA32_MTRR_FIX16K_80000 = 0x258;

inline uint16_t IA32_MTRR_FIX16K_A0000 = 0x259;

inline uint16_t IA32_MTRR_FIX4K_C0000 = 0x268;

inline uint16_t IA32_MTRR_FIX4K_C8000 = 0x269;

inline uint16_t IA32_MTRR_FIX4K_D0000 = 0x26a;

inline uint16_t IA32_MTRR_FIX4K_D8000 = 0x26b;

inline uint16_t IA32_MTRR_FIX4K_E0000 = 0x26c;

inline uint16_t IA32_MTRR_FIX4K_E8000 = 0x26d;

inline uint16_t IA32_MTRR_FIX4K_F0000 = 0x26e;

inline uint16_t IA32_MTRR_FIX4K_F8000 = 0x26f;

/** @}  */

/** MTRR Default Range. */
inline uint16_t MSR_IA32_MTRR_DEF_TYPE = 0x2FF;


/** Global performance counter control facilities (Intel only). */
inline uint16_t MSR_IA32_PERF_GLOBAL_STATUS = 0x38E;

inline uint16_t MSR_IA32_PERF_GLOBAL_CTRL = 0x38F;

inline uint16_t MSR_IA32_PERF_GLOBAL_OVF_CTRL = 0x390;


/** Precise Event Based sampling (Intel only). */
inline uint16_t MSR_IA32_PEBS_ENABLE = 0x3F1;


inline uint16_t MSR_IA32_MC0_CTL = 0x400;

inline uint16_t MSR_IA32_MC0_STATUS = 0x401;


/** Basic VMX information. */
inline uint16_t MSR_IA32_VMX_BASIC_INFO = 0x480;

/** Allowed settings for pin-based VM execution controls */
inline uint16_t MSR_IA32_VMX_PINBASED_CTLS = 0x481;

/** Allowed settings for proc-based VM execution controls */
inline uint16_t MSR_IA32_VMX_PROCBASED_CTLS = 0x482;

/** Allowed settings for the VMX exit controls. */
inline uint16_t MSR_IA32_VMX_EXIT_CTLS = 0x483;

/** Allowed settings for the VMX entry controls. */
inline uint16_t MSR_IA32_VMX_ENTRY_CTLS = 0x484;

/** Misc VMX info. */
inline uint16_t MSR_IA32_VMX_MISC = 0x485;

/** Fixed cleared bits in CR0. */
inline uint16_t MSR_IA32_VMX_CR0_FIXED0 = 0x486;

/** Fixed set bits in CR0. */
inline uint16_t MSR_IA32_VMX_CR0_FIXED1 = 0x487;

/** Fixed cleared bits in CR4. */
inline uint16_t MSR_IA32_VMX_CR4_FIXED0 = 0x488;

/** Fixed set bits in CR4. */
inline uint16_t MSR_IA32_VMX_CR4_FIXED1 = 0x489;

/** Information for enumerating fields in the VMCS. */
inline uint16_t MSR_IA32_VMX_VMCS_ENUM = 0x48A;

/** Allowed settings for the VM-functions controls. */
inline uint16_t MSR_IA32_VMX_VMFUNC = 0x491;

/** Allowed settings for secondary proc-based VM execution controls */
inline uint16_t MSR_IA32_VMX_PROCBASED_CTLS2 = 0x48B;

/** EPT capabilities. */
inline uint16_t MSR_IA32_VMX_EPT_VPID_CAP = 0x48C;

/** Allowed settings of all pin-based VM execution controls. */
inline uint16_t MSR_IA32_VMX_TRUE_PINBASED_CTLS = 0x48D;

/** Allowed settings of all proc-based VM execution controls. */
inline uint16_t MSR_IA32_VMX_TRUE_PROCBASED_CTLS = 0x48E;

/** Allowed settings of all VMX exit controls. */
inline uint16_t MSR_IA32_VMX_TRUE_EXIT_CTLS = 0x48F;

/** Allowed settings of all VMX entry controls. */
inline uint16_t MSR_IA32_VMX_TRUE_ENTRY_CTLS = 0x490;


/** DS Save Area (R/W). */
inline uint16_t MSR_IA32_DS_AREA = 0x600;

/** Running Average Power Limit (RAPL) power units. */
inline uint16_t MSR_RAPL_POWER_UNIT = 0x606;


/** X2APIC MSR range start. */
inline uint16_t MSR_IA32_X2APIC_START = 0x800;

/** X2APIC MSR -  APIC ID Register. */
inline uint16_t MSR_IA32_X2APIC_ID = 0x802;

/** X2APIC MSR -  APIC Version Register. */
inline uint16_t MSR_IA32_X2APIC_VERSION = 0x803;

/** X2APIC MSR -  Task Priority Register. */
inline uint16_t MSR_IA32_X2APIC_TPR = 0x808;

/** X2APIC MSR -  Processor Priority register. */
inline uint16_t MSR_IA32_X2APIC_PPR = 0x80A;

/** X2APIC MSR -  End Of Interrupt register. */
inline uint16_t MSR_IA32_X2APIC_EOI = 0x80B;

/** X2APIC MSR -  Logical Destination Register. */
inline uint16_t MSR_IA32_X2APIC_LDR = 0x80D;

/** X2APIC MSR -  Spurious Interrupt Vector Register. */
inline uint16_t MSR_IA32_X2APIC_SVR = 0x80F;

/** X2APIC MSR -  In-service Register (bits 31:0). */
inline uint16_t MSR_IA32_X2APIC_ISR0 = 0x810;

/** X2APIC MSR -  In-service Register (bits 63:32). */
inline uint16_t MSR_IA32_X2APIC_ISR1 = 0x811;

/** X2APIC MSR -  In-service Register (bits 95:64). */
inline uint16_t MSR_IA32_X2APIC_ISR2 = 0x812;

/** X2APIC MSR -  In-service Register (bits 127:96). */
inline uint16_t MSR_IA32_X2APIC_ISR3 = 0x813;

/** X2APIC MSR -  In-service Register (bits 159:128). */
inline uint16_t MSR_IA32_X2APIC_ISR4 = 0x814;

/** X2APIC MSR -  In-service Register (bits 191:160). */
inline uint16_t MSR_IA32_X2APIC_ISR5 = 0x815;

/** X2APIC MSR -  In-service Register (bits 223:192). */
inline uint16_t MSR_IA32_X2APIC_ISR6 = 0x816;

/** X2APIC MSR -  In-service Register (bits 255:224). */
inline uint16_t MSR_IA32_X2APIC_ISR7 = 0x817;

/** X2APIC MSR -  Trigger Mode Register (bits 31:0). */
inline uint16_t MSR_IA32_X2APIC_TMR0 = 0x818;

/** X2APIC MSR -  Trigger Mode Register (bits 63:32). */
inline uint16_t MSR_IA32_X2APIC_TMR1 = 0x819;

/** X2APIC MSR -  Trigger Mode Register (bits 95:64). */
inline uint16_t MSR_IA32_X2APIC_TMR2 = 0x81A;

/** X2APIC MSR -  Trigger Mode Register (bits 127:96). */
inline uint16_t MSR_IA32_X2APIC_TMR3 = 0x81B;

/** X2APIC MSR -  Trigger Mode Register (bits 159:128). */
inline uint16_t MSR_IA32_X2APIC_TMR4 = 0x81C;

/** X2APIC MSR -  Trigger Mode Register (bits 191:160). */
inline uint16_t MSR_IA32_X2APIC_TMR5 = 0x81D;

/** X2APIC MSR -  Trigger Mode Register (bits 223:192). */
inline uint16_t MSR_IA32_X2APIC_TMR6 = 0x81E;

/** X2APIC MSR -  Trigger Mode Register (bits 255:224). */
inline uint16_t MSR_IA32_X2APIC_TMR7 = 0x81F;

/** X2APIC MSR -  Interrupt Request Register (bits 31:0). */
inline uint16_t MSR_IA32_X2APIC_IRR0 = 0x820;

/** X2APIC MSR -  Interrupt Request Register (bits 63:32). */
inline uint16_t MSR_IA32_X2APIC_IRR1 = 0x821;

/** X2APIC MSR -  Interrupt Request Register (bits 95:64). */
inline uint16_t MSR_IA32_X2APIC_IRR2 = 0x822;

/** X2APIC MSR -  Interrupt Request Register (bits 127:96). */
inline uint16_t MSR_IA32_X2APIC_IRR3 = 0x823;

/** X2APIC MSR -  Interrupt Request Register (bits 159:128). */
inline uint16_t MSR_IA32_X2APIC_IRR4 = 0x824;

/** X2APIC MSR -  Interrupt Request Register (bits 191:160). */
inline uint16_t MSR_IA32_X2APIC_IRR5 = 0x825;

/** X2APIC MSR -  Interrupt Request Register (bits 223:192). */
inline uint16_t MSR_IA32_X2APIC_IRR6 = 0x826;

/** X2APIC MSR -  Interrupt Request Register (bits 255:224). */
inline uint16_t MSR_IA32_X2APIC_IRR7 = 0x827;

/** X2APIC MSR -  Error Status Register. */
inline uint16_t MSR_IA32_X2APIC_ESR = 0x828;

/** X2APIC MSR - LVT CMCI Register. */
inline uint16_t MSR_IA32_X2APIC_LVT_CMCI = 0x82F;

/** X2APIC MSR -  Interrupt Command Register. */
inline uint16_t MSR_IA32_X2APIC_ICR = 0x830;

/** X2APIC MSR -  LVT Timer Register. */
inline uint16_t MSR_IA32_X2APIC_LVT_TIMER = 0x832;

/** X2APIC MSR -  LVT Thermal Sensor Register. */
inline uint16_t MSR_IA32_X2APIC_LVT_THERMAL = 0x833;

/** X2APIC MSR -  LVT Performance Counter Register. */
inline uint16_t MSR_IA32_X2APIC_LVT_PERF = 0x834;

/** X2APIC MSR -  LVT LINT0 Register. */
inline uint16_t MSR_IA32_X2APIC_LVT_LINT0 = 0x835;

/** X2APIC MSR -  LVT LINT1 Register. */
inline uint16_t MSR_IA32_X2APIC_LVT_LINT1 = 0x836;

/** X2APIC MSR -  LVT Error Register . */
inline uint16_t MSR_IA32_X2APIC_LVT_ERROR = 0x837;

/** X2APIC MSR -  Timer Initial Count Register. */
inline uint16_t MSR_IA32_X2APIC_TIMER_ICR = 0x838;

/** X2APIC MSR -  Timer Current Count Register. */
inline uint16_t MSR_IA32_X2APIC_TIMER_CCR = 0x839;

/** X2APIC MSR -  Timer Divide Configuration Register. */
inline uint16_t MSR_IA32_X2APIC_TIMER_DCR = 0x83E;

/** X2APIC MSR - Self IPI. */
inline uint16_t MSR_IA32_X2APIC_SELF_IPI = 0x83F;

/** X2APIC MSR range end. */
inline uint16_t MSR_IA32_X2APIC_END = 0xBFF;

/** X2APIC MSR - LVT start range. */
inline uint16_t MSR_IA32_X2APIC_LVT_START = 0x832;

/** X2APIC MSR - LVT end range (inclusive). */
inline uint16_t MSR_IA32_X2APIC_LVT_END = 0x837;


/** K6 EFER - Extended Feature Enable Register. */
inline uint32_t MSR_K6_EFER = 0xc0000080;

/** @todo document EFER */
/** Bit 0 - SCE - System call extensions (SYSCALL / SYSRET). (R/W) */
inline uint32_t MSR_K6_EFER_SCE = 1U << 0;

/** Bit 8 - LME - Long mode enabled. (R/W) */
inline uint32_t MSR_K6_EFER_LME = 1U << 8;

/** Bit 10 - LMA - Long mode active. (R) */
inline uint32_t MSR_K6_EFER_LMA = 1U << 10;

/** Bit 11 - NXE - No-Execute Page Protection Enabled. (R/W) */
inline uint32_t MSR_K6_EFER_NXE = 1U << 11;


/** Bit 12 - SVME - Secure VM Extension Enabled. (R/W) */
inline uint32_t MSR_K6_EFER_SVME = 1U << 12;

/** Bit 13 - LMSLE - Long Mode Segment Limit Enable. (R/W?) */
inline uint32_t MSR_K6_EFER_LMSLE = 1U << 13;

/** Bit 14 - FFXSR - Fast FXSAVE / FXRSTOR (skip XMM*). (R/W) */
inline uint32_t MSR_K6_EFER_FFXSR = 1U << 14;

/** Bit 15 - TCE - Translation Cache Extension. (R/W) */
inline uint32_t MSR_K6_EFER_TCE = 1U << 15;

/** K6 STAR - SYSCALL/RET targets. */
inline uint32_t MSR_K6_STAR = 0xc0000081;

/** Shift value for getting the SYSRET CS and SS value. */
inline uint8_t MSR_K6_STAR_SYSRET_CS_SS_SHIFT = 48;

/** Shift value for getting the SYSCALL CS and SS value. */
inline uint8_t MSR_K6_STAR_SYSCALL_CS_SS_SHIFT = 32;

/** Selector mask for use after shifting. */
inline uint32_t MSR_K6_STAR_SEL_MASK = 0xffff;

/** The mask which give the SYSCALL EIP. */
inline uint32_t MSR_K6_STAR_SYSCALL_EIP_MASK = 0xffffffff;

/** K6 WHCR - Write Handling Control Register. */
inline uint32_t MSR_K6_WHCR = 0xc0000082;

/** K6 UWCCR - UC/WC Cacheability Control Register. */
inline uint32_t MSR_K6_UWCCR = 0xc0000085;

/** K6 PSOR - Processor State Observability Register. */
inline uint32_t MSR_K6_PSOR = 0xc0000087;

/** K6 PFIR - Page Flush/Invalidate Register. */
inline uint32_t MSR_K6_PFIR = 0xc0000088;


/** Performance counter MSRs. (AMD only) */
inline uint32_t MSR_K7_EVNTSEL0 = 0xc0010000;

inline uint32_t MSR_K7_EVNTSEL1 = 0xc0010001;

inline uint32_t MSR_K7_EVNTSEL2 = 0xc0010002;

inline uint32_t MSR_K7_EVNTSEL3 = 0xc0010003;

inline uint32_t MSR_K7_PERFCTR0 = 0xc0010004;

inline uint32_t MSR_K7_PERFCTR1 = 0xc0010005;

inline uint32_t MSR_K7_PERFCTR2 = 0xc0010006;

inline uint32_t MSR_K7_PERFCTR3 = 0xc0010007;


/** K8 LSTAR - Long mode SYSCALL target (RIP). */
inline uint32_t MSR_K8_LSTAR = 0xc0000082;

/** K8 CSTAR - Compatibility mode SYSCALL target (RIP). */
inline uint32_t MSR_K8_CSTAR = 0xc0000083;

/** K8 SF_MASK - SYSCALL flag mask. (aka SFMASK) */
inline uint32_t MSR_K8_SF_MASK = 0xc0000084;

/** K8 FS.base - The 64-bit base FS register. */
inline uint32_t MSR_K8_FS_BASE = 0xc0000100;

/** K8 GS.base - The 64-bit base GS register. */
inline uint32_t MSR_K8_GS_BASE = 0xc0000101;

/** K8 KernelGSbase - Used with SWAPGS. */
inline uint32_t MSR_K8_KERNEL_GS_BASE = 0xc0000102;

/** K8 TSC_AUX - Used with RDTSCP. */
inline uint32_t MSR_K8_TSC_AUX = 0xc0000103;

inline uint32_t MSR_K8_SYSCFG = 0xc0010010;

inline uint32_t MSR_K8_HWCR = 0xc0010015;

inline uint32_t MSR_K8_IORRBASE0 = 0xc0010016;

inline uint32_t MSR_K8_IORRMASK0 = 0xc0010017;

inline uint32_t MSR_K8_IORRBASE1 = 0xc0010018;

inline uint32_t MSR_K8_IORRMASK1 = 0xc0010019;

inline uint32_t MSR_K8_TOP_MEM1 = 0xc001001a;

inline uint32_t MSR_K8_TOP_MEM2 = 0xc001001d;

/** North bridge config? See BIOS & Kernel dev guides for
 * details. */
inline uint32_t MSR_K8_NB_CFG = 0xc001001f;


/** Hypertransport interrupt pending register.
 * "BIOS and Kernel Developer's Guide for AMD NPT Family 0Fh Processors" */
inline uint32_t MSR_K8_INT_PENDING = 0xc0010055;


/** SVM Control. */
inline uint32_t MSR_K8_VM_CR = 0xc0010114;

/** Disables HDT (Hardware Debug Tool) and certain internal debug
 *  features. */
inline uint32_t MSR_K8_VM_CR_DPD = 1U << 0;

/** If set, non-intercepted INIT signals are converted to \#SX
 *  exceptions. */
inline uint32_t MSR_K8_VM_CR_R_INIT = 1U << 1;

/** Disables A20 masking.  */
inline uint32_t MSR_K8_VM_CR_DIS_A20M = 1U << 2;

/** Lock bit for this MSR controlling bits 3 (LOCK) and 4 (SVMDIS). */
inline uint32_t MSR_K8_VM_CR_LOCK = 1U << 3;

/** SVM disable. When set, writes to EFER.SVME are treated as MBZ. When
 *  clear, EFER.SVME can be written normally. */
inline uint32_t MSR_K8_VM_CR_SVM_DISABLE = 1U << 4;


inline uint32_t MSR_K8_IGNNE = 0xc0010115;

inline uint32_t MSR_K8_SMM_CTL = 0xc0010116;

/** SVM - VM_HSAVE_PA - Physical address for saving and restoring
 *                      host state during world switch. */
inline uint32_t MSR_K8_VM_HSAVE_PA = 0xc0010117;


/** @} */


/** @name Page Table / Directory / Directory Pointers / L4.
 * @{
 */

/** Page table/directory  entry as an unsigned integer. */
typedef uint32_t X86PGUINT;
/** Pointer to a page table/directory table entry as an unsigned integer. */
typedef X86PGUINT *PX86PGUINT;
/** Pointer to an const page table/directory table entry as an unsigned integer. */
typedef X86PGUINT const *PCX86PGUINT;

/** Number of entries in a 32-bit PT/PD. */
inline uint16_t X86_PG_ENTRIES = 1024;



/** PAE page table/page directory/pdpt/l4/l5 entry as an unsigned integer. */
typedef uint64_t X86PGPAEUINT;
/** Pointer to a PAE page table/page directory/pdpt/l4/l5 entry as an unsigned integer. */
typedef X86PGPAEUINT *PX86PGPAEUINT;
/** Pointer to an const PAE page table/page directory/pdpt/l4/l5 entry as an unsigned integer. */
typedef X86PGPAEUINT const *PCX86PGPAEUINT;

/** Number of entries in a PAE PT/PD. */
inline uint16_t X86_PG_PAE_ENTRIES = 512;

/** Number of entries in a PAE PDPT. */
inline uint8_t X86_PG_PAE_PDPE_ENTRIES = 4;


/** Number of entries in an AMD64 PT/PD/PDPT/L4/L5. */
inline uint16_t X86_PG_AMD64_ENTRIES = 512;

/** Number of entries in an AMD64 PDPT.
 * Just for complementing X86_PG_PAE_PDPE_ENTRIES, using X86_PG_AMD64_ENTRIES for this is fine too. */
inline uint16_t X86_PG_AMD64_PDPE_ENTRIES = 512;


/** The size of a default page. */

/** The page shift of a default page. */

/** The default page offset mask. */

/** The default page base mask for virtual addresses. */

/** The default page base mask for virtual addresses - 32bit version. */


/** The size of a 4KB page. */

/** The page shift of a 4KB page. */
inline uint8_t X86_PAGE_4K_SHIFT = 12;

/** The 4KB page offset mask. */
inline uint16_t X86_PAGE_4K_OFFSET_MASK = 0xfff;

/** The 4KB page base mask for virtual addresses. */
inline uint64_t X86_PAGE_4K_BASE_MASK = 0xfffffffffffff000;

/** The 4KB page base mask for virtual addresses - 32bit version. */
inline uint32_t X86_PAGE_4K_BASE_MASK_32 = 0xfffff000;


/** The size of a 2MB page. */

/** The page shift of a 2MB page. */
inline uint8_t X86_PAGE_2M_SHIFT = 21;

/** The 2MB page offset mask. */
inline uint32_t X86_PAGE_2M_OFFSET_MASK = 0x001fffff;

/** The 2MB page base mask for virtual addresses. */
inline uint64_t X86_PAGE_2M_BASE_MASK = 0xffffffffffe00000;

/** The 2MB page base mask for virtual addresses - 32bit version. */
inline uint32_t X86_PAGE_2M_BASE_MASK_32 = 0xffe00000;


/** The size of a 4MB page. */

/** The page shift of a 4MB page. */
inline uint8_t X86_PAGE_4M_SHIFT = 22;

/** The 4MB page offset mask. */
inline uint32_t X86_PAGE_4M_OFFSET_MASK = 0x003fffff;

/** The 4MB page base mask for virtual addresses. */
inline uint64_t X86_PAGE_4M_BASE_MASK = 0xffffffffffc00000;

/** The 4MB page base mask for virtual addresses - 32bit version. */
inline uint32_t X86_PAGE_4M_BASE_MASK_32 = 0xffc00000;


/**
 * Check if the given address is canonical.
 */



/** @name Page Table Entry
 * @{
 */
/** Bit 0 -  P  - Present bit. */
inline uint8_t X86_PTE_BIT_P = 0;

/** Bit 1 - R/W - Read (clear) / Write (set) bit. */
inline uint8_t X86_PTE_BIT_RW = 1;

/** Bit 2 - U/S - User (set) / Supervisor (clear) bit. */
inline uint8_t X86_PTE_BIT_US = 2;

/** Bit 3 - PWT - Page level write thru bit. */
inline uint8_t X86_PTE_BIT_PWT = 3;

/** Bit 4 - PCD - Page level cache disable bit. */
inline uint8_t X86_PTE_BIT_PCD = 4;

/** Bit 5 -  A  - Access bit. */
inline uint8_t X86_PTE_BIT_A = 5;

/** Bit 6 -  D  - Dirty bit. */
inline uint8_t X86_PTE_BIT_D = 6;

/** Bit 7 - PAT - Page Attribute Table index bit. Reserved and 0 if not supported. */
inline uint8_t X86_PTE_BIT_PAT = 7;

/** Bit 8 -  G  - Global flag. */
inline uint8_t X86_PTE_BIT_G = 8;

/** Bits 63 - NX - PAE/LM - No execution flag. */
inline uint8_t X86_PTE_PAE_BIT_NX = 63;


/** Bit 0 -  P  - Present bit mask. */
inline uint32_t X86_PTE_P = 1U << 0;

/** Bit 1 - R/W - Read (clear) / Write (set) bit mask. */
inline uint32_t X86_PTE_RW = 1U << 1;

/** Bit 2 - U/S - User (set) / Supervisor (clear) bit mask. */
inline uint32_t X86_PTE_US = 1U << 2;

/** Bit 3 - PWT - Page level write thru bit mask. */
inline uint32_t X86_PTE_PWT = 1U << 3;

/** Bit 4 - PCD - Page level cache disable bit mask. */
inline uint32_t X86_PTE_PCD = 1U << 4;

/** Bit 5 -  A  - Access bit mask. */
inline uint32_t X86_PTE_A = 1U << 5;

/** Bit 6 -  D  - Dirty bit mask. */
inline uint32_t X86_PTE_D = 1U << 6;

/** Bit 7 - PAT - Page Attribute Table index bit mask. Reserved and 0 if not supported. */
inline uint32_t X86_PTE_PAT = 1U << 7;

/** Bit 8 -  G  - Global bit mask. */
inline uint32_t X86_PTE_G = 1U << 8;


/** Bits 9-11 - - Available for use to system software. */

/** Bits 12-31 - - Physical Page number of the next level. */


/** Bits 12-51 - - PAE - Physical Page number of the next level. */
inline uint64_t X86_PTE_PAE_PG_MASK = 0x000ffffffffff000;

/** Bits 63 - NX - PAE/LM - No execution flag. */
inline uint64_t X86_PTE_PAE_NX = 1ULL << 63;

/** Bits 62-52 - - PAE - MBZ bits when NX is active. */
inline uint64_t X86_PTE_PAE_MBZ_MASK_NX = 0x7ff0000000000000;

/** Bits 63-52 - - PAE - MBZ bits when no NX. */
inline uint64_t X86_PTE_PAE_MBZ_MASK_NO_NX = 0xfff0000000000000;

/** No bits -    - LM  - MBZ bits when NX is active. */
inline uint64_t X86_PTE_LM_MBZ_MASK_NX = 0x0000000000000000;

/** Bits 63 -    - LM  - MBZ bits when no NX. */
inline uint64_t X86_PTE_LM_MBZ_MASK_NO_NX = 0x8000000000000000;


/**
 * Page table entry.
 */
typedef struct X86PTEBITS
{
    /** Flags whether(=1) or not the page is present. */
    uint32_t    u1Present : 1;
    /** Read(=0) / Write(=1) flag. */
    uint32_t    u1Write : 1;
    /** User(=1) / Supervisor (=0) flag. */
    uint32_t    u1User : 1;
    /** Write Thru flag. If PAT enabled, bit 0 of the index. */
    uint32_t    u1WriteThru : 1;
    /** Cache disabled flag. If PAT enabled, bit 1 of the index. */
    uint32_t    u1CacheDisable : 1;
    /** Accessed flag.
     * Indicates that the page have been read or written to. */
    uint32_t    u1Accessed : 1;
    /** Dirty flag.
     * Indicates that the page has been written to. */
    uint32_t    u1Dirty : 1;
    /** Reserved / If PAT enabled, bit 2 of the index.  */
    uint32_t    u1PAT : 1;
    /** Global flag. (Ignored in all but final level.) */
    uint32_t    u1Global : 1;
    /** Available for use to system software. */
    uint32_t    u3Available : 3;
    /** Physical Page number of the next level. */
    uint32_t    u20PageNo : 20;
} X86PTEBITS;
/** Pointer to a page table entry. */
typedef X86PTEBITS *PX86PTEBITS;
/** Pointer to a const page table entry. */
typedef const X86PTEBITS *PCX86PTEBITS;

/**
 * Page table entry.
 */
typedef union X86PTE
{
    /** Unsigned integer view */
    X86PGUINT       u;
    /** Bit field view. */
    X86PTEBITS      n;
    /** 32-bit view. */
    uint32_t        au32[1];
    /** 16-bit view. */
    uint16_t        au16[2];
    /** 8-bit view. */
    uint8_t         au8[4];
} X86PTE;
/** Pointer to a page table entry. */
typedef X86PTE *PX86PTE;
/** Pointer to a const page table entry. */
typedef const X86PTE *PCX86PTE;


/**
 * PAE page table entry.
 */
typedef struct X86PTEPAEBITS
{
    /** Flags whether(=1) or not the page is present. */
    uint32_t    u1Present : 1;
    /** Read(=0) / Write(=1) flag. */
    uint32_t    u1Write : 1;
    /** User(=1) / Supervisor(=0) flag. */
    uint32_t    u1User : 1;
    /** Write Thru flag. If PAT enabled, bit 0 of the index. */
    uint32_t    u1WriteThru : 1;
    /** Cache disabled flag. If PAT enabled, bit 1 of the index. */
    uint32_t    u1CacheDisable : 1;
    /** Accessed flag.
     * Indicates that the page have been read or written to. */
    uint32_t    u1Accessed : 1;
    /** Dirty flag.
     * Indicates that the page has been written to. */
    uint32_t    u1Dirty : 1;
    /** Reserved / If PAT enabled, bit 2 of the index.  */
    uint32_t    u1PAT : 1;
    /** Global flag. (Ignored in all but final level.) */
    uint32_t    u1Global : 1;
    /** Available for use to system software. */
    uint32_t    u3Available : 3;
    /** Physical Page number of the next level - Low Part. Don't use this. */
    uint32_t    u20PageNoLow : 20;
    /** Physical Page number of the next level - High Part. Don't use this. */
    uint32_t    u20PageNoHigh : 20;
    /** MBZ bits */
    uint32_t    u11Reserved : 11;
    /** No Execute flag. */
    uint32_t    u1NoExecute : 1;
} X86PTEPAEBITS;
/** Pointer to a page table entry. */
typedef X86PTEPAEBITS *PX86PTEPAEBITS;
/** Pointer to a page table entry. */
typedef const X86PTEPAEBITS *PCX86PTEPAEBITS;

/**
 * PAE Page table entry.
 */
typedef union X86PTEPAE
{
    /** Unsigned integer view */
    X86PGPAEUINT    u;
    /** Bit field view. */
    X86PTEPAEBITS   n;
    /** 32-bit view. */
    uint32_t        au32[2];
    /** 16-bit view. */
    uint16_t        au16[4];
    /** 8-bit view. */
    uint8_t         au8[8];
} X86PTEPAE;
/** Pointer to a PAE page table entry. */
typedef X86PTEPAE *PX86PTEPAE;
/** Pointer to a const PAE page table entry. */
typedef const X86PTEPAE *PCX86PTEPAE;
/** @} */

/**
 * Page table.
 */
typedef struct X86PT
{
    /** PTE Array. */
    X86PTE     a[1024 ];
} X86PT;
/** Pointer to a page table. */
typedef X86PT *PX86PT;
/** Pointer to a const page table. */
typedef const X86PT *PCX86PT;

/** The page shift to get the PT index. */
inline uint8_t X86_PT_SHIFT = 12;

/** The PT index mask (apply to a shifted page address). */
inline uint16_t X86_PT_MASK = 0x3ff;



/**
 * Page directory.
 */
typedef struct X86PTPAE
{
    /** PTE Array. */
    X86PTEPAE  a[512 ];
} X86PTPAE;
/** Pointer to a page table. */
typedef X86PTPAE *PX86PTPAE;
/** Pointer to a const page table. */
typedef const X86PTPAE *PCX86PTPAE;

/** The page shift to get the PA PTE index. */
inline uint8_t X86_PT_PAE_SHIFT = 12;

/** The PAE PT index mask (apply to a shifted page address). */
inline uint16_t X86_PT_PAE_MASK = 0x1ff;



/** @name 4KB Page Directory Entry
 * @{
 */
/** Bit 0 -  P  - Present bit. */
inline uint32_t X86_PDE_P = 1U << 0;

/** Bit 1 - R/W - Read (clear) / Write (set) bit. */
inline uint32_t X86_PDE_RW = 1U << 1;

/** Bit 2 - U/S - User (set) / Supervisor (clear) bit. */
inline uint32_t X86_PDE_US = 1U << 2;

/** Bit 3 - PWT - Page level write thru bit. */
inline uint32_t X86_PDE_PWT = 1U << 3;

/** Bit 4 - PCD - Page level cache disable bit. */
inline uint32_t X86_PDE_PCD = 1U << 4;

/** Bit 5 -  A  - Access bit. */
inline uint32_t X86_PDE_A = 1U << 5;

/** Bit 7 - PS  - Page size attribute.
 * Clear mean 4KB pages, set means large pages (2/4MB). */
inline uint32_t X86_PDE_PS = 1U << 7;

/** Bits 9-11 - - Available for use to system software. */

/** Bits 12-31 -  - Physical Page number of the next level. */


/** Bits 12-51 - - PAE - Physical Page number of the next level. */
inline uint64_t X86_PDE_PAE_PG_MASK = 0x000ffffffffff000;

/** Bits 63 - NX - PAE/LM - No execution flag. */
inline uint64_t X86_PDE_PAE_NX = 1ULL << 63;

/** Bits 62-52, 7 - - PAE - MBZ bits when NX is active. */
inline uint64_t X86_PDE_PAE_MBZ_MASK_NX = 0x7ff0000000000080;

/** Bits 63-52, 7 - - PAE - MBZ bits when no NX. */
inline uint64_t X86_PDE_PAE_MBZ_MASK_NO_NX = 0xfff0000000000080;

/** Bit 7 -         - LM  - MBZ bits when NX is active. */
inline uint64_t X86_PDE_LM_MBZ_MASK_NX = 0x0000000000000080;

/** Bits 63, 7 -    - LM  - MBZ bits when no NX. */
inline uint64_t X86_PDE_LM_MBZ_MASK_NO_NX = 0x8000000000000080;


/**
 * Page directory entry.
 */
typedef struct X86PDEBITS
{
    /** Flags whether(=1) or not the page is present. */
    uint32_t    u1Present : 1;
    /** Read(=0) / Write(=1) flag. */
    uint32_t    u1Write : 1;
    /** User(=1) / Supervisor (=0) flag. */
    uint32_t    u1User : 1;
    /** Write Thru flag. If PAT enabled, bit 0 of the index. */
    uint32_t    u1WriteThru : 1;
    /** Cache disabled flag. If PAT enabled, bit 1 of the index. */
    uint32_t    u1CacheDisable : 1;
    /** Accessed flag.
     * Indicates that the page has been read or written to. */
    uint32_t    u1Accessed : 1;
    /** Reserved / Ignored (dirty bit). */
    uint32_t    u1Reserved0 : 1;
    /** Size bit if PSE is enabled - in any event it's 0. */
    uint32_t    u1Size : 1;
    /** Reserved / Ignored (global bit). */
    uint32_t    u1Reserved1 : 1;
    /** Available for use to system software. */
    uint32_t    u3Available : 3;
    /** Physical Page number of the next level. */
    uint32_t    u20PageNo : 20;
} X86PDEBITS;
/** Pointer to a page directory entry. */
typedef X86PDEBITS *PX86PDEBITS;
/** Pointer to a const page directory entry. */
typedef const X86PDEBITS *PCX86PDEBITS;


/**
 * PAE page directory entry.
 */
typedef struct X86PDEPAEBITS
{
    /** Flags whether(=1) or not the page is present. */
    uint32_t    u1Present : 1;
    /** Read(=0) / Write(=1) flag. */
    uint32_t    u1Write : 1;
    /** User(=1) / Supervisor (=0) flag. */
    uint32_t    u1User : 1;
    /** Write Thru flag. If PAT enabled, bit 0 of the index. */
    uint32_t    u1WriteThru : 1;
    /** Cache disabled flag. If PAT enabled, bit 1 of the index. */
    uint32_t    u1CacheDisable : 1;
    /** Accessed flag.
     * Indicates that the page has been read or written to. */
    uint32_t    u1Accessed : 1;
    /** Reserved / Ignored (dirty bit). */
    uint32_t    u1Reserved0 : 1;
    /** Size bit if PSE is enabled - in any event it's 0. */
    uint32_t    u1Size : 1;
    /** Reserved / Ignored (global bit). /  */
    uint32_t    u1Reserved1 : 1;
    /** Available for use to system software. */
    uint32_t    u3Available : 3;
    /** Physical Page number of the next level - Low Part. Don't use! */
    uint32_t    u20PageNoLow : 20;
    /** Physical Page number of the next level - High Part. Don't use! */
    uint32_t    u20PageNoHigh : 20;
    /** MBZ bits */
    uint32_t    u11Reserved : 11;
    /** No Execute flag. */
    uint32_t    u1NoExecute : 1;
} X86PDEPAEBITS;
/** Pointer to a page directory entry. */
typedef X86PDEPAEBITS *PX86PDEPAEBITS;
/** Pointer to a const page directory entry. */
typedef const X86PDEPAEBITS *PCX86PDEPAEBITS;

/** @} */


/** @name 2/4MB Page Directory Entry
 * @{
 */
/** Bit 0 -  P  - Present bit. */
inline uint32_t X86_PDE4M_P = 1U << 0;

/** Bit 1 - R/W - Read (clear) / Write (set) bit. */
inline uint32_t X86_PDE4M_RW = 1U << 1;

/** Bit 2 - U/S - User (set) / Supervisor (clear) bit. */
inline uint32_t X86_PDE4M_US = 1U << 2;

/** Bit 3 - PWT - Page level write thru bit. */
inline uint32_t X86_PDE4M_PWT = 1U << 3;

/** Bit 4 - PCD - Page level cache disable bit. */
inline uint32_t X86_PDE4M_PCD = 1U << 4;

/** Bit 5 -  A  - Access bit. */
inline uint32_t X86_PDE4M_A = 1U << 5;

/** Bit 6 -  D  - Dirty bit. */
inline uint32_t X86_PDE4M_D = 1U << 6;

/** Bit 7 - PS  - Page size attribute. Clear mean 4KB pages, set means large pages (2/4MB). */
inline uint32_t X86_PDE4M_PS = 1U << 7;

/** Bit 8 -  G  - Global flag. */
inline uint32_t X86_PDE4M_G = 1U << 8;

/** Bits 9-11 - AVL - Available for use to system software. */

/** Bit 12 - PAT - Page Attribute Table index bit. Reserved and 0 if not supported. */
inline uint32_t X86_PDE4M_PAT = 1U << 12;

/** Shift to get from X86_PTE_PAT to X86_PDE4M_PAT. */

/** Bits 22-31 - - Physical Page number. */

/** Bits 20-13 - - Physical Page number high part (32-39 bits). AMD64 hack. */

/** The number of bits to the high part of the page number. */
inline uint8_t X86_PDE4M_PG_HIGH_SHIFT = 19;

/** Bit 21 -     - MBZ bits for AMD CPUs, no PSE36. */
inline uint32_t X86_PDE4M_MBZ_MASK = 1U << 21;


/** Bits 21-51 - - PAE/LM - Physical Page number.
 * (Bits 40-51 (long mode) & bits 36-51 (pae legacy) are reserved according to the Intel docs; AMD allows for more.) */
inline uint64_t X86_PDE2M_PAE_PG_MASK = 0x000fffffffe00000;

/** Bits 63 - NX - PAE/LM - No execution flag. */
inline uint64_t X86_PDE2M_PAE_NX = 1ULL << 63;

/** Bits 62-52, 20-13 - - PAE - MBZ bits when NX is active. */
inline uint64_t X86_PDE2M_PAE_MBZ_MASK_NX = 0x7ff00000001fe000;

/** Bits 63-52, 20-13 - - PAE - MBZ bits when no NX. */
inline uint64_t X86_PDE2M_PAE_MBZ_MASK_NO_NX = 0xfff00000001fe000;

/** Bits 20-13        - - LM  - MBZ bits when NX is active. */
inline uint64_t X86_PDE2M_LM_MBZ_MASK_NX = 0x00000000001fe000;

/** Bits 63, 20-13    - - LM  - MBZ bits when no NX. */
inline uint64_t X86_PDE2M_LM_MBZ_MASK_NO_NX = 0x80000000001fe000;


/**
 * 4MB page directory entry.
 */
typedef struct X86PDE4MBITS
{
    /** Flags whether(=1) or not the page is present. */
    uint32_t    u1Present : 1;
    /** Read(=0) / Write(=1) flag. */
    uint32_t    u1Write : 1;
    /** User(=1) / Supervisor (=0) flag. */
    uint32_t    u1User : 1;
    /** Write Thru flag. If PAT enabled, bit 0 of the index. */
    uint32_t    u1WriteThru : 1;
    /** Cache disabled flag. If PAT enabled, bit 1 of the index. */
    uint32_t    u1CacheDisable : 1;
    /** Accessed flag.
     * Indicates that the page have been read or written to. */
    uint32_t    u1Accessed : 1;
    /** Dirty flag.
     * Indicates that the page has been written to. */
    uint32_t    u1Dirty : 1;
    /** Page size flag - always 1 for 4MB entries. */
    uint32_t    u1Size : 1;
    /** Global flag.  */
    uint32_t    u1Global : 1;
    /** Available for use to system software. */
    uint32_t    u3Available : 3;
    /** Reserved / If PAT enabled, bit 2 of the index.  */
    uint32_t    u1PAT : 1;
    /** Bits 32-39 of the page number on AMD64.
     * This AMD64 hack allows accessing 40bits of physical memory without PAE. */
    uint32_t    u8PageNoHigh : 8;
    /** Reserved. */
    uint32_t    u1Reserved : 1;
    /** Physical Page number of the page. */
    uint32_t    u10PageNo : 10;
} X86PDE4MBITS;
/** Pointer to a page table entry. */
typedef X86PDE4MBITS *PX86PDE4MBITS;
/** Pointer to a const page table entry. */
typedef const X86PDE4MBITS *PCX86PDE4MBITS;


/**
 * 2MB PAE page directory entry.
 */
typedef struct X86PDE2MPAEBITS
{
    /** Flags whether(=1) or not the page is present. */
    uint32_t    u1Present : 1;
    /** Read(=0) / Write(=1) flag. */
    uint32_t    u1Write : 1;
    /** User(=1) / Supervisor(=0) flag. */
    uint32_t    u1User : 1;
    /** Write Thru flag. If PAT enabled, bit 0 of the index. */
    uint32_t    u1WriteThru : 1;
    /** Cache disabled flag. If PAT enabled, bit 1 of the index. */
    uint32_t    u1CacheDisable : 1;
    /** Accessed flag.
     * Indicates that the page have been read or written to. */
    uint32_t    u1Accessed : 1;
    /** Dirty flag.
     * Indicates that the page has been written to. */
    uint32_t    u1Dirty : 1;
    /** Page size flag - always 1 for 2MB entries. */
    uint32_t    u1Size : 1;
    /** Global flag.  */
    uint32_t    u1Global : 1;
    /** Available for use to system software. */
    uint32_t    u3Available : 3;
    /** Reserved / If PAT enabled, bit 2 of the index.  */
    uint32_t    u1PAT : 1;
    /** Reserved. */
    uint32_t    u9Reserved : 9;
    /** Physical Page number of the next level - Low part. Don't use! */
    uint32_t    u10PageNoLow : 10;
    /** Physical Page number of the next level - High part. Don't use! */
    uint32_t    u20PageNoHigh : 20;
    /** MBZ bits */
    uint32_t    u11Reserved : 11;
    /** No Execute flag. */
    uint32_t    u1NoExecute : 1;
} X86PDE2MPAEBITS;
/** Pointer to a 2MB PAE page table entry. */
typedef X86PDE2MPAEBITS *PX86PDE2MPAEBITS;
/** Pointer to a 2MB PAE page table entry. */
typedef const X86PDE2MPAEBITS *PCX86PDE2MPAEBITS;

/** @} */

/**
 * Page directory entry.
 */
typedef union X86PDE
{
    /** Unsigned integer view. */
    X86PGUINT       u;
    /** Normal view. */
    X86PDEBITS      n;
    /** 4MB view (big). */
    X86PDE4MBITS    b;
    /** 8 bit unsigned integer view. */
    uint8_t         au8[4];
    /** 16 bit unsigned integer view. */
    uint16_t        au16[2];
    /** 32 bit unsigned integer view. */
    uint32_t        au32[1];
} X86PDE;
/** Pointer to a page directory entry. */
typedef X86PDE *PX86PDE;
/** Pointer to a const page directory entry. */
typedef const X86PDE *PCX86PDE;

/**
 * PAE page directory entry.
 */
typedef union X86PDEPAE
{
    /** Unsigned integer view. */
    X86PGPAEUINT    u;
    /** Normal view. */
    X86PDEPAEBITS   n;
    /** 2MB page view (big). */
    X86PDE2MPAEBITS b;
    /** 8 bit unsigned integer view. */
    uint8_t         au8[8];
    /** 16 bit unsigned integer view. */
    uint16_t        au16[4];
    /** 32 bit unsigned integer view. */
    uint32_t        au32[2];
} X86PDEPAE;
/** Pointer to a page directory entry. */
typedef X86PDEPAE *PX86PDEPAE;
/** Pointer to a const page directory entry. */
typedef const X86PDEPAE *PCX86PDEPAE;

/**
 * Page directory.
 */
typedef struct X86PD
{
    /** PDE Array. */
    X86PDE      a[1024 ];
} X86PD;
/** Pointer to a page directory. */
typedef X86PD *PX86PD;
/** Pointer to a const page directory. */
typedef const X86PD *PCX86PD;

/** The page shift to get the PD index. */
inline uint8_t X86_PD_SHIFT = 22;

/** The PD index mask (apply to a shifted page address). */
inline uint16_t X86_PD_MASK = 0x3ff;



/**
 * PAE page directory.
 */
typedef struct X86PDPAE
{
    /** PDE Array. */
    X86PDEPAE   a[512 ];
} X86PDPAE;
/** Pointer to a PAE page directory. */
typedef X86PDPAE *PX86PDPAE;
/** Pointer to a const PAE page directory. */
typedef const X86PDPAE *PCX86PDPAE;

/** The page shift to get the PAE PD index. */
inline uint8_t X86_PD_PAE_SHIFT = 21;

/** The PAE PD index mask (apply to a shifted page address). */
inline uint16_t X86_PD_PAE_MASK = 0x1ff;



/** @name Page Directory Pointer Table Entry (PAE)
 * @{
 */
/** Bit 0 -  P  - Present bit. */
inline uint32_t X86_PDPE_P = 1U << 0;

/** Bit 1 - R/W - Read (clear) / Write (set) bit. Long Mode only. */
inline uint32_t X86_PDPE_RW = 1U << 1;

/** Bit 2 - U/S - User (set) / Supervisor (clear) bit. Long Mode only. */
inline uint32_t X86_PDPE_US = 1U << 2;

/** Bit 3 - PWT - Page level write thru bit. */
inline uint32_t X86_PDPE_PWT = 1U << 3;

/** Bit 4 - PCD - Page level cache disable bit. */
inline uint32_t X86_PDPE_PCD = 1U << 4;

/** Bit 5 -  A  - Access bit. Long Mode only. */
inline uint32_t X86_PDPE_A = 1U << 5;

/** Bit 7 - PS  - Page size (1GB). Long Mode only. */
inline uint32_t X86_PDPE_LM_PS = 1U << 7;

/** Bits 9-11 - - Available for use to system software. */

/** Bits 12-51 - - PAE - Physical Page number of the next level. */
inline uint64_t X86_PDPE_PG_MASK = 0x000ffffffffff000;

/** Bits 63-52, 8-5, 2-1 - - PAE - MBZ bits (NX is long mode only). */
inline uint64_t X86_PDPE_PAE_MBZ_MASK = 0xfff00000000001e6;

/** Bits 63 - NX - LM - No execution flag. Long Mode only. */
inline uint64_t X86_PDPE_LM_NX = 1ULL << 63;

/** Bits 8, 7 - - LM - MBZ bits when NX is active. */
inline uint64_t X86_PDPE_LM_MBZ_MASK_NX = 0x0000000000000180;

/** Bits 63, 8, 7 - - LM - MBZ bits when no NX. */
inline uint64_t X86_PDPE_LM_MBZ_MASK_NO_NX = 0x8000000000000180;

/** Bits 29-13 - - LM - MBZ bits for 1GB page entry when NX is active. */
inline uint64_t X86_PDPE1G_LM_MBZ_MASK_NX = 0x000000003fffe000;

/** Bits 63, 29-13 - - LM - MBZ bits for 1GB page entry when no NX. */
inline uint64_t X86_PDPE1G_LM_MBZ_MASK_NO_NX = 0x800000003fffe000;



/**
 * Page directory pointer table entry.
 */
typedef struct X86PDPEBITS
{
    /** Flags whether(=1) or not the page is present. */
    uint32_t    u1Present : 1;
    /** Chunk of reserved bits. */
    uint32_t    u2Reserved : 2;
    /** Write Thru flag. If PAT enabled, bit 0 of the index. */
    uint32_t    u1WriteThru : 1;
    /** Cache disabled flag. If PAT enabled, bit 1 of the index. */
    uint32_t    u1CacheDisable : 1;
    /** Chunk of reserved bits. */
    uint32_t    u4Reserved : 4;
    /** Available for use to system software. */
    uint32_t    u3Available : 3;
    /** Physical Page number of the next level - Low Part. Don't use! */
    uint32_t    u20PageNoLow : 20;
    /** Physical Page number of the next level - High Part. Don't use! */
    uint32_t    u20PageNoHigh : 20;
    /** MBZ bits */
    uint32_t    u12Reserved : 12;
} X86PDPEBITS;
/** Pointer to a page directory pointer table entry. */
typedef X86PDPEBITS *PX86PTPEBITS;
/** Pointer to a const page directory pointer table entry. */
typedef const X86PDPEBITS *PCX86PTPEBITS;

/**
 * Page directory pointer table entry. AMD64 version
 */
typedef struct X86PDPEAMD64BITS
{
    /** Flags whether(=1) or not the page is present. */
    uint32_t    u1Present : 1;
    /** Read(=0) / Write(=1) flag. */
    uint32_t    u1Write : 1;
    /** User(=1) / Supervisor (=0) flag. */
    uint32_t    u1User : 1;
    /** Write Thru flag. If PAT enabled, bit 0 of the index. */
    uint32_t    u1WriteThru : 1;
    /** Cache disabled flag. If PAT enabled, bit 1 of the index. */
    uint32_t    u1CacheDisable : 1;
    /** Accessed flag.
     * Indicates that the page have been read or written to. */
    uint32_t    u1Accessed : 1;
    /** Chunk of reserved bits. */
    uint32_t    u3Reserved : 3;
    /** Available for use to system software. */
    uint32_t    u3Available : 3;
    /** Physical Page number of the next level - Low Part. Don't use! */
    uint32_t    u20PageNoLow : 20;
    /** Physical Page number of the next level - High Part. Don't use! */
    uint32_t    u20PageNoHigh : 20;
    /** MBZ bits */
    uint32_t    u11Reserved : 11;
    /** No Execute flag. */
    uint32_t    u1NoExecute : 1;
} X86PDPEAMD64BITS;
/** Pointer to a page directory pointer table entry. */
typedef X86PDPEAMD64BITS *PX86PDPEAMD64BITS;
/** Pointer to a const page directory pointer table entry. */
typedef const X86PDPEAMD64BITS *PCX86PDPEAMD64BITS;

/**
 * Page directory pointer table entry for 1GB page. (AMD64 only)
 */
typedef struct X86PDPE1GB
{
    /** 0: Flags whether(=1) or not the page is present. */
    uint32_t    u1Present : 1;
    /** 1: Read(=0) / Write(=1) flag. */
    uint32_t    u1Write : 1;
    /** 2: User(=1) / Supervisor (=0) flag. */
    uint32_t    u1User : 1;
    /** 3: Write Thru flag. If PAT enabled, bit 0 of the index. */
    uint32_t    u1WriteThru : 1;
    /** 4: Cache disabled flag. If PAT enabled, bit 1 of the index. */
    uint32_t    u1CacheDisable : 1;
    /** 5: Accessed flag.
     * Indicates that the page have been read or written to. */
    uint32_t    u1Accessed : 1;
    /** 6: Dirty flag for 1GB pages.  */
    uint32_t    u1Dirty : 1;
    /** 7: Indicates 1GB page if set. */
    uint32_t    u1Size : 1;
    /** 8: Global 1GB page. */
    uint32_t    u1Global: 1;
    /** 9-11: Available for use to system software. */
    uint32_t    u3Available : 3;
    /** 12: PAT bit for 1GB page. */
    uint32_t    u1PAT : 1;
    /** 13-29: MBZ bits. */
    uint32_t    u17Reserved : 17;
    /** 30-31: Physical page number - Low Part. Don't use! */
    uint32_t    u2PageNoLow : 2;
    /** 32-51: Physical Page number of the next level - High Part. Don't use! */
    uint32_t    u20PageNoHigh : 20;
    /** 52-62: MBZ bits */
    uint32_t    u11Reserved : 11;
    /** 63: No Execute flag. */
    uint32_t    u1NoExecute : 1;
} X86PDPE1GB;
/** Pointer to a page directory pointer table entry for a 1GB page. */
typedef X86PDPE1GB *PX86PDPE1GB;
/** Pointer to a const page directory pointer table entry for a 1GB page. */
typedef const X86PDPE1GB *PCX86PDPE1GB;

/**
 * Page directory pointer table entry.
 */
typedef union X86PDPE
{
    /** Unsigned integer view. */
    X86PGPAEUINT    u;
    /** Normal view. */
    X86PDPEBITS     n;
    /** AMD64 view. */
    X86PDPEAMD64BITS lm;
    /** AMD64 big view. */
    X86PDPE1GB      b;
    /** 8 bit unsigned integer view. */
    uint8_t         au8[8];
    /** 16 bit unsigned integer view. */
    uint16_t        au16[4];
    /** 32 bit unsigned integer view. */
    uint32_t        au32[2];
} X86PDPE;
/** Pointer to a page directory pointer table entry. */
typedef X86PDPE *PX86PDPE;
/** Pointer to a const page directory pointer table entry. */
typedef const X86PDPE *PCX86PDPE;


/**
 * Page directory pointer table.
 */
typedef struct X86PDPT
{
    /** PDE Array. */
    X86PDPE         a[512 ];
} X86PDPT;
/** Pointer to a page directory pointer table. */
typedef X86PDPT *PX86PDPT;
/** Pointer to a const page directory pointer table. */
typedef const X86PDPT *PCX86PDPT;

/** The page shift to get the PDPT index. */
inline uint8_t X86_PDPT_SHIFT = 30;

/** The PDPT index mask (apply to a shifted page address). (32 bits PAE) */
inline uint8_t X86_PDPT_MASK_PAE = 0x3;

/** The PDPT index mask (apply to a shifted page address). (64 bits PAE)*/
inline uint16_t X86_PDPT_MASK_AMD64 = 0x1ff;


/** @} */


/** @name Page Map Level-4 Entry (Long Mode PAE)
 * @{
 */
/** Bit 0 -  P  - Present bit. */
inline uint32_t X86_PML4E_P = 1U << 0;

/** Bit 1 - R/W - Read (clear) / Write (set) bit. */
inline uint32_t X86_PML4E_RW = 1U << 1;

/** Bit 2 - U/S - User (set) / Supervisor (clear) bit. */
inline uint32_t X86_PML4E_US = 1U << 2;

/** Bit 3 - PWT - Page level write thru bit. */
inline uint32_t X86_PML4E_PWT = 1U << 3;

/** Bit 4 - PCD - Page level cache disable bit. */
inline uint32_t X86_PML4E_PCD = 1U << 4;

/** Bit 5 -  A  - Access bit. */
inline uint32_t X86_PML4E_A = 1U << 5;

/** Bits 9-11 - - Available for use to system software. */

/** Bits 12-51 - - PAE - Physical Page number of the next level. */
inline uint64_t X86_PML4E_PG_MASK = 0x000ffffffffff000;

/** Bits 8, 7 - - MBZ bits when NX is active. */
inline uint64_t X86_PML4E_MBZ_MASK_NX = 0x0000000000000080;

/** Bits 63, 7 - - MBZ bits when no NX. */
inline uint64_t X86_PML4E_MBZ_MASK_NO_NX = 0x8000000000000080;

/** Bits 63 - NX - PAE - No execution flag. */
inline uint64_t X86_PML4E_NX = 1ULL << 63;


/**
 * Page Map Level-4 Entry
 */
typedef struct X86PML4EBITS
{
    /** Flags whether(=1) or not the page is present. */
    uint32_t    u1Present : 1;
    /** Read(=0) / Write(=1) flag. */
    uint32_t    u1Write : 1;
    /** User(=1) / Supervisor (=0) flag. */
    uint32_t    u1User : 1;
    /** Write Thru flag. If PAT enabled, bit 0 of the index. */
    uint32_t    u1WriteThru : 1;
    /** Cache disabled flag. If PAT enabled, bit 1 of the index. */
    uint32_t    u1CacheDisable : 1;
    /** Accessed flag.
     * Indicates that the page have been read or written to. */
    uint32_t    u1Accessed : 1;
    /** Chunk of reserved bits. */
    uint32_t    u3Reserved : 3;
    /** Available for use to system software. */
    uint32_t    u3Available : 3;
    /** Physical Page number of the next level - Low Part. Don't use! */
    uint32_t    u20PageNoLow : 20;
    /** Physical Page number of the next level - High Part. Don't use! */
    uint32_t    u20PageNoHigh : 20;
    /** MBZ bits */
    uint32_t    u11Reserved : 11;
    /** No Execute flag. */
    uint32_t    u1NoExecute : 1;
} X86PML4EBITS;
/** Pointer to a page map level-4 entry. */
typedef X86PML4EBITS *PX86PML4EBITS;
/** Pointer to a const page map level-4 entry. */
typedef const X86PML4EBITS *PCX86PML4EBITS;

/**
 * Page Map Level-4 Entry.
 */
typedef union X86PML4E
{
    /** Unsigned integer view. */
    X86PGPAEUINT    u;
    /** Normal view. */
    X86PML4EBITS    n;
    /** 8 bit unsigned integer view. */
    uint8_t         au8[8];
    /** 16 bit unsigned integer view. */
    uint16_t        au16[4];
    /** 32 bit unsigned integer view. */
    uint32_t        au32[2];
} X86PML4E;
/** Pointer to a page map level-4 entry. */
typedef X86PML4E *PX86PML4E;
/** Pointer to a const page map level-4 entry. */
typedef const X86PML4E *PCX86PML4E;


/**
 * Page Map Level-4.
 */
typedef struct X86PML4
{
    /** PDE Array. */
    X86PML4E        a[512 ];
} X86PML4;
/** Pointer to a page map level-4. */
typedef X86PML4 *PX86PML4;
/** Pointer to a const page map level-4. */
typedef const X86PML4 *PCX86PML4;

/** The page shift to get the PML4 index. */
inline uint8_t X86_PML4_SHIFT = 39;

/** The PML4 index mask (apply to a shifted page address). */
inline uint16_t X86_PML4_MASK = 0x1ff;


/** @} */

/** @} */

/**
 * 32-bit protected mode FSTENV image.
 */
typedef struct X86FSTENV32P
{
    uint16_t    FCW;
    uint16_t    padding1;
    uint16_t    FSW;
    uint16_t    padding2;
    uint16_t    FTW;
    uint16_t    padding3;
    uint32_t    FPUIP;
    uint16_t    FPUCS;
    uint16_t    FOP;
    uint32_t    FPUDP;
    uint16_t    FPUDS;
    uint16_t    padding4;
} X86FSTENV32P;
/** Pointer to a 32-bit protected mode FSTENV image. */
typedef X86FSTENV32P *PX86FSTENV32P;
/** Pointer to a const 32-bit protected mode FSTENV image. */
typedef X86FSTENV32P const *PCX86FSTENV32P;


/**
 * 80-bit MMX/FPU register type.
 */
typedef struct X86FPUMMX
{
    uint8_t reg[10];
} X86FPUMMX;
/** Pointer to a 80-bit MMX/FPU register type. */
typedef X86FPUMMX *PX86FPUMMX;
/** Pointer to a const 80-bit MMX/FPU register type. */
typedef const X86FPUMMX *PCX86FPUMMX;

/** FPU (x87) register. */
typedef union X86FPUREG
{
    /** MMX view. */
    uint64_t    mmx;
    /** FPU view - todo. */
    X86FPUMMX   fpu;
    /** Extended precision floating point view. */
    RTFLOAT80U  r80;
    /** Extended precision floating point view v2 */
    RTFLOAT80U2 r80Ex;
    /** 8-bit view. */
    uint8_t     au8[16];
    /** 16-bit view. */
    uint16_t    au16[8];
    /** 32-bit view. */
    uint32_t    au32[4];
    /** 64-bit view. */
    uint64_t    au64[2];
    /** 128-bit view. (yeah, very helpful) */
    uint128_t   au128[1];
} X86FPUREG;
/** Pointer to a FPU register. */
typedef X86FPUREG *PX86FPUREG;
/** Pointer to a const FPU register. */
typedef X86FPUREG const *PCX86FPUREG;

/**
 * XMM register union.
 */
typedef union X86XMMREG
{
    /** XMM Register view. */
    uint128_t   xmm;
    /** 8-bit view. */
    uint8_t     au8[16];
    /** 16-bit view. */
    uint16_t    au16[8];
    /** 32-bit view. */
    uint32_t    au32[4];
    /** 64-bit view. */
    uint64_t    au64[2];
    /** 128-bit view. (yeah, very helpful) */
    uint128_t   au128[1];
    /** Confusing nested 128-bit union view (this is what xmm should've been). */
    RTUINT128U  uXmm;
} X86XMMREG;
/** Pointer to an XMM register state. */
typedef X86XMMREG *PX86XMMREG;
/** Pointer to a const XMM register state. */
typedef X86XMMREG const *PCX86XMMREG;

/**
 * YMM register union.
 */
typedef union X86YMMREG
{
    /** 8-bit view. */
    uint8_t     au8[32];
    /** 16-bit view. */
    uint16_t    au16[16];
    /** 32-bit view. */
    uint32_t    au32[8];
    /** 64-bit view. */
    uint64_t    au64[4];
    /** 128-bit view. (yeah, very helpful) */
    uint128_t   au128[2];
    /** XMM sub register view. */
    X86XMMREG   aXmm[2];
} X86YMMREG;
/** Pointer to an YMM register state. */
typedef X86YMMREG *PX86YMMREG;
/** Pointer to a const YMM register state. */
typedef X86YMMREG const *PCX86YMMREG;

/**
 * ZMM register union.
 */
typedef union X86ZMMREG
{
    /** 8-bit view. */
    uint8_t     au8[64];
    /** 16-bit view. */
    uint16_t    au16[32];
    /** 32-bit view. */
    uint32_t    au32[16];
    /** 64-bit view. */
    uint64_t    au64[8];
    /** 128-bit view. (yeah, very helpful) */
    uint128_t   au128[4];
    /** XMM sub register view. */
    X86XMMREG   aXmm[4];
    /** YMM sub register view. */
    X86YMMREG   aYmm[2];
} X86ZMMREG;
/** Pointer to an ZMM register state. */
typedef X86ZMMREG *PX86ZMMREG;
/** Pointer to a const ZMM register state. */
typedef X86ZMMREG const *PCX86ZMMREG;


/**
 * 32-bit FPU state (aka FSAVE/FRSTOR Memory Region).
 * @todo verify this...
 */
typedef struct X86FPUSTATE
{
    /** 0x00 - Control word. */
    uint16_t    FCW;
    /** 0x02 - Alignment word */
    uint16_t    Dummy1;
    /** 0x04 - Status word. */
    uint16_t    FSW;
    /** 0x06 - Alignment word */
    uint16_t    Dummy2;
    /** 0x08 - Tag word */
    uint16_t    FTW;
    /** 0x0a - Alignment word */
    uint16_t    Dummy3;

    /** 0x0c - Instruction pointer. */
    uint32_t    FPUIP;
    /** 0x10 - Code selector. */
    uint16_t    CS;
    /** 0x12 - Opcode. */
    uint16_t    FOP;
    /** 0x14 - FOO. */
    uint32_t    FPUOO;
    /** 0x18 - FOS. */
    uint32_t    FPUOS;
    /** 0x1c - FPU register. */
    X86FPUREG   regs[8];
} X86FPUSTATE;
/** Pointer to a FPU state. */
typedef X86FPUSTATE  *PX86FPUSTATE;
/** Pointer to a const FPU state. */
typedef const X86FPUSTATE  *PCX86FPUSTATE;

/**
 * FPU Extended state (aka FXSAVE/FXRSTORE Memory Region).
 */
typedef struct X86FXSTATE
{
    /** 0x00 - Control word. */
    uint16_t    FCW;
    /** 0x02 - Status word. */
    uint16_t    FSW;
    /** 0x04 - Tag word. (The upper byte is always zero.) */
    uint16_t    FTW;
    /** 0x06 - Opcode. */
    uint16_t    FOP;
    /** 0x08 - Instruction pointer. */
    uint32_t    FPUIP;
    /** 0x0c - Code selector. */
    uint16_t    CS;
    uint16_t    Rsrvd1;
    /** 0x10 - Data pointer. */
    uint32_t    FPUDP;
    /** 0x14 - Data segment */
    uint16_t    DS;
    /** 0x16 */
    uint16_t    Rsrvd2;
    /** 0x18 */
    uint32_t    MXCSR;
    /** 0x1c */
    uint32_t    MXCSR_MASK;
    /** 0x20 - FPU registers. */
    X86FPUREG   aRegs[8];
    /** 0xA0 - XMM registers - 8 registers in 32 bits mode, 16 in long mode. */
    X86XMMREG   aXMM[16];
    /* - offset 416 - */
    uint32_t    au32RsrvdRest[(464 - 416) / sizeof(uint32_t)];
    /* - offset 464 - Software usable reserved bits. */
    uint32_t    au32RsrvdForSoftware[(512 - 464) / sizeof(uint32_t)];
} X86FXSTATE;
/** Pointer to a FPU Extended state. */
typedef X86FXSTATE *PX86FXSTATE;
/** Pointer to a const FPU Extended state. */
typedef const X86FXSTATE *PCX86FXSTATE;

/** Offset for software usable reserved bits (464:511) where we store a 32-bit
 *  magic. Don't forget to update x86.mac if you change this! */
inline uint16_t X86_OFF_FXSTATE_RSVD = 0x1d0;

/** The 32-bit magic used to recognize if this a 32-bit FPU state. Don't
 *  forget to update x86.mac if you change this!
 * @todo r=bird: This has nothing what-so-ever to do here.... */
inline uint32_t X86_FXSTATE_RSVD_32BIT_MAGIC = 0x32b3232b;


/** @name FPU status word flags.
 * @{ */
/** Exception Flag: Invalid operation.  */
inline uint32_t X86_FSW_IE = 1U << 0;

/** Exception Flag: Denormalized operand.  */
inline uint32_t X86_FSW_DE = 1U << 1;

/** Exception Flag: Zero divide.  */
inline uint32_t X86_FSW_ZE = 1U << 2;

/** Exception Flag: Overflow.  */
inline uint32_t X86_FSW_OE = 1U << 3;

/** Exception Flag: Underflow.  */
inline uint32_t X86_FSW_UE = 1U << 4;

/** Exception Flag: Precision.  */
inline uint32_t X86_FSW_PE = 1U << 5;

/** Stack fault. */
inline uint32_t X86_FSW_SF = 1U << 6;

/** Error summary status. */
inline uint32_t X86_FSW_ES = 1U << 7;

/** Mask of exceptions flags, excluding the summary bit. */
inline uint16_t X86_FSW_XCPT_MASK = 0x007f;

/** Mask of exceptions flags, including the summary bit. */
inline uint16_t X86_FSW_XCPT_ES_MASK = 0x00ff;

/** Condition code 0. */
inline uint32_t X86_FSW_C0 = 1U << 8;

/** Condition code 1. */
inline uint32_t X86_FSW_C1 = 1U << 9;

/** Condition code 2. */
inline uint32_t X86_FSW_C2 = 1U << 10;

/** Top of the stack mask. */
inline uint16_t X86_FSW_TOP_MASK = 0x3800;

/** TOP shift value. */
inline uint8_t X86_FSW_TOP_SHIFT = 11;

/** Mask for getting TOP value after shifting it right. */
inline uint16_t X86_FSW_TOP_SMASK = 0x0007;

/** Get the TOP value. */

/** Condition code 3. */
inline uint32_t X86_FSW_C3 = 1U << 14;

/** Mask of exceptions flags, including the summary bit. */
inline uint16_t X86_FSW_C_MASK = 0x4700;

/** FPU busy. */
inline uint32_t X86_FSW_B = 1U << 15;

/** @} */


/** @name FPU control word flags.
 * @{ */
/** Exception Mask: Invalid operation.  */
inline uint32_t X86_FCW_IM = 1U << 0;

/** Exception Mask: Denormalized operand.  */
inline uint32_t X86_FCW_DM = 1U << 1;

/** Exception Mask: Zero divide.  */
inline uint32_t X86_FCW_ZM = 1U << 2;

/** Exception Mask: Overflow.  */
inline uint32_t X86_FCW_OM = 1U << 3;

/** Exception Mask: Underflow.  */
inline uint32_t X86_FCW_UM = 1U << 4;

/** Exception Mask: Precision.  */
inline uint32_t X86_FCW_PM = 1U << 5;

/** Mask all exceptions, the value typically loaded (by for instance fninit).
 * @remarks This includes reserved bit 6.  */
inline uint16_t X86_FCW_MASK_ALL = 0x007f;

/** Mask all exceptions. Same as X86_FSW_XCPT_MASK. */
inline uint16_t X86_FCW_XCPT_MASK = 0x003f;

/** Precision control mask. */
inline uint16_t X86_FCW_PC_MASK = 0x0300;

/** Precision control: 24-bit. */
inline uint16_t X86_FCW_PC_24 = 0x0000;

/** Precision control: Reserved. */
inline uint16_t X86_FCW_PC_RSVD = 0x0100;

/** Precision control: 53-bit. */
inline uint16_t X86_FCW_PC_53 = 0x0200;

/** Precision control: 64-bit. */
inline uint16_t X86_FCW_PC_64 = 0x0300;

/** Rounding control mask. */
inline uint16_t X86_FCW_RC_MASK = 0x0c00;

/** Rounding control: To nearest. */
inline uint16_t X86_FCW_RC_NEAREST = 0x0000;

/** Rounding control: Down. */
inline uint16_t X86_FCW_RC_DOWN = 0x0400;

/** Rounding control: Up. */
inline uint16_t X86_FCW_RC_UP = 0x0800;

/** Rounding control: Towards zero. */
inline uint16_t X86_FCW_RC_ZERO = 0x0c00;

/** Bits which should be zero, apparently. */
inline uint16_t X86_FCW_ZERO_MASK = 0xf080;

/** @} */

/** @name SSE MXCSR
 * @{ */
/** Exception Flag: Invalid operation.  */
inline uint32_t X86_MXCSR_IE = 1U << 0;

/** Exception Flag: Denormalized operand.  */
inline uint32_t X86_MXCSR_DE = 1U << 1;

/** Exception Flag: Zero divide.  */
inline uint32_t X86_MXCSR_ZE = 1U << 2;

/** Exception Flag: Overflow.  */
inline uint32_t X86_MXCSR_OE = 1U << 3;

/** Exception Flag: Underflow.  */
inline uint32_t X86_MXCSR_UE = 1U << 4;

/** Exception Flag: Precision.  */
inline uint32_t X86_MXCSR_PE = 1U << 5;


/** Denormals are zero. */
inline uint32_t X86_MXCSR_DAZ = 1U << 6;


/** Exception Mask: Invalid operation. */
inline uint32_t X86_MXCSR_IM = 1U << 7;

/** Exception Mask: Denormalized operand. */
inline uint32_t X86_MXCSR_DM = 1U << 8;

/** Exception Mask: Zero divide.  */
inline uint32_t X86_MXCSR_ZM = 1U << 9;

/** Exception Mask: Overflow.  */
inline uint32_t X86_MXCSR_OM = 1U << 10;

/** Exception Mask: Underflow.  */
inline uint32_t X86_MXCSR_UM = 1U << 11;

/** Exception Mask: Precision.  */
inline uint32_t X86_MXCSR_PM = 1U << 12;


/** Rounding control mask. */
inline uint16_t X86_MXCSR_RC_MASK = 0x6000;

/** Rounding control: To nearest. */
inline uint16_t X86_MXCSR_RC_NEAREST = 0x0000;

/** Rounding control: Down. */
inline uint16_t X86_MXCSR_RC_DOWN = 0x2000;

/** Rounding control: Up. */
inline uint16_t X86_MXCSR_RC_UP = 0x4000;

/** Rounding control: Towards zero. */
inline uint16_t X86_MXCSR_RC_ZERO = 0x6000;


/** Flush-to-zero for masked underflow.  */
inline uint32_t X86_MXCSR_FZ = 1U << 15;


/** Misaligned Exception Mask (AMD MISALIGNSSE).  */
inline uint32_t X86_MXCSR_MM = 1U << 17;

/** @} */

/**
 * XSAVE header.
 */
typedef struct X86XSAVEHDR
{
    /** XTATE_BV - Bitmap indicating whether a component is in the state. */
    uint64_t        bmXState;
    /** XCOMP_BC - Bitmap used by instructions applying structure compaction. */
    uint64_t        bmXComp;
    /** Reserved for furture extensions, probably MBZ. */
    uint64_t        au64Reserved[6];
} X86XSAVEHDR;
/** Pointer to an XSAVE header. */
typedef X86XSAVEHDR *PX86XSAVEHDR;
/** Pointer to a const XSAVE header. */
typedef X86XSAVEHDR const *PCX86XSAVEHDR;


/**
 * The high 128-bit YMM register state (XSAVE_C_YMM).
 * (The lower 128-bits being in X86FXSTATE.)
 */
typedef struct X86XSAVEYMMHI
{
    /** 16 registers in 64-bit mode, 8 in 32-bit mode. */
    X86XMMREG       aYmmHi[16];
} X86XSAVEYMMHI;
/** Pointer to a high 128-bit YMM register state. */
typedef X86XSAVEYMMHI *PX86XSAVEYMMHI;
/** Pointer to a const high 128-bit YMM register state. */
typedef X86XSAVEYMMHI const *PCX86XSAVEYMMHI;

/**
 * Intel MPX bound registers state (XSAVE_C_BNDREGS).
 */
typedef struct X86XSAVEBNDREGS
{
    /** Array of registers (BND0...BND3). */
    struct
    {
        /** Lower bound. */
        uint64_t    uLowerBound;
        /** Upper bound. */
        uint64_t    uUpperBound;
    } aRegs[4];
} X86XSAVEBNDREGS;
/** Pointer to a MPX bound register state. */
typedef X86XSAVEBNDREGS *PX86XSAVEBNDREGS;
/** Pointer to a const MPX bound register state. */
typedef X86XSAVEBNDREGS const *PCX86XSAVEBNDREGS;

/**
 * Intel MPX bound config and status register state (XSAVE_C_BNDCSR).
 */
typedef struct X86XSAVEBNDCFG
{
    uint64_t        fConfig;
    uint64_t        fStatus;
} X86XSAVEBNDCFG;
/** Pointer to a MPX bound config and status register state. */
typedef X86XSAVEBNDCFG *PX86XSAVEBNDCFG;
/** Pointer to a const MPX bound config and status register state. */
typedef X86XSAVEBNDCFG *PCX86XSAVEBNDCFG;

/**
 * AVX-512 opmask state (XSAVE_C_OPMASK).
 */
typedef struct X86XSAVEOPMASK
{
    /** The K0..K7 values. */
    uint64_t    aKRegs[8];
} X86XSAVEOPMASK;
/** Pointer to a AVX-512 opmask state. */
typedef X86XSAVEOPMASK *PX86XSAVEOPMASK;
/** Pointer to a const AVX-512 opmask state. */
typedef X86XSAVEOPMASK const *PCX86XSAVEOPMASK;

/**
 * ZMM0-15 upper 256 bits introduced in AVX-512 (XSAVE_C_ZMM_HI256).
 */
typedef struct X86XSAVEZMMHI256
{
    /** Upper 256-bits of ZMM0-15. */
    X86YMMREG   aHi256Regs[16];
} X86XSAVEZMMHI256;
/** Pointer to a state comprising the upper 256-bits of ZMM0-15. */
typedef X86XSAVEZMMHI256 *PX86XSAVEZMMHI256;
/** Pointer to a const state comprising the upper 256-bits of ZMM0-15. */
typedef X86XSAVEZMMHI256 const *PCX86XSAVEZMMHI256;

/**
 * ZMM16-31 register state introduced in AVX-512 (XSAVE_C_ZMM_16HI).
 */
typedef struct X86XSAVEZMM16HI
{
    /** ZMM16 thru ZMM31. */
    X86ZMMREG   aRegs[16];
} X86XSAVEZMM16HI;
/** Pointer to a state comprising ZMM16-32. */
typedef X86XSAVEZMM16HI *PX86XSAVEZMM16HI;
/** Pointer to a const state comprising ZMM16-32. */
typedef X86XSAVEZMM16HI const *PCX86XSAVEZMM16HI;

/**
 * AMD Light weight profiling state (XSAVE_C_LWP).
 *
 * We probably won't play with this as AMD seems to be dropping from their "zen"
 * processor micro architecture.
 */
typedef struct X86XSAVELWP
{
    /** Details when needed. */
    uint64_t        auLater[128/8];
} X86XSAVELWP;


/**
 * x86 FPU/SSE/AVX/XXXX state.
 *
 * Please bump DBGFCORE_FMT_VERSION by 1 in dbgfcorefmt.h if you make any
 * changes to this structure.
 */
typedef struct X86XSAVEAREA
{
    /** The x87 and SSE region (or legacy region if you like).  */
    X86FXSTATE      x87;
    /** The XSAVE header. */
    X86XSAVEHDR     Hdr;
    /** Beyond the header, there isn't really a fixed layout, but we can
       generally assume the YMM (AVX) register extensions are present and
       follows immediately. */
    union
    {
        /** The high 128-bit AVX registers for easy access by IEM.
         * @note This ASSUMES they will always be here...  */
        X86XSAVEYMMHI       YmmHi;

        /** This is a typical layout on intel CPUs (good for debuggers). */
        struct
        {
            X86XSAVEYMMHI       YmmHi;
            X86XSAVEBNDREGS     BndRegs;
            X86XSAVEBNDCFG      BndCfg;
            uint8_t             abFudgeToMatchDocs[0xB0];
            X86XSAVEOPMASK      Opmask;
            X86XSAVEZMMHI256    ZmmHi256;
            X86XSAVEZMM16HI     Zmm16Hi;
        } Intel;

        /** This is a typical layout on AMD Bulldozer type CPUs (good for debuggers). */
        struct
        {
            X86XSAVEYMMHI       YmmHi;
            X86XSAVELWP         Lwp;
        } AmdBd;

        /** To enbling static deployments that have a reasonable chance of working for
         * the next 3-6 CPU generations without running short on space, we allocate a
         * lot of extra space here, making the structure a round 8KB in size.  This
         * leaves us 7616 bytes for extended state.  The skylake xeons are likely to use
         * 2112 of these, leaving us with 5504 bytes for future Intel generations. */
        uint8_t         ab[8192 - 512 - 64];
    } u;
} X86XSAVEAREA;
/** Pointer to a XSAVE area. */
typedef X86XSAVEAREA *PX86XSAVEAREA;
/** Pointer to a const XSAVE area. */
typedef X86XSAVEAREA const *PCX86XSAVEAREA;


/** @name XSAVE_C_XXX - XSAVE State Components Bits (XCR0).
 * @{ */
/** Bit 0 - x87 - Legacy FPU state (bit number) */
inline uint8_t XSAVE_C_X87_BIT = 0;

/** Bit 0 - x87 - Legacy FPU state. */

/** Bit 1 - SSE - 128-bit SSE state (bit number). */
inline uint8_t XSAVE_C_SSE_BIT = 1;

/** Bit 1 - SSE - 128-bit SSE state. */

/** Bit 2 - YMM_Hi128 - Upper 128 bits of YMM0-15 (AVX) (bit number). */
inline uint8_t XSAVE_C_YMM_BIT = 2;

/** Bit 2 - YMM_Hi128 - Upper 128 bits of YMM0-15 (AVX). */

/** Bit 3 - BNDREGS - MPX bound register state (bit number). */
inline uint8_t XSAVE_C_BNDREGS_BIT = 3;

/** Bit 3 - BNDREGS - MPX bound register state. */

/** Bit 4 - BNDCSR - MPX bound config and status state (bit number). */
inline uint8_t XSAVE_C_BNDCSR_BIT = 4;

/** Bit 4 - BNDCSR - MPX bound config and status state. */

/** Bit 5 - Opmask - opmask state (bit number). */
inline uint8_t XSAVE_C_OPMASK_BIT = 5;

/** Bit 5 - Opmask - opmask state. */

/** Bit 6 - ZMM_Hi256 - Upper 256 bits of ZMM0-15 (AVX-512) (bit number). */
inline uint8_t XSAVE_C_ZMM_HI256_BIT = 6;

/** Bit 6 - ZMM_Hi256 - Upper 256 bits of ZMM0-15 (AVX-512). */

/** Bit 7 - Hi16_ZMM - 512-bits ZMM16-31 state (AVX-512) (bit number). */
inline uint8_t XSAVE_C_ZMM_16HI_BIT = 7;

/** Bit 7 - Hi16_ZMM - 512-bits ZMM16-31 state (AVX-512). */

/** Bit 9 - PKRU - Protection-key state (bit number). */
inline uint8_t XSAVE_C_PKRU_BIT = 9;

/** Bit 9 - PKRU - Protection-key state. */

/** Bit 62 - LWP - Lightweight Profiling (AMD) (bit number). */
inline uint8_t XSAVE_C_LWP_BIT = 62;

/** Bit 62 - LWP - Lightweight Profiling (AMD). */

/** Bit 63 - X - Reserved (MBZ) for extending XCR0 (bit number). */
inline uint8_t XSAVE_C_X_BIT = 63;

/** Bit 63 - X - Reserved (MBZ) for extending XCR0 (AMD). */

/** @} */



/** @name Selector Descriptor
 * @{
 */


/** @name X86DESCATTR masks
 * @{ */
inline uint32_t X86DESCATTR_TYPE = 0x0000000f;

inline uint32_t X86DESCATTR_DT = 0x00000010;

inline uint32_t X86DESCATTR_DPL = 0x00000060;


inline uint32_t X86DESCATTR_P = 0x00000080;

inline uint32_t X86DESCATTR_LIMIT_HIGH = 0x00000f00;

inline uint32_t X86DESCATTR_AVL = 0x00001000;

inline uint32_t X86DESCATTR_L = 0x00002000;

inline uint32_t X86DESCATTR_D = 0x00004000;

inline uint32_t X86DESCATTR_G = 0x00008000;

inline uint32_t X86DESCATTR_UNUSABLE = 0x00010000;

/** @}  */

typedef union X86DESCATTR
{
    /** Unsigned integer view. */
    uint32_t           u;
} X86DESCATTR;
/** Pointer to descriptor attributes. */
typedef X86DESCATTR *PX86DESCATTR;
/** Pointer to const descriptor attributes. */
typedef const X86DESCATTR *PCX86DESCATTR;


/**
 * Descriptor table entry.
 */
typedef union X86DESC
{

    /** 8 bit unsigned integer view. */
    uint8_t         au8[8];
    /** 16 bit unsigned integer view. */
    uint16_t        au16[4];
    /** 32 bit unsigned integer view. */
    uint32_t        au32[2];
    /** 64 bit unsigned integer view. */
    uint64_t        au64[1];
    /** Unsigned integer view. */
    uint64_t        u;
} X86DESC;
/** Pointer to descriptor table entry. */
typedef X86DESC *PX86DESC;
/** Pointer to const descriptor table entry. */
typedef const X86DESC *PCX86DESC;

/** @def X86DESC_BASE
 * Return the base address of a descriptor.
 */


/** @def X86DESC_LIMIT
 * Return the limit of a descriptor.
 */


/** @def X86DESC_LIMIT_G
 * Return the limit of a descriptor with the granularity bit taken into account.
 * @returns Selector limit (uint32_t).
 * @param   a_pDesc     Pointer to the descriptor.
 */


/** @def X86DESC_GET_HID_ATTR
 * Get the descriptor attributes for the hidden register.
 */



/**
 * Descriptor table entry.
 */
typedef union X86DESC64
{

    /** 8 bit unsigned integer view. */
    uint8_t             au8[16];
    /** 16 bit unsigned integer view. */
    uint16_t            au16[8];
    /** 32 bit unsigned integer view. */
    uint32_t            au32[4];
    /** 64 bit unsigned integer view. */
    uint64_t            au64[2];
} X86DESC64;
/** Pointer to descriptor table entry. */
typedef X86DESC64 *PX86DESC64;
/** Pointer to const descriptor table entry. */
typedef const X86DESC64 *PCX86DESC64;

/** @def X86DESC64_BASE
 * Return the base of a 64-bit descriptor.
 */




/** @name Host system descriptor table entry - Use with care!
 * @{ */
/** Host system descriptor table entry. */
typedef X86DESC64   X86DESCHC;
/** Pointer to a host system descriptor table entry. */
typedef PX86DESC64  PX86DESCHC;
/** Pointer to a const host system descriptor table entry. */
typedef PCX86DESC64 PCX86DESCHC;
/** @} */


/** @name Selector Descriptor Types.
 * @{
 */

/** @name Non-System Selector Types.
 * @{ */
/** Code(=set)/Data(=clear) bit. */
inline uint8_t X86_SEL_TYPE_CODE = 8;

/** Memory(=set)/System(=clear) bit. */
inline uint32_t X86_SEL_TYPE_MEMORY = 1U << 4;

/** Accessed bit. */
inline uint8_t X86_SEL_TYPE_ACCESSED = 1;

/** Expand down bit (for data selectors only). */
inline uint8_t X86_SEL_TYPE_DOWN = 4;

/** Conforming bit (for code selectors only). */
inline uint8_t X86_SEL_TYPE_CONF = 4;

/** Write bit (for data selectors only). */
inline uint8_t X86_SEL_TYPE_WRITE = 2;

/** Read bit (for code selectors only). */
inline uint8_t X86_SEL_TYPE_READ = 2;

/** The bit number of the code segment read bit (relative to u4Type). */
inline uint8_t X86_SEL_TYPE_READ_BIT = 1;


/** Read only selector type. */
inline uint8_t X86_SEL_TYPE_RO = 0;

/** Accessed read only selector type. */

/** Read write selector type. */
inline uint8_t X86_SEL_TYPE_RW = 2;

/** Accessed read write selector type. */

/** Expand down read only selector type. */
inline uint8_t X86_SEL_TYPE_RO_DOWN = 4;

/** Accessed expand down read only selector type. */

/** Expand down read write selector type. */
inline uint8_t X86_SEL_TYPE_RW_DOWN = 6;

/** Accessed expand down read write selector type. */

/** Execute only selector type. */

/** Accessed execute only selector type. */

/** Execute and read selector type. */

/** Accessed execute and read selector type. */

/** Conforming execute only selector type. */

/** Accessed Conforming execute only selector type. */

/** Conforming execute and write selector type. */

/** Accessed Conforming execute and write selector type. */

/** @} */


/** @name System Selector Types.
 * @{ */
/** The TSS busy bit mask. */
inline uint8_t X86_SEL_TYPE_SYS_TSS_BUSY_MASK = 2;


/** Undefined system selector type. */
inline uint8_t X86_SEL_TYPE_SYS_UNDEFINED = 0;

/** 286 TSS selector. */
inline uint8_t X86_SEL_TYPE_SYS_286_TSS_AVAIL = 1;

/** LDT selector. */
inline uint8_t X86_SEL_TYPE_SYS_LDT = 2;

/** 286 TSS selector - Busy. */
inline uint8_t X86_SEL_TYPE_SYS_286_TSS_BUSY = 3;

/** 286 Callgate selector. */
inline uint8_t X86_SEL_TYPE_SYS_286_CALL_GATE = 4;

/** Taskgate selector. */
inline uint8_t X86_SEL_TYPE_SYS_TASK_GATE = 5;

/** 286 Interrupt gate selector. */
inline uint8_t X86_SEL_TYPE_SYS_286_INT_GATE = 6;

/** 286 Trapgate selector. */
inline uint8_t X86_SEL_TYPE_SYS_286_TRAP_GATE = 7;

/** Undefined system selector. */
inline uint8_t X86_SEL_TYPE_SYS_UNDEFINED2 = 8;

/** 386 TSS selector. */
inline uint8_t X86_SEL_TYPE_SYS_386_TSS_AVAIL = 9;

/** Undefined system selector. */
inline uint8_t X86_SEL_TYPE_SYS_UNDEFINED3 = 0xA;

/** 386 TSS selector - Busy. */
inline uint8_t X86_SEL_TYPE_SYS_386_TSS_BUSY = 0xB;

/** 386 Callgate selector. */
inline uint8_t X86_SEL_TYPE_SYS_386_CALL_GATE = 0xC;

/** Undefined system selector. */
inline uint8_t X86_SEL_TYPE_SYS_UNDEFINED4 = 0xD;

/** 386 Interruptgate selector. */
inline uint8_t X86_SEL_TYPE_SYS_386_INT_GATE = 0xE;

/** 386 Trapgate selector. */
inline uint8_t X86_SEL_TYPE_SYS_386_TRAP_GATE = 0xF;

/** @} */

/** @name AMD64 System Selector Types.
 * @{ */
/** LDT selector. */
inline uint8_t AMD64_SEL_TYPE_SYS_LDT = 2;

/** TSS selector - Busy. */
inline uint8_t AMD64_SEL_TYPE_SYS_TSS_AVAIL = 9;

/** TSS selector - Busy. */
inline uint8_t AMD64_SEL_TYPE_SYS_TSS_BUSY = 0xB;

/** Callgate selector. */
inline uint8_t AMD64_SEL_TYPE_SYS_CALL_GATE = 0xC;

/** Interruptgate selector. */
inline uint8_t AMD64_SEL_TYPE_SYS_INT_GATE = 0xE;

/** Trapgate selector. */
inline uint8_t AMD64_SEL_TYPE_SYS_TRAP_GATE = 0xF;

/** @} */

/** @} */


/** @name Descriptor Table Entry Flag Masks.
 * These are for the 2nd 32-bit word of a descriptor.
 * @{ */
/** Bits 8-11 - TYPE - Descriptor type mask. */

/** Bit 12 - S - System (=0) or Code/Data (=1). */
inline uint32_t X86_DESC_S = 1U << 12;

/** Bits 13-14 - DPL - Descriptor Privilege Level. */

/** Bit 15 - P - Present. */
inline uint32_t X86_DESC_P = 1U << 15;

/** Bit 20 - AVL - Available for system software. */
inline uint32_t X86_DESC_AVL = 1U << 20;

/** Bit 22 - DB - Default operation size. 0 = 16 bit, 1 = 32 bit. */
inline uint32_t X86_DESC_DB = 1U << 22;

/** Bit 23 - G - Granularity of the limit. If set 4KB granularity is
 * used, if clear byte. */
inline uint32_t X86_DESC_G = 1U << 23;

/** @} */

/** @} */


/** @name Task Segments.
 * @{
 */

/**
 * The minimum TSS descriptor limit for 286 tasks.
 */
inline uint8_t X86_SEL_TYPE_SYS_286_TSS_LIMIT_MIN = 0x2b;


/**
 * The minimum TSS descriptor segment limit for 386 tasks.
 */
inline uint8_t X86_SEL_TYPE_SYS_386_TSS_LIMIT_MIN = 0x67;


/**
 * 16-bit Task Segment (TSS).
 */
typedef struct X86TSS16
{
    /** Back link to previous task. (static) */
    RTSEL       selPrev;
    /** Ring-0 stack pointer. (static) */
    uint16_t    sp0;
    /** Ring-0 stack segment. (static) */
    RTSEL       ss0;
    /** Ring-1 stack pointer. (static) */
    uint16_t    sp1;
    /** Ring-1 stack segment. (static) */
    RTSEL       ss1;
    /** Ring-2 stack pointer. (static) */
    uint16_t    sp2;
    /** Ring-2 stack segment. (static) */
    RTSEL       ss2;
    /** IP before task switch. */
    uint16_t    ip;
    /** FLAGS before task switch. */
    uint16_t    flags;
    /** AX before task switch. */
    uint16_t    ax;
    /** CX before task switch. */
    uint16_t    cx;
    /** DX before task switch. */
    uint16_t    dx;
    /** BX before task switch. */
    uint16_t    bx;
    /** SP before task switch. */
    uint16_t    sp;
    /** BP before task switch. */
    uint16_t    bp;
    /** SI before task switch. */
    uint16_t    si;
    /** DI before task switch. */
    uint16_t    di;
    /** ES before task switch. */
    RTSEL       es;
    /** CS before task switch. */
    RTSEL       cs;
    /** SS before task switch. */
    RTSEL       ss;
    /** DS before task switch. */
    RTSEL       ds;
    /** LDTR before task switch. */
    RTSEL       selLdt;
} X86TSS16;
/** Pointer to a 16-bit task segment. */
typedef X86TSS16 *PX86TSS16;
/** Pointer to a const 16-bit task segment. */
typedef const X86TSS16 *PCX86TSS16;


/**
 * 32-bit Task Segment (TSS).
 */
typedef struct X86TSS32
{
    /** Back link to previous task. (static) */
    RTSEL       selPrev;
    uint16_t    padding1;
    /** Ring-0 stack pointer. (static) */
    uint32_t    esp0;
    /** Ring-0 stack segment. (static) */
    RTSEL       ss0;
    uint16_t    padding_ss0;
    /** Ring-1 stack pointer. (static) */
    uint32_t    esp1;
    /** Ring-1 stack segment. (static) */
    RTSEL       ss1;
    uint16_t    padding_ss1;
    /** Ring-2 stack pointer. (static) */
    uint32_t    esp2;
    /** Ring-2 stack segment. (static) */
    RTSEL       ss2;
    uint16_t    padding_ss2;
    /** Page directory for the task. (static) */
    uint32_t    cr3;
    /** EIP before task switch. */
    uint32_t    eip;
    /** EFLAGS before task switch. */
    uint32_t    eflags;
    /** EAX before task switch. */
    uint32_t    eax;
    /** ECX before task switch. */
    uint32_t    ecx;
    /** EDX before task switch. */
    uint32_t    edx;
    /** EBX before task switch. */
    uint32_t    ebx;
    /** ESP before task switch. */
    uint32_t    esp;
    /** EBP before task switch. */
    uint32_t    ebp;
    /** ESI before task switch. */
    uint32_t    esi;
    /** EDI before task switch. */
    uint32_t    edi;
    /** ES before task switch. */
    RTSEL       es;
    uint16_t    padding_es;
    /** CS before task switch. */
    RTSEL       cs;
    uint16_t    padding_cs;
    /** SS before task switch. */
    RTSEL       ss;
    uint16_t    padding_ss;
    /** DS before task switch. */
    RTSEL       ds;
    uint16_t    padding_ds;
    /** FS before task switch. */
    RTSEL       fs;
    uint16_t    padding_fs;
    /** GS before task switch. */
    RTSEL       gs;
    uint16_t    padding_gs;
    /** LDTR before task switch. */
    RTSEL       selLdt;
    uint16_t    padding_ldt;
    /** Debug trap flag */
    uint16_t    fDebugTrap;
    /** Offset relative to the TSS of the start of the I/O Bitmap
     * and the end of the interrupt redirection bitmap. */
    uint16_t    offIoBitmap;
} X86TSS32;
/** Pointer to task segment. */
typedef X86TSS32 *PX86TSS32;
/** Pointer to const task segment. */
typedef const X86TSS32 *PCX86TSS32;

/**
 * 64-bit Task segment.
 */
typedef struct X86TSS64
{
    /** Reserved. */
    uint32_t    u32Reserved;
    /** Ring-0 stack pointer. (static) */
    uint64_t    rsp0;
    /** Ring-1 stack pointer. (static) */
    uint64_t    rsp1;
    /** Ring-2 stack pointer. (static) */
    uint64_t    rsp2;
    /** Reserved. */
    uint32_t    u32Reserved2[2];
    /* IST */
    uint64_t    ist1;
    uint64_t    ist2;
    uint64_t    ist3;
    uint64_t    ist4;
    uint64_t    ist5;
    uint64_t    ist6;
    uint64_t    ist7;
    /* Reserved. */
    uint16_t    u16Reserved[5];
    /** Offset relative to the TSS of the start of the I/O Bitmap
     * and the end of the interrupt redirection bitmap. */
    uint16_t    offIoBitmap;
} X86TSS64;
/** Pointer to a 64-bit task segment. */
typedef X86TSS64 *PX86TSS64;
/** Pointer to a const 64-bit task segment. */
typedef const X86TSS64 *PCX86TSS64;

/** @} */


/** @name Selectors.
 * @{
 */

/**
 * The shift used to convert a selector from and to index an index (C).
 */
inline uint8_t X86_SEL_SHIFT = 3;


/**
 * The mask used to mask off the table indicator and RPL of an selector.
 */
inline uint32_t X86_SEL_MASK = 0xfff8;


/**
 * The mask used to mask off the RPL of an selector.
 * This is suitable for checking for NULL selectors.
 */
inline uint32_t X86_SEL_MASK_OFF_RPL = 0xfffc;


/**
 * The bit indicating that a selector is in the LDT and not in the GDT.
 */
inline uint32_t X86_SEL_LDT = 0x0004;


/**
 * The bit mask for getting the RPL of a selector.
 */
inline uint32_t X86_SEL_RPL = 0x0003;


/**
 * The mask covering both RPL and LDT.
 * This is incidentally the same as sizeof(X86DESC) - 1, so good for limit
 * checks.
 */
inline uint32_t X86_SEL_RPL_LDT = 0x0007;


/** @} */


/**
 * x86 Exceptions/Faults/Traps.
 */
typedef enum X86XCPT
{
    /** \#DE - Divide error. */
    X86_XCPT_DE = 0x00,
    /** \#DB - Debug event (single step, DRx, ..) */
    X86_XCPT_DB = 0x01,
    /** NMI - Non-Maskable Interrupt */
    X86_XCPT_NMI = 0x02,
    /** \#BP - Breakpoint (INT3). */
    X86_XCPT_BP = 0x03,
    /** \#OF - Overflow (INTO). */
    X86_XCPT_OF = 0x04,
    /** \#BR - Bound range exceeded (BOUND). */
    X86_XCPT_BR = 0x05,
    /** \#UD - Undefined opcode. */
    X86_XCPT_UD = 0x06,
    /** \#NM - Device not available (math coprocessor device). */
    X86_XCPT_NM = 0x07,
    /** \#DF - Double fault. */
    X86_XCPT_DF = 0x08,
    /** ??? - Coprocessor segment overrun (obsolete). */
    X86_XCPT_CO_SEG_OVERRUN = 0x09,
    /** \#TS - Taskswitch (TSS). */
    X86_XCPT_TS = 0x0a,
    /** \#NP - Segment no present. */
    X86_XCPT_NP = 0x0b,
    /** \#SS - Stack segment fault. */
    X86_XCPT_SS = 0x0c,
    /** \#GP - General protection fault. */
    X86_XCPT_GP = 0x0d,
    /** \#PF - Page fault. */
    X86_XCPT_PF = 0x0e,
    /* 0x0f is reserved (to avoid conflict with spurious interrupts in BIOS setup). */
    /** \#MF - Math fault (FPU). */
    X86_XCPT_MF = 0x10,
    /** \#AC - Alignment check. */
    X86_XCPT_AC = 0x11,
    /** \#MC - Machine check. */
    X86_XCPT_MC = 0x12,
    /** \#XF - SIMD Floating-Pointer Exception. */
    X86_XCPT_XF = 0x13,
    /** \#VE - Virtualization Exception. */
    X86_XCPT_VE = 0x14,
    /** \#SX - Security Exception. */
    X86_XCPT_SX = 0x1e
} X86XCPT;
/** Pointer to a x86 exception code. */
typedef X86XCPT *PX86XCPT;
/** Pointer to a const x86 exception code. */
typedef const X86XCPT *PCX86XCPT;
/** The last valid (currently reserved) exception value. */
inline uint8_t X86_XCPT_LAST = 0x1f;



/** @name Trap Error Codes
 * @{
 */
/** External indicator. */
inline uint8_t X86_TRAP_ERR_EXTERNAL = 1;

/** IDT indicator. */
inline uint8_t X86_TRAP_ERR_IDT = 2;

/** Descriptor table indicator - If set LDT, if clear GDT. */
inline uint8_t X86_TRAP_ERR_TI = 4;

/** Mask for getting the selector. */
inline uint16_t X86_TRAP_ERR_SEL_MASK = 0xfff8;

/** Shift for getting the selector table index (C type index). */
inline uint8_t X86_TRAP_ERR_SEL_SHIFT = 3;

/** @} */


/** @name \#PF Trap Error Codes
 * @{
 */
/** Bit 0 -   P - Not present (clear) or page level protection (set) fault. */
inline uint32_t X86_TRAP_PF_P = 1U << 0;

/** Bit 1 - R/W - Read (clear) or write (set) access. */
inline uint32_t X86_TRAP_PF_RW = 1U << 1;

/** Bit 2 - U/S - CPU executing in user mode (set) or supervisor mode (clear). */
inline uint32_t X86_TRAP_PF_US = 1U << 2;

/** Bit 3 - RSVD- Reserved bit violation (set), i.e. reserved bit was set to 1. */
inline uint32_t X86_TRAP_PF_RSVD = 1U << 3;

/** Bit 4 - I/D - Instruction fetch (set) / Data access (clear) - PAE + NXE. */
inline uint32_t X86_TRAP_PF_ID = 1U << 4;

/** Bit 5 - PK - Protection-key violation (AMD64 mode only). */
inline uint32_t X86_TRAP_PF_PK = 1U << 5;

/** @} */

/**
 * 16-bit IDTR.
 */
typedef struct X86IDTR16
{
    /** Offset. */
    uint16_t    offSel;
    /** Selector. */
    uint16_t    uSel;
} X86IDTR16, *PX86IDTR16;

/**
 * 32-bit IDTR/GDTR.
 */
typedef struct X86XDTR32
{
    /** Size of the descriptor table. */
    uint16_t    cb;
    /** Address of the descriptor table. */
    uint16_t    au16Addr[2];
} X86XDTR32, *PX86XDTR32;

/**
 * 64-bit IDTR/GDTR.
 */
typedef struct X86XDTR64
{
    /** Size of the descriptor table. */
    uint16_t    cb;
    /** Address of the descriptor table. */
    uint16_t    au16Addr[4];
} X86XDTR64, *PX86XDTR64;


/** @name ModR/M
 * @{ */
inline uint8_t X86_MODRM_RM_MASK = 0x07;

inline uint8_t X86_MODRM_REG_MASK = 0x38;

inline uint8_t X86_MODRM_REG_SMASK = 0x07;

inline uint8_t X86_MODRM_REG_SHIFT = 3;

inline uint8_t X86_MODRM_MOD_MASK = 0xc0;

inline uint8_t X86_MODRM_MOD_SMASK = 0x03;

inline uint8_t X86_MODRM_MOD_SHIFT = 6;

/** @} */

/** @name SIB
 * @{ */
inline uint8_t X86_SIB_BASE_MASK = 0x07;

inline uint8_t X86_SIB_INDEX_MASK = 0x38;

inline uint8_t X86_SIB_INDEX_SMASK = 0x07;

inline uint8_t X86_SIB_INDEX_SHIFT = 3;

inline uint8_t X86_SIB_SCALE_MASK = 0xc0;

inline uint8_t X86_SIB_SCALE_SMASK = 0x03;

inline uint8_t X86_SIB_SCALE_SHIFT = 6;

/** @} */

/** @name General register indexes
 * @{ */
inline uint8_t X86_GREG_xAX = 0;

inline uint8_t X86_GREG_xCX = 1;

inline uint8_t X86_GREG_xDX = 2;

inline uint8_t X86_GREG_xBX = 3;

inline uint8_t X86_GREG_xSP = 4;

inline uint8_t X86_GREG_xBP = 5;

inline uint8_t X86_GREG_xSI = 6;

inline uint8_t X86_GREG_xDI = 7;

inline uint8_t X86_GREG_x8 = 8;

inline uint8_t X86_GREG_x9 = 9;

inline uint8_t X86_GREG_x10 = 10;

inline uint8_t X86_GREG_x11 = 11;

inline uint8_t X86_GREG_x12 = 12;

inline uint8_t X86_GREG_x13 = 13;

inline uint8_t X86_GREG_x14 = 14;

inline uint8_t X86_GREG_x15 = 15;

/** @} */

/** @name X86_SREG_XXX - Segment register indexes.
 * @{ */
inline uint8_t X86_SREG_ES = 0;

inline uint8_t X86_SREG_CS = 1;

inline uint8_t X86_SREG_SS = 2;

inline uint8_t X86_SREG_DS = 3;

inline uint8_t X86_SREG_FS = 4;

inline uint8_t X86_SREG_GS = 5;

/** @} */
/** Segment register count. */
inline uint8_t X86_SREG_COUNT = 6;



/** @name X86_OP_XXX - Prefixes
 * @{ */
inline uint8_t X86_OP_PRF_CS = 0x2e;

inline uint8_t X86_OP_PRF_SS = 0x36;

inline uint8_t X86_OP_PRF_DS = 0x3e;

inline uint8_t X86_OP_PRF_ES = 0x26;

inline uint8_t X86_OP_PRF_FS = 0x64;

inline uint8_t X86_OP_PRF_GS = 0x65;

inline uint8_t X86_OP_PRF_SIZE_OP = 0x66;

inline uint8_t X86_OP_PRF_SIZE_ADDR = 0x67;

inline uint8_t X86_OP_PRF_LOCK = 0xf0;

inline uint8_t X86_OP_PRF_REPZ = 0xf3;

inline uint8_t X86_OP_PRF_REPNZ = 0xf2;

inline uint8_t X86_OP_REX_B = 0x41;

inline uint8_t X86_OP_REX_X = 0x42;

inline uint8_t X86_OP_REX_R = 0x44;

inline uint8_t X86_OP_REX_W = 0x48;

/** @} */


/** @} */


