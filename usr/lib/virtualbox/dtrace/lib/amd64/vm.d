/** @file
 * VM - The Virtual Machine, data.
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
#pragma D  depends_on library CPUMInternal.d




/** @defgroup grp_vm    The Virtual Machine
 * @ingroup grp_vmm
 * @{
 */

/**
 * The state of a Virtual CPU.
 *
 * The basic state indicated here is whether the CPU has been started or not. In
 * addition, there are sub-states when started for assisting scheduling (GVMM
 * mostly).
 *
 * The transition out of the STOPPED state is done by a vmR3PowerOn.
 * The transition back to the STOPPED state is done by vmR3PowerOff.
 *
 * (Alternatively we could let vmR3PowerOn start CPU 0 only and let the SPIP
 * handling switch on the other CPUs. Then vmR3Reset would stop all but CPU 0.)
 */
typedef enum VMCPUSTATE
{
    /** The customary invalid zero. */
    VMCPUSTATE_INVALID = 0,

    /** Virtual CPU has not yet been started.  */
    VMCPUSTATE_STOPPED,

    /** CPU started. */
    VMCPUSTATE_STARTED,
    /** CPU started in HM context. */
    VMCPUSTATE_STARTED_HM,
    /** Executing guest code and can be poked (RC or STI bits of HM). */
    VMCPUSTATE_STARTED_EXEC,
    /** Executing guest code in the recompiler. */
    VMCPUSTATE_STARTED_EXEC_REM,
    /** Halted. */
    VMCPUSTATE_STARTED_HALTED,

    /** The end of valid virtual CPU states. */
    VMCPUSTATE_END,

    /** Ensure 32-bit type. */
    VMCPUSTATE_32BIT_HACK = 0x7fffffff
} VMCPUSTATE;


/**
 * The cross context virtual CPU structure.
 *
 * Run 'kmk run-struct-tests' (from src/VBox/VMM if you like) after updating!
 */
typedef struct VMCPU
{
    /** Per CPU forced action.
     * See the VMCPU_FF_* \#defines. Updated atomically. */
    uint32_t volatile       fLocalForcedActions;                    /* 0 */
    /** The CPU state. */
    VMCPUSTATE volatile     enmState;                               /* 4 */

    /** Pointer to the ring-3 UVMCPU structure. */
    PUVMCPU                 pUVCpu;                                 /* 8 */
    /** Ring-3 Host Context VM Pointer. */
    PVMR3                   pVMR3;                                  /* 16 / 12 */
    /** Ring-0 Host Context VM Pointer. */
    PVMR0                   pVMR0;                                  /* 24 / 16 */
    /** Raw-mode Context VM Pointer. */
    PVMRC                   pVMRC;                                  /* 32 / 20 */
    /** The CPU ID.
     * This is the index into the VM::aCpu array. */
    VMCPUID                 idCpu;                                  /* 36 / 24 */
    /** The native thread handle. */
    RTNATIVETHREAD          hNativeThread;                          /* 40 / 28 */
    /** The native R0 thread handle. (different from the R3 handle!) */
    RTNATIVETHREAD          hNativeThreadR0;                        /* 48 / 32 */
    /** Which host CPU ID is this EMT running on.
     * Only valid when in RC or HMR0 with scheduling disabled. */
    RTCPUID volatile        idHostCpu;                              /* 56 / 36 */
    /** The CPU set index corresponding to idHostCpu, UINT32_MAX if not valid.
     * @remarks Best to make sure iHostCpuSet shares cache line with idHostCpu! */
    uint32_t volatile       iHostCpuSet;                            /* 60 / 40 */


    /** IEM part.
     * @remarks This comes first as it allows the use of 8-bit immediates for the
     *          first 64 bytes of the structure, reducing code size a wee bit. */
    union VMCPUUNIONIEMSTUB
    {
        uint8_t             padding[18496];     /* multiple of 64 */
    } iem;

    /** HM part. */
    union VMCPUUNIONHM
    {
        uint8_t             padding[5824];      /* multiple of 64 */
    } hm;

    /** EM part. */
    union VMCPUUNIONEM
    {
        uint8_t             padding[1408];      /* multiple of 64 */
    } em;

    /** TRPM part. */
    union VMCPUUNIONTRPM
    {
        uint8_t             padding[128];       /* multiple of 64 */
    } trpm;

    /** TM part. */
    union VMCPUUNIONTM
    {
        uint8_t             padding[384];       /* multiple of 64 */
    } tm;

    /** VMM part. */
    union VMCPUUNIONVMM
    {
        uint8_t             padding[704];       /* multiple of 64 */
    } vmm;

    /** PDM part. */
    union VMCPUUNIONPDM
    {
        uint8_t             padding[256];       /* multiple of 64 */
    } pdm;

    /** IOM part. */
    union VMCPUUNIONIOM
    {
        uint8_t             padding[512];       /* multiple of 64 */
    } iom;

    /** DBGF part.
     * @todo Combine this with other tiny structures. */
    union VMCPUUNIONDBGF
    {
        uint8_t             padding[256];       /* multiple of 64 */
    } dbgf;

    /** GIM part. */
    union VMCPUUNIONGIM
    {
        uint8_t             padding[512];       /* multiple of 64 */
    } gim;

    /** APIC part. */
    union VMCPUUNIONAPIC
    {
        uint8_t             padding[1792];      /* multiple of 64 */
    } apic;

    /*
     * Some less frequently used global members that doesn't need to take up
     * precious space at the head of the structure.
     */

    /** Trace groups enable flags.  */
    uint32_t                fTraceGroups;                           /* 64 / 44 */
    /** State data for use by ad hoc profiling. */
    uint32_t                uAdHoc;
    /** Profiling samples for use by ad hoc profiling. */
    STAMPROFILEADV          aStatAdHoc[8];                          /* size: 40*8 = 320 */

    /** Align the following members on page boundary. */
    uint8_t                 abAlignment2[2104];

    /** PGM part. */
    union VMCPUUNIONPGM
    {
        uint8_t             padding[4096];      /* multiple of 4096 */
    } pgm;

    /** CPUM part. */
    union VMCPUUNIONCPUM
    {
        struct CPUMCPU      s;
        uint8_t             padding[4096];      /* multiple of 4096 */
    } cpum;
} VMCPU;





/**
 * The cross context VM structure.
 *
 * It contains all the VM data which have to be available in all contexts.
 * Even if it contains all the data the idea is to use APIs not to modify all
 * the members all around the place.  Therefore we make use of unions to hide
 * everything which isn't local to the current source module.  This means we'll
 * have to pay a little bit of attention when adding new members to structures
 * in the unions and make sure to keep the padding sizes up to date.
 *
 * Run 'kmk run-struct-tests' (from src/VBox/VMM if you like) after updating!
 */
typedef struct VM
{
    /** The state of the VM.
     * This field is read only to everyone except the VM and EM. */
    VMSTATE volatile            enmVMState;
    /** Forced action flags.
     * See the VM_FF_* \#defines. Updated atomically.
     */
    volatile uint32_t           fGlobalForcedActions;
    /** Pointer to the array of page descriptors for the VM structure allocation. */
    RTR3PTR         paVMPagesR3;
    /** Session handle. For use when calling SUPR0 APIs. */
    PSUPDRVSESSION              pSession;
    /** Pointer to the ring-3 VM structure. */
    PUVM                        pUVM;
    /** Ring-3 Host Context VM Pointer. */
    RTR3PTR      pVMR3;
    /** Ring-0 Host Context VM Pointer. */
    struct VM *       pVMR0;
    /** Raw-mode Context VM Pointer. */
    RTRCPTR      pVMRC;

    /** The GVM VM handle. Only the GVM should modify this field. */
    uint32_t                    hSelf;
    /** Number of virtual CPUs. */
    uint32_t                    cCpus;
    /** CPU excution cap (1-100) */
    uint32_t                    uCpuExecutionCap;

    /** Size of the VM structure including the VMCPU array. */
    uint32_t                    cbSelf;

    /** Offset to the VMCPU array starting from beginning of this structure. */
    uint32_t                    offVMCPU;

    /**
     * VMMSwitcher assembly entry point returning to host context.
     *
     * Depending on how the host handles the rc status given in @a eax, this may
     * return and let the caller resume whatever it was doing prior to the call.
     *
     *
     * @param   eax         The return code, register.
     * @remark  Assume interrupts disabled.
     * @remark  This method pointer lives here because TRPM needs it.
     */
    RTRCPTR                     pfnVMMRCToHostAsm/*(int32_t eax)*/;

    /**
     * VMMSwitcher assembly entry point returning to host context without saving the
     * raw-mode context (hyper) registers.
     *
     * Unlike pfnVMMRC2HCAsm, this will not return to the caller.  Instead it
     * expects the caller to save a RC context in CPUM where one might return if the
     * return code indicate that this is possible.
     *
     * This method pointer lives here because TRPM needs it.
     *
     * @param   eax         The return code, register.
     * @remark  Assume interrupts disabled.
     * @remark  This method pointer lives here because TRPM needs it.
     */
    RTRCPTR                     pfnVMMRCToHostAsmNoReturn/*(int32_t eax)*/;

    /** @name Various items that are frequently accessed.
     * @{ */
    /** Whether to recompile user mode code or run it raw/hm. */
    uint8_t                        fRecompileUser;
    /** Whether to recompile supervisor mode code or run it raw/hm. */
    uint8_t                        fRecompileSupervisor;
    /** Whether raw mode supports ring-1 code or not. */
    uint8_t                        fRawRing1Enabled;
    /** PATM enabled flag.
     * This is placed here for performance reasons. */
    uint8_t                        fPATMEnabled;
    /** CSAM enabled flag.
     * This is placed here for performance reasons. */
    uint8_t                        fCSAMEnabled;
    /** Hardware VM support is available and enabled.
     * Determined very early during init.
     * This is placed here for performance reasons. */
    uint8_t                        fHMEnabled;
    /** For asserting on fHMEnable usage. */
    uint8_t                        fHMEnabledFixed;
    /** Hardware VM support requires a minimal raw-mode context.
     * This is never set on 64-bit hosts, only 32-bit hosts requires it. */
    uint8_t                        fHMNeedRawModeCtx;
    /** Set when this VM is the master FT node.
     * @todo This doesn't need to be here, FTM should store it in it's own
     *       structures instead. */
    uint8_t                        fFaultTolerantMaster;
    /** Large page enabled flag.
     * @todo This doesn't need to be here, PGM should store it in it's own
     *       structures instead. */
    uint8_t                        fUseLargePages;
    /** @} */

    /** Alignment padding. */
    uint8_t                     uPadding1[2];

    /** @name Debugging
     * @{ */
    /** Raw-mode Context VM Pointer. */
    RTRCPTR       hTraceBufRC;
    /** Ring-3 Host Context VM Pointer. */
    RTR3PTR       hTraceBufR3;
    /** Ring-0 Host Context VM Pointer. */
    RTTRACEBUF        hTraceBufR0;
    /** @} */


    /** @name Switcher statistics (remove)
     * @{ */
    /** Profiling the total time from Qemu to GC. */
    STAMPROFILEADV              StatTotalQemuToGC;
    /** Profiling the total time from GC to Qemu. */
    STAMPROFILEADV              StatTotalGCToQemu;
    /** Profiling the total time spent in GC. */
    STAMPROFILEADV              StatTotalInGC;
    /** Profiling the total time spent not in Qemu. */
    STAMPROFILEADV              StatTotalInQemu;
    /** Profiling the VMMSwitcher code for going to GC. */
    STAMPROFILEADV              StatSwitcherToGC;
    /** Profiling the VMMSwitcher code for going to HC. */
    STAMPROFILEADV              StatSwitcherToHC;
    STAMPROFILEADV              StatSwitcherSaveRegs;
    STAMPROFILEADV              StatSwitcherSysEnter;
    STAMPROFILEADV              StatSwitcherDebug;
    STAMPROFILEADV              StatSwitcherCR0;
    STAMPROFILEADV              StatSwitcherCR4;
    STAMPROFILEADV              StatSwitcherJmpCR3;
    STAMPROFILEADV              StatSwitcherRstrRegs;
    STAMPROFILEADV              StatSwitcherLgdt;
    STAMPROFILEADV              StatSwitcherLidt;
    STAMPROFILEADV              StatSwitcherLldt;
    STAMPROFILEADV              StatSwitcherTSS;
    /** @} */

    /** Padding - the unions must be aligned on a 64 bytes boundary and the unions
     *  must start at the same offset on both 64-bit and 32-bit hosts. */
    uint8_t                     abAlignment3[(64 == 32 ? 24 : 0) + 40];

    /** CPUM part. */
    union
    {
        struct CPUM s;
        uint8_t     padding[1536];      /* multiple of 64 */
    } cpum;

    /** VMM part. */
    union
    {
        uint8_t     padding[1600];      /* multiple of 64 */
    } vmm;

    /** PGM part. */
    union
    {
        uint8_t     padding[4096*2+6080];      /* multiple of 64 */
    } pgm;

    /** HM part. */
    union
    {
        uint8_t     padding[5440];      /* multiple of 64 */
    } hm;

    /** TRPM part. */
    union
    {
        uint8_t     padding[5248];      /* multiple of 64 */
    } trpm;

    /** SELM part. */
    union
    {
        uint8_t     padding[768];       /* multiple of 64 */
    } selm;

    /** MM part. */
    union
    {
        uint8_t     padding[192];       /* multiple of 64 */
    } mm;

    /** PDM part. */
    union
    {
        uint8_t     padding[1920];      /* multiple of 64 */
    } pdm;

    /** IOM part. */
    union
    {
        uint8_t     padding[896];       /* multiple of 64 */
    } iom;

    /** EM part. */
    union
    {
        uint8_t     padding[256];       /* multiple of 64 */
    } em;

    /** TM part. */
    union
    {
        uint8_t     padding[2496];      /* multiple of 64 */
    } tm;

    /** DBGF part. */
    union
    {
        uint8_t     padding[2368];      /* multiple of 64 */
    } dbgf;

    /** SSM part. */
    union
    {
        uint8_t     padding[128];       /* multiple of 64 */
    } ssm;

    /** FTM part. */
    union
    {
        uint8_t     padding[512];       /* multiple of 64 */
    } ftm;

    /** PATM part. */
    union
    {
        uint8_t     padding[768];       /* multiple of 64 */
    } patm;

    /** CSAM part. */
    union
    {
        uint8_t     padding[1088];      /* multiple of 64 */
    } csam;

    /** REM part. */
    union
    {
        uint8_t     padding[0x11100];   /* multiple of 64 */
    } rem;

    union
    {
        uint8_t     padding[448];       /* multiple of 64 */
    } gim;

    union
    {
        uint8_t     padding[128];       /* multiple of 8 */
    } apic;

    /* ---- begin small stuff ---- */

    /** VM part. */
    union
    {
        uint8_t     padding[24];        /* multiple of 8 */
    } vm;

    /** CFGM part. */
    union
    {
        uint8_t     padding[8];         /* multiple of 8 */
    } cfgm;

    /** Padding for aligning the cpu array on a page boundary. */
    uint8_t         abAlignment2[3870];

    /* ---- end small stuff ---- */

    /** VMCPU array for the configured number of virtual CPUs.
     * Must be aligned on a page boundary for TLB hit reasons as well as
     * alignment of VMCPU members. */
    VMCPU           aCpus[1];
} VM;



/** @} */


