/** @file
 * CPUM - CPU Monitor(/ Manager), Context Structures.
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



#pragma D  depends_on library x86.d




/** @defgroup grp_cpum_ctx  The CPUM Context Structures
 * @ingroup grp_cpum
 * @{
 */

/**
 * Selector hidden registers.
 */
typedef struct CPUMSELREG
{
    /** The selector register. */
    RTSEL       Sel;
    /** Padding, don't use. */
    RTSEL       PaddingSel;
    /** The selector which info resides in u64Base, u32Limit and Attr, provided
     * that CPUMSELREG_FLAGS_VALID is set. */
    RTSEL       ValidSel;
    /** Flags, see CPUMSELREG_FLAGS_XXX. */
    uint16_t    fFlags;

    /** Base register.
     *
     * Long mode remarks:
     *  - Unused in long mode for CS, DS, ES, SS
     *  - 32 bits for FS & GS; FS(GS)_BASE msr used for the base address
     *  - 64 bits for TR & LDTR
     */
    uint64_t    u64Base;
    /** Limit (expanded). */
    uint32_t    u32Limit;
    /** Flags.
     * This is the high 32-bit word of the descriptor entry.
     * Only the flags, dpl and type are used. */
    X86DESCATTR Attr;
} CPUMSELREG;

/** @name CPUMSELREG_FLAGS_XXX - CPUMSELREG::fFlags values.
 * @{ */
inline uint16_t CPUMSELREG_FLAGS_VALID = 0x0001;

inline uint16_t CPUMSELREG_FLAGS_STALE = 0x0002;

inline uint16_t CPUMSELREG_FLAGS_VALID_MASK = 0x0003;

/** @} */

/** Checks if the hidden parts of the selector register are valid. */


/** Old type used for the hidden register part.
 * @deprecated  */
typedef CPUMSELREG CPUMSELREGHID;

/**
 * The sysenter register set.
 */
typedef struct CPUMSYSENTER
{
    /** Ring 0 cs.
     * This value +  8 is the Ring 0 ss.
     * This value + 16 is the Ring 3 cs.
     * This value + 24 is the Ring 3 ss.
     */
    uint64_t    cs;
    /** Ring 0 eip. */
    uint64_t    eip;
    /** Ring 0 esp. */
    uint64_t    esp;
} CPUMSYSENTER;

/** @def CPUM_UNION_NM
 * For compilers (like DTrace) that does not grok nameless unions, we have a
 * little hack to make them palatable.
 */
/** @def CPUM_STRUCT_NM
 * For compilers (like DTrace) that does not grok nameless structs (it is
 * non-standard C++), we have a little hack to make them palatable.
 */


/** @def CPUM_UNION_STRUCT_NM
 * Combines CPUM_UNION_NM and CPUM_STRUCT_NM to avoid hitting the right side of
 * the screen in the compile time assertions.
 */


/** A general register (union). */
typedef union CPUMCTXGREG
{
    /** Natural unsigned integer view. */
    uint64_t            u;
    /** 64-bit view. */
    uint64_t            u64;
    /** 32-bit view. */
    uint32_t            u32;
    /** 16-bit view. */
    uint16_t            u16;
    /** 8-bit view. */
    uint8_t             u8;
    /** 8-bit low/high view.    */
    RT_GCC_EXTENSION struct
    {
        /** Low byte (al, cl, dl, bl, ++). */
        uint8_t         bLo;
        /** High byte in the first word - ah, ch, dh, bh. */
        uint8_t         bHi;
    } s  ;
} CPUMCTXGREG;



/**
 * CPU context core.
 *
 * @todo        Eliminate this structure!
 * @deprecated  We don't push any context cores any more in TRPM.
 */
typedef struct CPUMCTXCORE
{
    /** @name General Register.
     * @note  These follow the encoding order (X86_GREG_XXX) and can be accessed as
     *        an array starting a rax.
     * @{ */
    union
    {
        uint8_t         al;
        uint16_t        ax;
        uint32_t        eax;
        uint64_t        rax;
    } rax  ;
    union
    {
        uint8_t         cl;
        uint16_t        cx;
        uint32_t        ecx;
        uint64_t        rcx;
    } rcx  ;
    union
    {
        uint8_t         dl;
        uint16_t        dx;
        uint32_t        edx;
        uint64_t        rdx;
    } rdx  ;
    union
    {
        uint8_t         bl;
        uint16_t        bx;
        uint32_t        ebx;
        uint64_t        rbx;
    } rbx  ;
    union
    {
        uint16_t        sp;
        uint32_t        esp;
        uint64_t        rsp;
    } rsp  ;
    union
    {
        uint16_t        bp;
        uint32_t        ebp;
        uint64_t        rbp;
    } rbp  ;
    union
    {
        uint8_t         sil;
        uint16_t        si;
        uint32_t        esi;
        uint64_t        rsi;
    } rsi  ;
    union
    {
        uint8_t         dil;
        uint16_t        di;
        uint32_t        edi;
        uint64_t        rdi;
    } rdi  ;
    uint64_t            r8;
    uint64_t            r9;
    uint64_t            r10;
    uint64_t            r11;
    uint64_t            r12;
    uint64_t            r13;
    uint64_t            r14;
    uint64_t            r15;
    /** @} */

    /** @name Segment registers.
     * @note These follow the encoding order (X86_SREG_XXX) and can be accessed as
     *       an array starting a es.
     * @{  */
    CPUMSELREG          es;
    CPUMSELREG          cs;
    CPUMSELREG          ss;
    CPUMSELREG          ds;
    CPUMSELREG          fs;
    CPUMSELREG          gs;
    /** @} */

    /** The program counter. */
    union
    {
        uint16_t        ip;
        uint32_t        eip;
        uint64_t        rip;
    } rip  ;

    /** The flags register. */
    union
    {
        X86EFLAGS       eflags;
        X86RFLAGS       rflags;
    } rflags  ;

} CPUMCTXCORE;


/**
 * SVM Host-state area (Nested Hw.virt - VirtualBox's layout).
 */
typedef struct SVMHOSTSTATE
{
    uint64_t    uEferMsr;
    uint64_t    uCr0;
    uint64_t    uCr4;
    uint64_t    uCr3;
    uint64_t    uRip;
    uint64_t    uRsp;
    uint64_t    uRax;
    X86RFLAGS   rflags;
    CPUMSELREG  es;
    CPUMSELREG  cs;
    CPUMSELREG  ss;
    CPUMSELREG  ds;
    VBOXGDTR    gdtr;
    VBOXIDTR    idtr;
    uint8_t     abPadding[4];
} SVMHOSTSTATE;
/** Pointer to the SVMHOSTSTATE structure. */
typedef SVMHOSTSTATE *PSVMHOSTSTATE;
/** Pointer to a const SVMHOSTSTATE structure. */
typedef const SVMHOSTSTATE *PCSVMHOSTSTATE;


/**
 * CPU context.
 */
typedef struct CPUMCTX
{
    /** CPUMCTXCORE Part.
     * @{ */

    /** General purpose registers. */
    union /* no tag! */
    {
        /** The general purpose register array view, indexed by X86_GREG_XXX. */
        CPUMCTXGREG     aGRegs[16];

        /** 64-bit general purpose register view. */
        RT_GCC_EXTENSION struct /* no tag! */
        {
            uint64_t    rax, rcx, rdx, rbx, rsp, rbp, rsi, rdi, r8, r9, r10, r11, r12, r13, r14, r15;
        } qw  ;
        /** 64-bit general purpose register view. */
        RT_GCC_EXTENSION struct /* no tag! */
        {
            uint64_t    r0, r1, r2, r3, r4, r5, r6, r7;
        } qw2  ;
        /** 32-bit general purpose register view. */
        RT_GCC_EXTENSION struct /* no tag! */
        {
            uint32_t     eax, u32Pad00,      ecx, u32Pad01,      edx, u32Pad02,      ebx, u32Pad03,
                         esp, u32Pad04,      ebp, u32Pad05,      esi, u32Pad06,      edi, u32Pad07,
                         r8d, u32Pad08,      r9d, u32Pad09,     r10d, u32Pad10,     r11d, u32Pad11,
                        r12d, u32Pad12,     r13d, u32Pad13,     r14d, u32Pad14,     r15d, u32Pad15;
        } dw  ;
        /** 16-bit general purpose register view. */
        RT_GCC_EXTENSION struct /* no tag! */
        {
            uint16_t      ax, au16Pad00[3],   cx, au16Pad01[3],   dx, au16Pad02[3],   bx, au16Pad03[3],
                          sp, au16Pad04[3],   bp, au16Pad05[3],   si, au16Pad06[3],   di, au16Pad07[3],
                         r8w, au16Pad08[3],  r9w, au16Pad09[3], r10w, au16Pad10[3], r11w, au16Pad11[3],
                        r12w, au16Pad12[3], r13w, au16Pad13[3], r14w, au16Pad14[3], r15w, au16Pad15[3];
        } w  ;
        RT_GCC_EXTENSION struct /* no tag! */
        {
            uint8_t   al, ah, abPad00[6], cl, ch, abPad01[6], dl, dh, abPad02[6], bl, bh, abPad03[6],
                         spl, abPad04[7],    bpl, abPad05[7],    sil, abPad06[7],    dil, abPad07[7],
                         r8l, abPad08[7],    r9l, abPad09[7],   r10l, abPad10[7],   r11l, abPad11[7],
                        r12l, abPad12[7],   r13l, abPad13[7],   r14l, abPad14[7],   r15l, abPad15[7];
        } b  ;
    } g  ;

    /** Segment registers. */
    union /* no tag! */
    {
        /** The segment register array view, indexed by X86_SREG_XXX. */
        CPUMSELREG      aSRegs[6];
        /** The named segment register view. */
        RT_GCC_EXTENSION struct /* no tag! */
        {
            CPUMSELREG  es, cs, ss, ds, fs, gs;
        } n  ;
    } s  ;

    /** The program counter. */
    union
    {
        uint16_t        ip;
        uint32_t        eip;
        uint64_t        rip;
    } rip  ;

    /** The flags register. */
    union
    {
        X86EFLAGS       eflags;
        X86RFLAGS       rflags;
    } rflags  ;

    /** @} */ /*(CPUMCTXCORE)*/


    /** @name Control registers.
     * @{ */
    uint64_t            cr0;
    uint64_t            cr2;
    uint64_t            cr3;
    uint64_t            cr4;
    /** @} */

    /** Debug registers.
     * @remarks DR4 and DR5 should not be used since they are aliases for
     *          DR6 and DR7 respectively on both AMD and Intel CPUs.
     * @remarks DR8-15 are currently not supported by AMD or Intel, so
     *          neither do we.
     */
    uint64_t        dr[8];

    /** Padding before the structure so the 64-bit member is correctly aligned.
     * @todo fix this structure!  */
    uint16_t        gdtrPadding[3];
    /** Global Descriptor Table register. */
    VBOXGDTR        gdtr;

    /** Padding before the structure so the 64-bit member is correctly aligned.
     * @todo fix this structure!  */
    uint16_t        idtrPadding[3];
    /** Interrupt Descriptor Table register. */
    VBOXIDTR        idtr;

    /** The task register.
     * Only the guest context uses all the members. */
    CPUMSELREG      ldtr;
    /** The task register.
     * Only the guest context uses all the members. */
    CPUMSELREG      tr;

    /** The sysenter msr registers.
     * This member is not used by the hypervisor context. */
    CPUMSYSENTER    SysEnter;

    /** @name System MSRs.
     * @{ */
    uint64_t        msrEFER;
    uint64_t        msrSTAR;            /**< Legacy syscall eip, cs & ss. */
    uint64_t        msrPAT;             /**< Page attribute table. */
    uint64_t        msrLSTAR;           /**< 64 bits mode syscall rip. */
    uint64_t        msrCSTAR;           /**< Compatibility mode syscall rip. */
    uint64_t        msrSFMASK;          /**< syscall flag mask. */
    uint64_t        msrKERNELGSBASE;    /**< swapgs exchange value. */
    uint64_t        uMsrPadding0;       /**< no longer used (used to hold a copy of APIC base MSR). */
    /** @} */

    /** The XCR0..XCR1 registers. */
    uint64_t                    aXcr[2];
    /** The mask to pass to XSAVE/XRSTOR in EDX:EAX.  If zero we use
     *  FXSAVE/FXRSTOR (since bit 0 will always be set, we only need to test it). */
    uint64_t                    fXStateMask;

    /** Pointer to the FPU/SSE/AVX/XXXX state ring-0 mapping. */
    PX86XSAVEAREA     pXStateR0;
    /** Pointer to the FPU/SSE/AVX/XXXX state ring-3 mapping. */
    RTR3PTR    pXStateR3;
    /** Pointer to the FPU/SSE/AVX/XXXX state raw-mode mapping. */
    RTRCPTR    pXStateRC;
    /** State component offsets into pXState, UINT16_MAX if not present. */
    uint16_t                    aoffXState[64];

    /** 724 - Size padding. */
    uint8_t                     abPadding[64 == 64 ? 4 : 12];

    /** 728 - Hardware virtualization state.   */
    struct
    {
        union   /* no tag! */
        {
            struct
            {
                /** 728 - MSR holding physical address of the Guest's Host-state. */
                uint64_t            uMsrHSavePa;
                /** 736 - Guest physical address of the nested-guest VMCB. */
                RTGCPHYS            GCPhysVmcb;
                /** 744 - Cache of the nested-guest VMCB - R0 ptr. */
                PSVMVMCB  pVmcbR0;
                /** 752 / 748 - Cache of the nested-guest VMCB - R3 ptr. */
                RTR3PTR pVmcbR3;
                /** 760 - Guest's host-state save area. */
                SVMHOSTSTATE        HostState;
                /** 944 - Global interrupt flag. */
                uint8_t                fGif;
                /** 945 - Padding. */
                uint8_t             u8Padding0;
                /** 946 - Pause filter count. */
                uint16_t            cPauseFilter;
                /** 948 - Pause filter count. */
                uint16_t            cPauseFilterThreshold;
                /** 950 - Whether the injected event is subject to event intercepts. */
                uint8_t                fInterceptEvents;
                /** 951 - Padding. */
                uint8_t             u8Padding1;
                /** 952 - MSR permission bitmap - R0 ptr. */
                void *    pvMsrBitmapR0;
                /** 960 / 956 - MSR permission bitmap - R3 ptr. */
                RTR3PTR   pvMsrBitmapR3;
                /** 968 / 960 - IO permission bitmap - R0 ptr. */
                void *    pvIoBitmapR0;
                /** 976 / 964 - IO permission bitmap - R3 ptr. */
                RTR3PTR   pvIoBitmapR3;
                /** 984 / 968 - Host physical address of the nested-guest VMCB.  */
                RTHCPHYS            HCPhysVmcb;
            } svm;
        } s  ;

        /** 992 - A subset of force flags that are preserved while running
         *  the nested-guest. */
        uint32_t                fLocalForcedActions;
        /** 996 - Padding. */
        uint8_t                 abPadding1[28];
    } hwvirt;
    /** @} */
} CPUMCTX;


/**
 * Additional guest MSRs (i.e. not part of the CPU context structure).
 *
 * @remarks Never change the order here because of the saved stated!  The size
 *          can in theory be changed, but keep older VBox versions in mind.
 */
typedef union CPUMCTXMSRS
{
    struct
    {
        uint64_t    TscAux;             /**< MSR_K8_TSC_AUX */
        uint64_t    MiscEnable;         /**< MSR_IA32_MISC_ENABLE */
        uint64_t    MtrrDefType;        /**< IA32_MTRR_DEF_TYPE */
        uint64_t    MtrrFix64K_00000;   /**< IA32_MTRR_FIX16K_80000 */
        uint64_t    MtrrFix16K_80000;   /**< IA32_MTRR_FIX16K_80000 */
        uint64_t    MtrrFix16K_A0000;   /**< IA32_MTRR_FIX16K_A0000 */
        uint64_t    MtrrFix4K_C0000;    /**< IA32_MTRR_FIX4K_C0000 */
        uint64_t    MtrrFix4K_C8000;    /**< IA32_MTRR_FIX4K_C8000 */
        uint64_t    MtrrFix4K_D0000;    /**< IA32_MTRR_FIX4K_D0000 */
        uint64_t    MtrrFix4K_D8000;    /**< IA32_MTRR_FIX4K_D8000 */
        uint64_t    MtrrFix4K_E0000;    /**< IA32_MTRR_FIX4K_E0000 */
        uint64_t    MtrrFix4K_E8000;    /**< IA32_MTRR_FIX4K_E8000 */
        uint64_t    MtrrFix4K_F0000;    /**< IA32_MTRR_FIX4K_F0000 */
        uint64_t    MtrrFix4K_F8000;    /**< IA32_MTRR_FIX4K_F8000 */
        uint64_t    PkgCStateCfgCtrl;   /**< MSR_PKG_CST_CONFIG_CONTROL */
    } msr;
    uint64_t    au64[64];
} CPUMCTXMSRS;
/** Pointer to the guest MSR state. */
typedef CPUMCTXMSRS *PCPUMCTXMSRS;
/** Pointer to the const guest MSR state. */
typedef const CPUMCTXMSRS *PCCPUMCTXMSRS;

/**
 * The register set returned by a CPUID operation.
 */
typedef struct CPUMCPUID
{
    uint32_t uEax;
    uint32_t uEbx;
    uint32_t uEcx;
    uint32_t uEdx;
} CPUMCPUID;
/** Pointer to a CPUID leaf. */
typedef CPUMCPUID *PCPUMCPUID;
/** Pointer to a const CPUID leaf. */
typedef const CPUMCPUID *PCCPUMCPUID;

/** @}  */




