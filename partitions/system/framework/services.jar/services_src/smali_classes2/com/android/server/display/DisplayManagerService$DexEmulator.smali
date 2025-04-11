.class public final Lcom/android/server/display/DisplayManagerService$DexEmulator;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"


# instance fields
.field public mDualOverlayEnabled:Z

.field public mDualSwitchEnabled:Z

.field public mSystemReady:Z

.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public static synthetic $r8$lambda$Hgd1uAgjkf9pdRXk-fDqkUPPKS4(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->lambda$updateDualOverlayStateLocked$1(Landroid/content/ContentResolver;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IdZ-u9Fy6ype_gd902hJuVv1dio(Lcom/android/server/display/DisplayManagerService$DexEmulator;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->lambda$dumpInternal$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wYz8U2ZjQLmhOH8Vs_eEBkW4Tsg(Lcom/android/server/display/DisplayManagerService$DexEmulator;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->lambda$onSystemReadyLocked$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmDualSwitchEnabled(Lcom/android/server/display/DisplayManagerService$DexEmulator;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualSwitchEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdumpInternal(Lcom/android/server/display/DisplayManagerService$DexEmulator;Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->dumpInternal(Ljava/io/PrintWriter;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monLogicalDisplayAddedLocked(Lcom/android/server/display/DisplayManagerService$DexEmulator;Lcom/android/server/display/LogicalDisplay;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->onLogicalDisplayAddedLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monSystemReadyLocked(Lcom/android/server/display/DisplayManagerService$DexEmulator;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->onSystemReadyLocked()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0

    .line 4548
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 4555
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualSwitchEnabled:Z

    .line 4556
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualOverlayEnabled:Z

    .line 4557
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mSystemReady:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$DexEmulator-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$DexEmulator;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    return-void
.end method

.method private synthetic lambda$dumpInternal$2(Ljava/lang/String;)V
    .locals 1

    .line 4669
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 4670
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$onSystemReadyLocked$0()V
    .locals 1

    .line 4562
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 4563
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->initDualOverlayStateLocked()V

    .line 4564
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic lambda$updateDualOverlayStateLocked$1(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "overlay_display_devices"

    .line 4635
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public final dumpInternal(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    .line 4646
    array-length v1, p2

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto/16 :goto_4

    .line 4649
    :cond_0
    aget-object p2, p2, v0

    const-string v1, "dual-switch"

    .line 4650
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "dual-overlay"

    .line 4651
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v1, :cond_2

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    return v0

    .line 4653
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v4

    monitor-enter v4

    .line 4654
    :try_start_0
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v5}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayDeviceRepo(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayDeviceRepository;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/display/DisplayDeviceRepository;->getDexDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v5

    if-nez v5, :cond_3

    .line 4655
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[cmd desktopmode on] before enable "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4656
    monitor-exit v4

    return v2

    :cond_3
    if-eqz v1, :cond_5

    .line 4659
    iget-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualSwitchEnabled:Z

    if-nez p1, :cond_4

    move p1, v2

    goto :goto_1

    :cond_4
    move p1, v0

    :goto_1
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualSwitchEnabled:Z

    .line 4660
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->updateDualSwitchStateLocked()V

    .line 4661
    iget-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualOverlayEnabled:Z

    if-eqz p1, :cond_7

    .line 4662
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->updateDualOverlayStateLocked()V

    goto :goto_3

    :cond_5
    if-eqz v3, :cond_7

    .line 4665
    iget-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualOverlayEnabled:Z

    if-nez p1, :cond_6

    move p1, v2

    goto :goto_2

    :cond_6
    move p1, v0

    :goto_2
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualOverlayEnabled:Z

    .line 4666
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->updateDualOverlayStateLocked()V

    .line 4668
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1, v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mscheduleTraversalLocked(Lcom/android/server/display/DisplayManagerService;Z)V

    .line 4669
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmUiHandler(Lcom/android/server/display/DisplayManagerService;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/display/DisplayManagerService$DexEmulator$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lcom/android/server/display/DisplayManagerService$DexEmulator$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/DisplayManagerService$DexEmulator;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4671
    monitor-exit v4

    return v2

    :catchall_0
    move-exception p0

    .line 4672
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_8
    :goto_4
    return v0
.end method

.method public final hasDualOverlaySettingsLocked()Z
    .locals 2

    .line 4614
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mSystemReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4617
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "overlay_display_devices"

    .line 4618
    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "dex#1080x2220/320#2"

    .line 4619
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dex#1920x1080/320#0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final initDualOverlayStateLocked()V
    .locals 2

    .line 4623
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualOverlayEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->hasDualOverlaySettingsLocked()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 4624
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->updateDualOverlayStateLocked()V

    :cond_0
    return-void
.end method

.method public final isExternalLogicalDisplayForDexLocked(Landroid/view/DisplayInfo;)Z
    .locals 1

    .line 4608
    iget p0, p1, Landroid/view/DisplayInfo;->type:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    iget p0, p1, Landroid/view/DisplayInfo;->flags:I

    const/high16 p1, 0x8000000

    and-int/2addr p1, p0

    if-nez p1, :cond_1

    const/high16 p1, 0x4000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final onLogicalDisplayAddedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .locals 0

    .line 4598
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object p1

    .line 4599
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->isExternalLogicalDisplayForDexLocked(Landroid/view/DisplayInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 4601
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualOverlayEnabled:Z

    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualSwitchEnabled:Z

    .line 4602
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->updateDualSwitchStateLocked()V

    .line 4603
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->updateDualOverlayStateLocked()V

    :cond_0
    return-void
.end method

.method public final onSystemReadyLocked()V
    .locals 2

    const/4 v0, 0x1

    .line 4560
    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mSystemReady:Z

    .line 4561
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/DisplayManagerService$DexEmulator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayManagerService$DexEmulator$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayManagerService$DexEmulator;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateDualOverlayStateLocked()V
    .locals 3

    .line 4629
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mSystemReady:Z

    if-nez v0, :cond_0

    return-void

    .line 4632
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4633
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualOverlayEnabled:Z

    if-eqz v1, :cond_2

    .line 4634
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualSwitchEnabled:Z

    if-eqz v1, :cond_1

    const-string v1, "dex#1080x2220/320#2"

    goto :goto_0

    :cond_1
    const-string v1, "dex#1920x1080/320#0"

    goto :goto_0

    :cond_2
    const-string v1, ""

    .line 4635
    :goto_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    move-result-object p0

    new-instance v2, Lcom/android/server/display/DisplayManagerService$DexEmulator$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1}, Lcom/android/server/display/DisplayManagerService$DexEmulator$$ExternalSyntheticLambda0;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateDualSwitchStateLocked()V
    .locals 1

    .line 4639
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplayMapper;->getDexLogicalDisplayLocked()Lcom/android/server/display/LogicalDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4641
    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualSwitchEnabled:Z

    iput-boolean p0, v0, Lcom/android/server/display/LogicalDisplay;->mDualSwitchApplied:Z

    :cond_0
    return-void
.end method
