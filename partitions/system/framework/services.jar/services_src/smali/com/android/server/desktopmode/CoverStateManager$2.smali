.class public Lcom/android/server/desktopmode/CoverStateManager$2;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "CoverStateManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/CoverStateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/CoverStateManager;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/android/server/desktopmode/CoverStateManager$2;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDockStateChanged(Lcom/android/server/desktopmode/State;)V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$2;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$fgetmLock(Lcom/android/server/desktopmode/CoverStateManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager$2;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$fgetmDesktopDockConnected(Lcom/android/server/desktopmode/CoverStateManager;)Z

    move-result v1

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager$2;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    move-result p1

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$fputmDesktopDockConnected(Lcom/android/server/desktopmode/CoverStateManager;Z)V

    .line 100
    iget-object p0, p0, Lcom/android/server/desktopmode/CoverStateManager$2;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$mupdateCoverSupportStateLocked(Lcom/android/server/desktopmode/CoverStateManager;)Z

    .line 102
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

.method public onDualModeStartLoadingScreen(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onDualModeStopLoadingScreen(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onExternalDisplayConnectionChanged(Lcom/android/server/desktopmode/State;)V
    .locals 0

    .line 90
    iget-object p1, p0, Lcom/android/server/desktopmode/CoverStateManager$2;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$fgetmLock(Lcom/android/server/desktopmode/CoverStateManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 91
    :try_start_0
    iget-object p0, p0, Lcom/android/server/desktopmode/CoverStateManager$2;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$mupdateCoverSupportStateLocked(Lcom/android/server/desktopmode/CoverStateManager;)Z

    .line 92
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
