.class public Lcom/android/server/desktopmode/HardwareManager$5;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "HardwareManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/HardwareManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/HardwareManager;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayDisconnectionRequested(I)V
    .locals 7

    .line 249
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$fgetmLock(Lcom/android/server/desktopmode/HardwareManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 250
    :try_start_0
    new-instance v1, Landroid/util/IntArray;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/IntArray;-><init>(I)V

    .line 251
    iget-object v2, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$fgetmDisplays(Lcom/android/server/desktopmode/HardwareManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    .line 252
    iget-object v5, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {v5}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$fgetmDisplays(Lcom/android/server/desktopmode/HardwareManager;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/desktopmode/DisplayInfo;

    .line 253
    invoke-virtual {v5}, Lcom/android/server/desktopmode/DisplayInfo;->getType()I

    move-result v6

    if-ne v6, p1, :cond_0

    .line 254
    invoke-virtual {v5}, Lcom/android/server/desktopmode/DisplayInfo;->getDisplayId()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/util/IntArray;->add(I)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 257
    :cond_1
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result p1

    move v2, v3

    :goto_1
    if-ge v2, p1, :cond_2

    .line 258
    iget-object v4, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-virtual {v1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v5

    invoke-static {v4, v3, v5}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$mupdateExternalDisplayStatus(Lcom/android/server/desktopmode/HardwareManager;ZI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 260
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onDualModeStartLoadingScreen(Z)V
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$msetLowRefreshRate(Lcom/android/server/desktopmode/HardwareManager;Z)V

    return-void
.end method

.method public onDualModeStopLoadingScreen(Z)V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$fgetmLock(Lcom/android/server/desktopmode/HardwareManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 240
    :try_start_0
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$fgetmIsExternalDisplayConnected(Lcom/android/server/desktopmode/HardwareManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 242
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/HardwareManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/HardwareManager;->logConnectedAccessoryInformationLocked(Lcom/android/server/desktopmode/State;)V

    .line 244
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onStartLoadingScreen(Z)V
    .locals 1

    .line 222
    iget-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$fgetmPowerManagerInternal(Lcom/android/server/desktopmode/HardwareManager;)Landroid/os/PowerManagerInternal;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/PowerManagerInternal;->setGoToSleepPrevention(Z)V

    .line 223
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$fgetmWindowManager(Lcom/android/server/desktopmode/HardwareManager;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->setEventDispatching(Z)V

    return-void
.end method

.method public onStopLoadingScreen(Z)V
    .locals 1

    .line 228
    iget-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$fgetmPowerManagerInternal(Lcom/android/server/desktopmode/HardwareManager;)Landroid/os/PowerManagerInternal;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/PowerManagerInternal;->setGoToSleepPrevention(Z)V

    .line 229
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$fgetmWindowManager(Lcom/android/server/desktopmode/HardwareManager;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->setEventDispatching(Z)V

    return-void
.end method
