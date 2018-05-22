#pragma D option quiet
int g_cErrors;

dtrace:::BEGIN
{
    g_cErrors = 0;
}

dtrace:::BEGIN
/sizeof(X86CPUIDFEATECX) != 4/
{
    printf("error: sizeof(X86CPUIDFEATECX) should be 4, not %u\n", sizeof(X86CPUIDFEATECX));
    g_cErrors++;
}

dtrace:::BEGIN
/sizeof(CPUM) != 592/
{
    printf("error: sizeof(CPUM) should be 592, not %u\n", sizeof(CPUM));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUM, offCPUMCPU0) != 0/
{
    printf("error: offsetof(CPUM, offCPUMCPU0) should be 0, not %u\n", offsetof(CPUM, offCPUMCPU0));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUM, fHostUseFlags) != 4/
{
    printf("error: offsetof(CPUM, fHostUseFlags) should be 4, not %u\n", offsetof(CPUM, fHostUseFlags));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUM, CR4) != 8/
{
    printf("error: offsetof(CPUM, CR4) should be 8, not %u\n", offsetof(CPUM, CR4));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUM, aGuestCpuIdPatmStd) != 216/
{
    printf("error: offsetof(CPUM, aGuestCpuIdPatmStd) should be 216, not %u\n", offsetof(CPUM, aGuestCpuIdPatmStd));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUM, aGuestCpuIdPatmExt) != 312/
{
    printf("error: offsetof(CPUM, aGuestCpuIdPatmExt) should be 312, not %u\n", offsetof(CPUM, aGuestCpuIdPatmExt));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUM, aGuestCpuIdPatmCentaur) != 472/
{
    printf("error: offsetof(CPUM, aGuestCpuIdPatmCentaur) should be 472, not %u\n", offsetof(CPUM, aGuestCpuIdPatmCentaur));
    g_cErrors++;
}

dtrace:::BEGIN
/sizeof(CPUMCPU) != 2944/
{
    printf("error: sizeof(CPUMCPU) should be 2944, not %u\n", sizeof(CPUMCPU));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCPU, Hyper) != 1920/
{
    printf("error: offsetof(CPUMCPU, Hyper) should be 1920, not %u\n", offsetof(CPUMCPU, Hyper));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCPU, Host) != 1600/
{
    printf("error: offsetof(CPUMCPU, Host) should be 1600, not %u\n", offsetof(CPUMCPU, Host));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCPU, Guest) != 0/
{
    printf("error: offsetof(CPUMCPU, Guest) should be 0, not %u\n", offsetof(CPUMCPU, Guest));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCPU, GuestMsrs) != 1024/
{
    printf("error: offsetof(CPUMCPU, GuestMsrs) should be 1024, not %u\n", offsetof(CPUMCPU, GuestMsrs));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCPU, fUseFlags) != 1536/
{
    printf("error: offsetof(CPUMCPU, fUseFlags) should be 1536, not %u\n", offsetof(CPUMCPU, fUseFlags));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCPU, fChanged) != 1540/
{
    printf("error: offsetof(CPUMCPU, fChanged) should be 1540, not %u\n", offsetof(CPUMCPU, fChanged));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCPU, offCPUM) != 1544/
{
    printf("error: offsetof(CPUMCPU, offCPUM) should be 1544, not %u\n", offsetof(CPUMCPU, offCPUM));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCPU, u32RetCode) != 1548/
{
    printf("error: offsetof(CPUMCPU, u32RetCode) should be 1548, not %u\n", offsetof(CPUMCPU, u32RetCode));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCPU, pvApicBase) != 1552/
{
    printf("error: offsetof(CPUMCPU, pvApicBase) should be 1552, not %u\n", offsetof(CPUMCPU, pvApicBase));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCPU, fApicDisVectors) != 1560/
{
    printf("error: offsetof(CPUMCPU, fApicDisVectors) should be 1560, not %u\n", offsetof(CPUMCPU, fApicDisVectors));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCPU, fX2Apic) != 1564/
{
    printf("error: offsetof(CPUMCPU, fX2Apic) should be 1564, not %u\n", offsetof(CPUMCPU, fX2Apic));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCPU, fRawEntered) != 1565/
{
    printf("error: offsetof(CPUMCPU, fRawEntered) should be 1565, not %u\n", offsetof(CPUMCPU, fRawEntered));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCPU, fRemEntered) != 1566/
{
    printf("error: offsetof(CPUMCPU, fRemEntered) should be 1566, not %u\n", offsetof(CPUMCPU, fRemEntered));
    g_cErrors++;
}

dtrace:::BEGIN
/sizeof(CPUMHOSTCTX) != 320/
{
    printf("error: sizeof(CPUMHOSTCTX) should be 320, not %u\n", sizeof(CPUMHOSTCTX));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, pXStateR3) != 296/
{
    printf("error: offsetof(CPUMHOSTCTX, pXStateR3) should be 296, not %u\n", offsetof(CPUMHOSTCTX, pXStateR3));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, pXStateR0) != 288/
{
    printf("error: offsetof(CPUMHOSTCTX, pXStateR0) should be 288, not %u\n", offsetof(CPUMHOSTCTX, pXStateR0));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, pXStateRC) != 284/
{
    printf("error: offsetof(CPUMHOSTCTX, pXStateRC) should be 284, not %u\n", offsetof(CPUMHOSTCTX, pXStateRC));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, rbx) != 0/
{
    printf("error: offsetof(CPUMHOSTCTX, rbx) should be 0, not %u\n", offsetof(CPUMHOSTCTX, rbx));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, rdi) != 8/
{
    printf("error: offsetof(CPUMHOSTCTX, rdi) should be 8, not %u\n", offsetof(CPUMHOSTCTX, rdi));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, rsi) != 16/
{
    printf("error: offsetof(CPUMHOSTCTX, rsi) should be 16, not %u\n", offsetof(CPUMHOSTCTX, rsi));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, rbp) != 24/
{
    printf("error: offsetof(CPUMHOSTCTX, rbp) should be 24, not %u\n", offsetof(CPUMHOSTCTX, rbp));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, rsp) != 32/
{
    printf("error: offsetof(CPUMHOSTCTX, rsp) should be 32, not %u\n", offsetof(CPUMHOSTCTX, rsp));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, r10) != 40/
{
    printf("error: offsetof(CPUMHOSTCTX, r10) should be 40, not %u\n", offsetof(CPUMHOSTCTX, r10));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, r11) != 48/
{
    printf("error: offsetof(CPUMHOSTCTX, r11) should be 48, not %u\n", offsetof(CPUMHOSTCTX, r11));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, r12) != 56/
{
    printf("error: offsetof(CPUMHOSTCTX, r12) should be 56, not %u\n", offsetof(CPUMHOSTCTX, r12));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, r13) != 64/
{
    printf("error: offsetof(CPUMHOSTCTX, r13) should be 64, not %u\n", offsetof(CPUMHOSTCTX, r13));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, r14) != 72/
{
    printf("error: offsetof(CPUMHOSTCTX, r14) should be 72, not %u\n", offsetof(CPUMHOSTCTX, r14));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, r15) != 80/
{
    printf("error: offsetof(CPUMHOSTCTX, r15) should be 80, not %u\n", offsetof(CPUMHOSTCTX, r15));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, rflags) != 88/
{
    printf("error: offsetof(CPUMHOSTCTX, rflags) should be 88, not %u\n", offsetof(CPUMHOSTCTX, rflags));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, ss) != 96/
{
    printf("error: offsetof(CPUMHOSTCTX, ss) should be 96, not %u\n", offsetof(CPUMHOSTCTX, ss));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, gs) != 100/
{
    printf("error: offsetof(CPUMHOSTCTX, gs) should be 100, not %u\n", offsetof(CPUMHOSTCTX, gs));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, fs) != 104/
{
    printf("error: offsetof(CPUMHOSTCTX, fs) should be 104, not %u\n", offsetof(CPUMHOSTCTX, fs));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, es) != 108/
{
    printf("error: offsetof(CPUMHOSTCTX, es) should be 108, not %u\n", offsetof(CPUMHOSTCTX, es));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, ds) != 112/
{
    printf("error: offsetof(CPUMHOSTCTX, ds) should be 112, not %u\n", offsetof(CPUMHOSTCTX, ds));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, cs) != 116/
{
    printf("error: offsetof(CPUMHOSTCTX, cs) should be 116, not %u\n", offsetof(CPUMHOSTCTX, cs));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, cr0) != 120/
{
    printf("error: offsetof(CPUMHOSTCTX, cr0) should be 120, not %u\n", offsetof(CPUMHOSTCTX, cr0));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, cr3) != 128/
{
    printf("error: offsetof(CPUMHOSTCTX, cr3) should be 128, not %u\n", offsetof(CPUMHOSTCTX, cr3));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, cr4) != 136/
{
    printf("error: offsetof(CPUMHOSTCTX, cr4) should be 136, not %u\n", offsetof(CPUMHOSTCTX, cr4));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, cr8) != 144/
{
    printf("error: offsetof(CPUMHOSTCTX, cr8) should be 144, not %u\n", offsetof(CPUMHOSTCTX, cr8));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, dr0) != 152/
{
    printf("error: offsetof(CPUMHOSTCTX, dr0) should be 152, not %u\n", offsetof(CPUMHOSTCTX, dr0));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, dr1) != 160/
{
    printf("error: offsetof(CPUMHOSTCTX, dr1) should be 160, not %u\n", offsetof(CPUMHOSTCTX, dr1));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, dr2) != 168/
{
    printf("error: offsetof(CPUMHOSTCTX, dr2) should be 168, not %u\n", offsetof(CPUMHOSTCTX, dr2));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, dr3) != 176/
{
    printf("error: offsetof(CPUMHOSTCTX, dr3) should be 176, not %u\n", offsetof(CPUMHOSTCTX, dr3));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, dr6) != 184/
{
    printf("error: offsetof(CPUMHOSTCTX, dr6) should be 184, not %u\n", offsetof(CPUMHOSTCTX, dr6));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, dr7) != 192/
{
    printf("error: offsetof(CPUMHOSTCTX, dr7) should be 192, not %u\n", offsetof(CPUMHOSTCTX, dr7));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, gdtr) != 200/
{
    printf("error: offsetof(CPUMHOSTCTX, gdtr) should be 200, not %u\n", offsetof(CPUMHOSTCTX, gdtr));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, idtr) != 212/
{
    printf("error: offsetof(CPUMHOSTCTX, idtr) should be 212, not %u\n", offsetof(CPUMHOSTCTX, idtr));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, ldtr) != 224/
{
    printf("error: offsetof(CPUMHOSTCTX, ldtr) should be 224, not %u\n", offsetof(CPUMHOSTCTX, ldtr));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, tr) != 228/
{
    printf("error: offsetof(CPUMHOSTCTX, tr) should be 228, not %u\n", offsetof(CPUMHOSTCTX, tr));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, SysEnter) != 232/
{
    printf("error: offsetof(CPUMHOSTCTX, SysEnter) should be 232, not %u\n", offsetof(CPUMHOSTCTX, SysEnter));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, FSbase) != 256/
{
    printf("error: offsetof(CPUMHOSTCTX, FSbase) should be 256, not %u\n", offsetof(CPUMHOSTCTX, FSbase));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, GSbase) != 264/
{
    printf("error: offsetof(CPUMHOSTCTX, GSbase) should be 264, not %u\n", offsetof(CPUMHOSTCTX, GSbase));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMHOSTCTX, efer) != 272/
{
    printf("error: offsetof(CPUMHOSTCTX, efer) should be 272, not %u\n", offsetof(CPUMHOSTCTX, efer));
    g_cErrors++;
}

dtrace:::BEGIN
/sizeof(CPUMCTX) != 1024/
{
    printf("error: sizeof(CPUMCTX) should be 1024, not %u\n", sizeof(CPUMCTX));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt) != 728/
{
    printf("error: offsetof(CPUMCTX, hwvirt) should be 728, not %u\n", offsetof(CPUMCTX, hwvirt));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.svm.uMsrHSavePa) != 728/
{
    printf("error: offsetof(CPUMCTX, hwvirt.svm.uMsrHSavePa) should be 728, not %u\n", offsetof(CPUMCTX, hwvirt.svm.uMsrHSavePa));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.svm.GCPhysVmcb) != 736/
{
    printf("error: offsetof(CPUMCTX, hwvirt.svm.GCPhysVmcb) should be 736, not %u\n", offsetof(CPUMCTX, hwvirt.svm.GCPhysVmcb));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.svm.pVmcbR0) != 744/
{
    printf("error: offsetof(CPUMCTX, hwvirt.svm.pVmcbR0) should be 744, not %u\n", offsetof(CPUMCTX, hwvirt.svm.pVmcbR0));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.svm.pVmcbR3) != 752/
{
    printf("error: offsetof(CPUMCTX, hwvirt.svm.pVmcbR3) should be 752, not %u\n", offsetof(CPUMCTX, hwvirt.svm.pVmcbR3));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.svm.HostState) != 760/
{
    printf("error: offsetof(CPUMCTX, hwvirt.svm.HostState) should be 760, not %u\n", offsetof(CPUMCTX, hwvirt.svm.HostState));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.svm.fGif) != 944/
{
    printf("error: offsetof(CPUMCTX, hwvirt.svm.fGif) should be 944, not %u\n", offsetof(CPUMCTX, hwvirt.svm.fGif));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.svm.cPauseFilter) != 946/
{
    printf("error: offsetof(CPUMCTX, hwvirt.svm.cPauseFilter) should be 946, not %u\n", offsetof(CPUMCTX, hwvirt.svm.cPauseFilter));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.svm.cPauseFilterThreshold) != 948/
{
    printf("error: offsetof(CPUMCTX, hwvirt.svm.cPauseFilterThreshold) should be 948, not %u\n", offsetof(CPUMCTX, hwvirt.svm.cPauseFilterThreshold));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.svm.fInterceptEvents) != 950/
{
    printf("error: offsetof(CPUMCTX, hwvirt.svm.fInterceptEvents) should be 950, not %u\n", offsetof(CPUMCTX, hwvirt.svm.fInterceptEvents));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.svm.pvMsrBitmapR0) != 952/
{
    printf("error: offsetof(CPUMCTX, hwvirt.svm.pvMsrBitmapR0) should be 952, not %u\n", offsetof(CPUMCTX, hwvirt.svm.pvMsrBitmapR0));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.svm.pvMsrBitmapR3) != 960/
{
    printf("error: offsetof(CPUMCTX, hwvirt.svm.pvMsrBitmapR3) should be 960, not %u\n", offsetof(CPUMCTX, hwvirt.svm.pvMsrBitmapR3));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.svm.pvIoBitmapR0) != 968/
{
    printf("error: offsetof(CPUMCTX, hwvirt.svm.pvIoBitmapR0) should be 968, not %u\n", offsetof(CPUMCTX, hwvirt.svm.pvIoBitmapR0));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.svm.pvIoBitmapR3) != 976/
{
    printf("error: offsetof(CPUMCTX, hwvirt.svm.pvIoBitmapR3) should be 976, not %u\n", offsetof(CPUMCTX, hwvirt.svm.pvIoBitmapR3));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.svm.HCPhysVmcb) != 984/
{
    printf("error: offsetof(CPUMCTX, hwvirt.svm.HCPhysVmcb) should be 984, not %u\n", offsetof(CPUMCTX, hwvirt.svm.HCPhysVmcb));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, hwvirt.fLocalForcedActions) != 992/
{
    printf("error: offsetof(CPUMCTX, hwvirt.fLocalForcedActions) should be 992, not %u\n", offsetof(CPUMCTX, hwvirt.fLocalForcedActions));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, pXStateR0) != 576/
{
    printf("error: offsetof(CPUMCTX, pXStateR0) should be 576, not %u\n", offsetof(CPUMCTX, pXStateR0));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, pXStateR3) != 584/
{
    printf("error: offsetof(CPUMCTX, pXStateR3) should be 584, not %u\n", offsetof(CPUMCTX, pXStateR3));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, pXStateRC) != 592/
{
    printf("error: offsetof(CPUMCTX, pXStateRC) should be 592, not %u\n", offsetof(CPUMCTX, pXStateRC));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, rdi) != 56/
{
    printf("error: offsetof(CPUMCTX, rdi) should be 56, not %u\n", offsetof(CPUMCTX, rdi));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, rsi) != 48/
{
    printf("error: offsetof(CPUMCTX, rsi) should be 48, not %u\n", offsetof(CPUMCTX, rsi));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, rbp) != 40/
{
    printf("error: offsetof(CPUMCTX, rbp) should be 40, not %u\n", offsetof(CPUMCTX, rbp));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, rax) != 0/
{
    printf("error: offsetof(CPUMCTX, rax) should be 0, not %u\n", offsetof(CPUMCTX, rax));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, rbx) != 24/
{
    printf("error: offsetof(CPUMCTX, rbx) should be 24, not %u\n", offsetof(CPUMCTX, rbx));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, rdx) != 16/
{
    printf("error: offsetof(CPUMCTX, rdx) should be 16, not %u\n", offsetof(CPUMCTX, rdx));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, rcx) != 8/
{
    printf("error: offsetof(CPUMCTX, rcx) should be 8, not %u\n", offsetof(CPUMCTX, rcx));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, rsp) != 32/
{
    printf("error: offsetof(CPUMCTX, rsp) should be 32, not %u\n", offsetof(CPUMCTX, rsp));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, es) != 128/
{
    printf("error: offsetof(CPUMCTX, es) should be 128, not %u\n", offsetof(CPUMCTX, es));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, cs) != 152/
{
    printf("error: offsetof(CPUMCTX, cs) should be 152, not %u\n", offsetof(CPUMCTX, cs));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, ss) != 176/
{
    printf("error: offsetof(CPUMCTX, ss) should be 176, not %u\n", offsetof(CPUMCTX, ss));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, ds) != 200/
{
    printf("error: offsetof(CPUMCTX, ds) should be 200, not %u\n", offsetof(CPUMCTX, ds));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, fs) != 224/
{
    printf("error: offsetof(CPUMCTX, fs) should be 224, not %u\n", offsetof(CPUMCTX, fs));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, gs) != 248/
{
    printf("error: offsetof(CPUMCTX, gs) should be 248, not %u\n", offsetof(CPUMCTX, gs));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, rflags) != 280/
{
    printf("error: offsetof(CPUMCTX, rflags) should be 280, not %u\n", offsetof(CPUMCTX, rflags));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, rip) != 272/
{
    printf("error: offsetof(CPUMCTX, rip) should be 272, not %u\n", offsetof(CPUMCTX, rip));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, r8) != 64/
{
    printf("error: offsetof(CPUMCTX, r8) should be 64, not %u\n", offsetof(CPUMCTX, r8));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, r9) != 72/
{
    printf("error: offsetof(CPUMCTX, r9) should be 72, not %u\n", offsetof(CPUMCTX, r9));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, r10) != 80/
{
    printf("error: offsetof(CPUMCTX, r10) should be 80, not %u\n", offsetof(CPUMCTX, r10));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, r11) != 88/
{
    printf("error: offsetof(CPUMCTX, r11) should be 88, not %u\n", offsetof(CPUMCTX, r11));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, r12) != 96/
{
    printf("error: offsetof(CPUMCTX, r12) should be 96, not %u\n", offsetof(CPUMCTX, r12));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, r13) != 104/
{
    printf("error: offsetof(CPUMCTX, r13) should be 104, not %u\n", offsetof(CPUMCTX, r13));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, r14) != 112/
{
    printf("error: offsetof(CPUMCTX, r14) should be 112, not %u\n", offsetof(CPUMCTX, r14));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, r15) != 120/
{
    printf("error: offsetof(CPUMCTX, r15) should be 120, not %u\n", offsetof(CPUMCTX, r15));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, cr0) != 288/
{
    printf("error: offsetof(CPUMCTX, cr0) should be 288, not %u\n", offsetof(CPUMCTX, cr0));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, cr2) != 296/
{
    printf("error: offsetof(CPUMCTX, cr2) should be 296, not %u\n", offsetof(CPUMCTX, cr2));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, cr3) != 304/
{
    printf("error: offsetof(CPUMCTX, cr3) should be 304, not %u\n", offsetof(CPUMCTX, cr3));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, cr4) != 312/
{
    printf("error: offsetof(CPUMCTX, cr4) should be 312, not %u\n", offsetof(CPUMCTX, cr4));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, dr) != 320/
{
    printf("error: offsetof(CPUMCTX, dr) should be 320, not %u\n", offsetof(CPUMCTX, dr));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, gdtr) != 390/
{
    printf("error: offsetof(CPUMCTX, gdtr) should be 390, not %u\n", offsetof(CPUMCTX, gdtr));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, idtr) != 406/
{
    printf("error: offsetof(CPUMCTX, idtr) should be 406, not %u\n", offsetof(CPUMCTX, idtr));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, ldtr) != 416/
{
    printf("error: offsetof(CPUMCTX, ldtr) should be 416, not %u\n", offsetof(CPUMCTX, ldtr));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, tr) != 440/
{
    printf("error: offsetof(CPUMCTX, tr) should be 440, not %u\n", offsetof(CPUMCTX, tr));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, SysEnter) != 464/
{
    printf("error: offsetof(CPUMCTX, SysEnter) should be 464, not %u\n", offsetof(CPUMCTX, SysEnter));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, msrEFER) != 488/
{
    printf("error: offsetof(CPUMCTX, msrEFER) should be 488, not %u\n", offsetof(CPUMCTX, msrEFER));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, msrSTAR) != 496/
{
    printf("error: offsetof(CPUMCTX, msrSTAR) should be 496, not %u\n", offsetof(CPUMCTX, msrSTAR));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, msrPAT) != 504/
{
    printf("error: offsetof(CPUMCTX, msrPAT) should be 504, not %u\n", offsetof(CPUMCTX, msrPAT));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, msrLSTAR) != 512/
{
    printf("error: offsetof(CPUMCTX, msrLSTAR) should be 512, not %u\n", offsetof(CPUMCTX, msrLSTAR));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, msrCSTAR) != 520/
{
    printf("error: offsetof(CPUMCTX, msrCSTAR) should be 520, not %u\n", offsetof(CPUMCTX, msrCSTAR));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, msrSFMASK) != 528/
{
    printf("error: offsetof(CPUMCTX, msrSFMASK) should be 528, not %u\n", offsetof(CPUMCTX, msrSFMASK));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, msrKERNELGSBASE) != 536/
{
    printf("error: offsetof(CPUMCTX, msrKERNELGSBASE) should be 536, not %u\n", offsetof(CPUMCTX, msrKERNELGSBASE));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, ldtr) != 416/
{
    printf("error: offsetof(CPUMCTX, ldtr) should be 416, not %u\n", offsetof(CPUMCTX, ldtr));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(CPUMCTX, tr) != 440/
{
    printf("error: offsetof(CPUMCTX, tr) should be 440, not %u\n", offsetof(CPUMCTX, tr));
    g_cErrors++;
}

dtrace:::BEGIN
/sizeof(CPUMCTXMSRS) != 512/
{
    printf("error: sizeof(CPUMCTXMSRS) should be 512, not %u\n", sizeof(CPUMCTXMSRS));
    g_cErrors++;
}

dtrace:::BEGIN
/sizeof(CPUMCTXCORE) != 288/
{
    printf("error: sizeof(CPUMCTXCORE) should be 288, not %u\n", sizeof(CPUMCTXCORE));
    g_cErrors++;
}

dtrace:::BEGIN
/sizeof(APIC) != 96/
{
    printf("error: sizeof(APIC) should be 96, not %u\n", sizeof(APIC));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(APIC, pApicDevR0) != 0/
{
    printf("error: offsetof(APIC, pApicDevR0) should be 0, not %u\n", offsetof(APIC, pApicDevR0));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(APIC, pApicDevR3) != 8/
{
    printf("error: offsetof(APIC, pApicDevR3) should be 8, not %u\n", offsetof(APIC, pApicDevR3));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(APIC, pApicDevRC) != 16/
{
    printf("error: offsetof(APIC, pApicDevRC) should be 16, not %u\n", offsetof(APIC, pApicDevRC));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(APIC, pvApicPibR0) != 48/
{
    printf("error: offsetof(APIC, pvApicPibR0) should be 48, not %u\n", offsetof(APIC, pvApicPibR0));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(APIC, pvApicPibR3) != 56/
{
    printf("error: offsetof(APIC, pvApicPibR3) should be 56, not %u\n", offsetof(APIC, pvApicPibR3));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(APIC, pvApicPibRC) != 64/
{
    printf("error: offsetof(APIC, pvApicPibRC) should be 64, not %u\n", offsetof(APIC, pvApicPibRC));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(APIC, cbApicPib) != 72/
{
    printf("error: offsetof(APIC, cbApicPib) should be 72, not %u\n", offsetof(APIC, cbApicPib));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(APIC, enmMaxMode) != 88/
{
    printf("error: offsetof(APIC, enmMaxMode) should be 88, not %u\n", offsetof(APIC, enmMaxMode));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(APICCPU, pvApicPageR0) != 24/
{
    printf("error: offsetof(APICCPU, pvApicPageR0) should be 24, not %u\n", offsetof(APICCPU, pvApicPageR0));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(APICCPU, pvApicPageR3) != 32/
{
    printf("error: offsetof(APICCPU, pvApicPageR3) should be 32, not %u\n", offsetof(APICCPU, pvApicPageR3));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(APICCPU, pvApicPageRC) != 40/
{
    printf("error: offsetof(APICCPU, pvApicPageRC) should be 40, not %u\n", offsetof(APICCPU, pvApicPageRC));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(APICCPU, pvApicPageRC) != 40/
{
    printf("error: offsetof(APICCPU, pvApicPageRC) should be 40, not %u\n", offsetof(APICCPU, pvApicPageRC));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(APICCPU, cbApicPage) != 48/
{
    printf("error: offsetof(APICCPU, cbApicPage) should be 48, not %u\n", offsetof(APICCPU, cbApicPage));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(APICCPU, pvApicPibR0) != 72/
{
    printf("error: offsetof(APICCPU, pvApicPibR0) should be 72, not %u\n", offsetof(APICCPU, pvApicPibR0));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(APICCPU, pvApicPibR3) != 80/
{
    printf("error: offsetof(APICCPU, pvApicPibR3) should be 80, not %u\n", offsetof(APICCPU, pvApicPibR3));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(APICCPU, pvApicPibRC) != 88/
{
    printf("error: offsetof(APICCPU, pvApicPibRC) should be 88, not %u\n", offsetof(APICCPU, pvApicPibRC));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(APICCPU, ApicPibLevel) != 96/
{
    printf("error: offsetof(APICCPU, ApicPibLevel) should be 96, not %u\n", offsetof(APICCPU, ApicPibLevel));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(APICCPU, pTimerR0) != 1256/
{
    printf("error: offsetof(APICCPU, pTimerR0) should be 1256, not %u\n", offsetof(APICCPU, pTimerR0));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(APICCPU, pTimerR3) != 1264/
{
    printf("error: offsetof(APICCPU, pTimerR3) should be 1264, not %u\n", offsetof(APICCPU, pTimerR3));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(APICCPU, pTimerRC) != 1272/
{
    printf("error: offsetof(APICCPU, pTimerRC) should be 1272, not %u\n", offsetof(APICCPU, pTimerRC));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(APICCPU, TimerCritSect) != 1280/
{
    printf("error: offsetof(APICCPU, TimerCritSect) should be 1280, not %u\n", offsetof(APICCPU, TimerCritSect));
    g_cErrors++;
}

dtrace:::BEGIN
/sizeof(VM) != 155648/
{
    printf("error: sizeof(VM) should be 155648, not %u\n", sizeof(VM));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, enmVMState) != 0/
{
    printf("error: offsetof(VM, enmVMState) should be 0, not %u\n", offsetof(VM, enmVMState));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, fGlobalForcedActions) != 4/
{
    printf("error: offsetof(VM, fGlobalForcedActions) should be 4, not %u\n", offsetof(VM, fGlobalForcedActions));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, paVMPagesR3) != 8/
{
    printf("error: offsetof(VM, paVMPagesR3) should be 8, not %u\n", offsetof(VM, paVMPagesR3));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, pSession) != 16/
{
    printf("error: offsetof(VM, pSession) should be 16, not %u\n", offsetof(VM, pSession));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, pUVM) != 24/
{
    printf("error: offsetof(VM, pUVM) should be 24, not %u\n", offsetof(VM, pUVM));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, pVMR3) != 32/
{
    printf("error: offsetof(VM, pVMR3) should be 32, not %u\n", offsetof(VM, pVMR3));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, pVMR0) != 40/
{
    printf("error: offsetof(VM, pVMR0) should be 40, not %u\n", offsetof(VM, pVMR0));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, pVMRC) != 48/
{
    printf("error: offsetof(VM, pVMRC) should be 48, not %u\n", offsetof(VM, pVMRC));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, hSelf) != 52/
{
    printf("error: offsetof(VM, hSelf) should be 52, not %u\n", offsetof(VM, hSelf));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, cCpus) != 56/
{
    printf("error: offsetof(VM, cCpus) should be 56, not %u\n", offsetof(VM, cCpus));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, uCpuExecutionCap) != 60/
{
    printf("error: offsetof(VM, uCpuExecutionCap) should be 60, not %u\n", offsetof(VM, uCpuExecutionCap));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, cbSelf) != 64/
{
    printf("error: offsetof(VM, cbSelf) should be 64, not %u\n", offsetof(VM, cbSelf));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, pfnVMMRCToHostAsm) != 72/
{
    printf("error: offsetof(VM, pfnVMMRCToHostAsm) should be 72, not %u\n", offsetof(VM, pfnVMMRCToHostAsm));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, pfnVMMRCToHostAsmNoReturn) != 76/
{
    printf("error: offsetof(VM, pfnVMMRCToHostAsmNoReturn) should be 76, not %u\n", offsetof(VM, pfnVMMRCToHostAsmNoReturn));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, fRecompileUser) != 80/
{
    printf("error: offsetof(VM, fRecompileUser) should be 80, not %u\n", offsetof(VM, fRecompileUser));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, fRecompileSupervisor) != 81/
{
    printf("error: offsetof(VM, fRecompileSupervisor) should be 81, not %u\n", offsetof(VM, fRecompileSupervisor));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, fPATMEnabled) != 83/
{
    printf("error: offsetof(VM, fPATMEnabled) should be 83, not %u\n", offsetof(VM, fPATMEnabled));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, fCSAMEnabled) != 84/
{
    printf("error: offsetof(VM, fCSAMEnabled) should be 84, not %u\n", offsetof(VM, fCSAMEnabled));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, fHMEnabled) != 85/
{
    printf("error: offsetof(VM, fHMEnabled) should be 85, not %u\n", offsetof(VM, fHMEnabled));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, fHMEnabledFixed) != 86/
{
    printf("error: offsetof(VM, fHMEnabledFixed) should be 86, not %u\n", offsetof(VM, fHMEnabledFixed));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, fFaultTolerantMaster) != 88/
{
    printf("error: offsetof(VM, fFaultTolerantMaster) should be 88, not %u\n", offsetof(VM, fFaultTolerantMaster));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, fUseLargePages) != 89/
{
    printf("error: offsetof(VM, fUseLargePages) should be 89, not %u\n", offsetof(VM, fUseLargePages));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, hTraceBufRC) != 92/
{
    printf("error: offsetof(VM, hTraceBufRC) should be 92, not %u\n", offsetof(VM, hTraceBufRC));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, hTraceBufR3) != 96/
{
    printf("error: offsetof(VM, hTraceBufR3) should be 96, not %u\n", offsetof(VM, hTraceBufR3));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, hTraceBufR0) != 104/
{
    printf("error: offsetof(VM, hTraceBufR0) should be 104, not %u\n", offsetof(VM, hTraceBufR0));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, StatTotalQemuToGC) != 112/
{
    printf("error: offsetof(VM, StatTotalQemuToGC) should be 112, not %u\n", offsetof(VM, StatTotalQemuToGC));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, StatTotalGCToQemu) != 152/
{
    printf("error: offsetof(VM, StatTotalGCToQemu) should be 152, not %u\n", offsetof(VM, StatTotalGCToQemu));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, StatTotalInGC) != 192/
{
    printf("error: offsetof(VM, StatTotalInGC) should be 192, not %u\n", offsetof(VM, StatTotalInGC));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, StatTotalInQemu) != 232/
{
    printf("error: offsetof(VM, StatTotalInQemu) should be 232, not %u\n", offsetof(VM, StatTotalInQemu));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, StatSwitcherToGC) != 272/
{
    printf("error: offsetof(VM, StatSwitcherToGC) should be 272, not %u\n", offsetof(VM, StatSwitcherToGC));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, StatSwitcherToHC) != 312/
{
    printf("error: offsetof(VM, StatSwitcherToHC) should be 312, not %u\n", offsetof(VM, StatSwitcherToHC));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, StatSwitcherSaveRegs) != 352/
{
    printf("error: offsetof(VM, StatSwitcherSaveRegs) should be 352, not %u\n", offsetof(VM, StatSwitcherSaveRegs));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, StatSwitcherSysEnter) != 392/
{
    printf("error: offsetof(VM, StatSwitcherSysEnter) should be 392, not %u\n", offsetof(VM, StatSwitcherSysEnter));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, StatSwitcherDebug) != 432/
{
    printf("error: offsetof(VM, StatSwitcherDebug) should be 432, not %u\n", offsetof(VM, StatSwitcherDebug));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, StatSwitcherCR0) != 472/
{
    printf("error: offsetof(VM, StatSwitcherCR0) should be 472, not %u\n", offsetof(VM, StatSwitcherCR0));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, StatSwitcherCR4) != 512/
{
    printf("error: offsetof(VM, StatSwitcherCR4) should be 512, not %u\n", offsetof(VM, StatSwitcherCR4));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, StatSwitcherJmpCR3) != 552/
{
    printf("error: offsetof(VM, StatSwitcherJmpCR3) should be 552, not %u\n", offsetof(VM, StatSwitcherJmpCR3));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, StatSwitcherRstrRegs) != 592/
{
    printf("error: offsetof(VM, StatSwitcherRstrRegs) should be 592, not %u\n", offsetof(VM, StatSwitcherRstrRegs));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, StatSwitcherLgdt) != 632/
{
    printf("error: offsetof(VM, StatSwitcherLgdt) should be 632, not %u\n", offsetof(VM, StatSwitcherLgdt));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, StatSwitcherLidt) != 672/
{
    printf("error: offsetof(VM, StatSwitcherLidt) should be 672, not %u\n", offsetof(VM, StatSwitcherLidt));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, StatSwitcherLldt) != 712/
{
    printf("error: offsetof(VM, StatSwitcherLldt) should be 712, not %u\n", offsetof(VM, StatSwitcherLldt));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, StatSwitcherTSS) != 752/
{
    printf("error: offsetof(VM, StatSwitcherTSS) should be 752, not %u\n", offsetof(VM, StatSwitcherTSS));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, cpum) != 832/
{
    printf("error: offsetof(VM, cpum) should be 832, not %u\n", offsetof(VM, cpum));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, vmm) != 2368/
{
    printf("error: offsetof(VM, vmm) should be 2368, not %u\n", offsetof(VM, vmm));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, pgm) != 3968/
{
    printf("error: offsetof(VM, pgm) should be 3968, not %u\n", offsetof(VM, pgm));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, hm) != 18240/
{
    printf("error: offsetof(VM, hm) should be 18240, not %u\n", offsetof(VM, hm));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, trpm) != 23680/
{
    printf("error: offsetof(VM, trpm) should be 23680, not %u\n", offsetof(VM, trpm));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, selm) != 28928/
{
    printf("error: offsetof(VM, selm) should be 28928, not %u\n", offsetof(VM, selm));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, mm) != 29696/
{
    printf("error: offsetof(VM, mm) should be 29696, not %u\n", offsetof(VM, mm));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, pdm) != 29888/
{
    printf("error: offsetof(VM, pdm) should be 29888, not %u\n", offsetof(VM, pdm));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, iom) != 31808/
{
    printf("error: offsetof(VM, iom) should be 31808, not %u\n", offsetof(VM, iom));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, patm) != 38464/
{
    printf("error: offsetof(VM, patm) should be 38464, not %u\n", offsetof(VM, patm));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, csam) != 39232/
{
    printf("error: offsetof(VM, csam) should be 39232, not %u\n", offsetof(VM, csam));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, em) != 32704/
{
    printf("error: offsetof(VM, em) should be 32704, not %u\n", offsetof(VM, em));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, tm) != 32960/
{
    printf("error: offsetof(VM, tm) should be 32960, not %u\n", offsetof(VM, tm));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, dbgf) != 35456/
{
    printf("error: offsetof(VM, dbgf) should be 35456, not %u\n", offsetof(VM, dbgf));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, ssm) != 37824/
{
    printf("error: offsetof(VM, ssm) should be 37824, not %u\n", offsetof(VM, ssm));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, ftm) != 37952/
{
    printf("error: offsetof(VM, ftm) should be 37952, not %u\n", offsetof(VM, ftm));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, rem) != 40320/
{
    printf("error: offsetof(VM, rem) should be 40320, not %u\n", offsetof(VM, rem));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, gim) != 110208/
{
    printf("error: offsetof(VM, gim) should be 110208, not %u\n", offsetof(VM, gim));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, vm) != 110784/
{
    printf("error: offsetof(VM, vm) should be 110784, not %u\n", offsetof(VM, vm));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, cfgm) != 110808/
{
    printf("error: offsetof(VM, cfgm) should be 110808, not %u\n", offsetof(VM, cfgm));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, apic) != 110656/
{
    printf("error: offsetof(VM, apic) should be 110656, not %u\n", offsetof(VM, apic));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VM, aCpus) != 114688/
{
    printf("error: offsetof(VM, aCpus) should be 114688, not %u\n", offsetof(VM, aCpus));
    g_cErrors++;
}

dtrace:::BEGIN
/sizeof(VMCPU) != 40960/
{
    printf("error: sizeof(VMCPU) should be 40960, not %u\n", sizeof(VMCPU));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, fLocalForcedActions) != 0/
{
    printf("error: offsetof(VMCPU, fLocalForcedActions) should be 0, not %u\n", offsetof(VMCPU, fLocalForcedActions));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, enmState) != 4/
{
    printf("error: offsetof(VMCPU, enmState) should be 4, not %u\n", offsetof(VMCPU, enmState));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, pUVCpu) != 8/
{
    printf("error: offsetof(VMCPU, pUVCpu) should be 8, not %u\n", offsetof(VMCPU, pUVCpu));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, pVMR3) != 16/
{
    printf("error: offsetof(VMCPU, pVMR3) should be 16, not %u\n", offsetof(VMCPU, pVMR3));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, pVMR0) != 24/
{
    printf("error: offsetof(VMCPU, pVMR0) should be 24, not %u\n", offsetof(VMCPU, pVMR0));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, pVMRC) != 32/
{
    printf("error: offsetof(VMCPU, pVMRC) should be 32, not %u\n", offsetof(VMCPU, pVMRC));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, idCpu) != 36/
{
    printf("error: offsetof(VMCPU, idCpu) should be 36, not %u\n", offsetof(VMCPU, idCpu));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, hNativeThread) != 40/
{
    printf("error: offsetof(VMCPU, hNativeThread) should be 40, not %u\n", offsetof(VMCPU, hNativeThread));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, hNativeThreadR0) != 48/
{
    printf("error: offsetof(VMCPU, hNativeThreadR0) should be 48, not %u\n", offsetof(VMCPU, hNativeThreadR0));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, idHostCpu) != 56/
{
    printf("error: offsetof(VMCPU, idHostCpu) should be 56, not %u\n", offsetof(VMCPU, idHostCpu));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, fTraceGroups) != 30336/
{
    printf("error: offsetof(VMCPU, fTraceGroups) should be 30336, not %u\n", offsetof(VMCPU, fTraceGroups));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, uAdHoc) != 30340/
{
    printf("error: offsetof(VMCPU, uAdHoc) should be 30340, not %u\n", offsetof(VMCPU, uAdHoc));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, aStatAdHoc) != 30344/
{
    printf("error: offsetof(VMCPU, aStatAdHoc) should be 30344, not %u\n", offsetof(VMCPU, aStatAdHoc));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, hm) != 18560/
{
    printf("error: offsetof(VMCPU, hm) should be 18560, not %u\n", offsetof(VMCPU, hm));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, em) != 24384/
{
    printf("error: offsetof(VMCPU, em) should be 24384, not %u\n", offsetof(VMCPU, em));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, iem) != 64/
{
    printf("error: offsetof(VMCPU, iem) should be 64, not %u\n", offsetof(VMCPU, iem));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, trpm) != 25792/
{
    printf("error: offsetof(VMCPU, trpm) should be 25792, not %u\n", offsetof(VMCPU, trpm));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, tm) != 25920/
{
    printf("error: offsetof(VMCPU, tm) should be 25920, not %u\n", offsetof(VMCPU, tm));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, vmm) != 26304/
{
    printf("error: offsetof(VMCPU, vmm) should be 26304, not %u\n", offsetof(VMCPU, vmm));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, pdm) != 27008/
{
    printf("error: offsetof(VMCPU, pdm) should be 27008, not %u\n", offsetof(VMCPU, pdm));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, iom) != 27264/
{
    printf("error: offsetof(VMCPU, iom) should be 27264, not %u\n", offsetof(VMCPU, iom));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, dbgf) != 27776/
{
    printf("error: offsetof(VMCPU, dbgf) should be 27776, not %u\n", offsetof(VMCPU, dbgf));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, gim) != 28032/
{
    printf("error: offsetof(VMCPU, gim) should be 28032, not %u\n", offsetof(VMCPU, gim));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, apic) != 28544/
{
    printf("error: offsetof(VMCPU, apic) should be 28544, not %u\n", offsetof(VMCPU, apic));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, pgm) != 32768/
{
    printf("error: offsetof(VMCPU, pgm) should be 32768, not %u\n", offsetof(VMCPU, pgm));
    g_cErrors++;
}

dtrace:::BEGIN
/offsetof(VMCPU, cpum) != 36864/
{
    printf("error: offsetof(VMCPU, cpum) should be 36864, not %u\n", offsetof(VMCPU, cpum));
    g_cErrors++;
}

dtrace:::BEGIN
/g_cErrors != 0/
{
    printf("%u errors!\n", g_cErrors);
    exit(1);
}

dtrace:::BEGIN
{
    printf("Success!\n");
    exit(0);
}

