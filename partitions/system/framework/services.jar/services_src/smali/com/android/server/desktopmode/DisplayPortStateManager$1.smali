.class public Lcom/android/server/desktopmode/DisplayPortStateManager$1;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "DisplayPortStateManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/DisplayPortStateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDualModeSetDesktopMode(Lcom/android/server/desktopmode/State;Z)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$msetDualModeEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)V

    :cond_0
    return-void
.end method

.method public onDualModeStopLoadingScreen(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$msetDualModeEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)V

    :cond_0
    return-void
.end method

.method public onExternalDisplayConnectionChanged(Lcom/android/server/desktopmode/State;)V
    .locals 2

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isHdmiConnected()Z

    move-result p1

    iget-object v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$fgetmLock(Lcom/android/server/desktopmode/DisplayPortStateManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$fgetmHdmiDisplayConnected(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v1

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$fputmHdmiDisplayConnected(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)V

    iget-object p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$fgetmHdmiDisplayConnected(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$fgetmDualModeEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$mgetSettingState(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$msetDisplayPortStateLocked(Lcom/android/server/desktopmode/DisplayPortStateManager;ZZ)V

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

.method public onSetDesktopMode(Lcom/android/server/desktopmode/State;Z)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$msetStandaloneModeEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)V

    :cond_0
    return-void
.end method

.method public onStopLoadingScreen(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$msetStandaloneModeEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)V

    :cond_0
    return-void
.end method

.method public onUserChanged(Lcom/android/server/desktopmode/State;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$fgetmLock(Lcom/android/server/desktopmode/DisplayPortStateManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$misHdmiAutoEnterEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$fputmHdmiAutoEnterEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$smisDualModeEnabled(Lcom/android/server/desktopmode/State;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$fputmDualModeEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$smisStandaloneModeEnabled(Lcom/android/server/desktopmode/State;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$fputmStandaloneModeEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$misExternalDisplayModeDualEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$fputmExternalDisplayModeDual(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isHdmiConnected()Z

    move-result p1

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$fputmHdmiDisplayConnected(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)V

    iget-object p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$misHighResolutionsForExternalEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$mgetSettingState(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$msetDisplayPortStateLocked(Lcom/android/server/desktopmode/DisplayPortStateManager;ZZ)V

    :cond_0
    iget-object p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$misHighResolutionsForExternalEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v1

    invoke-static {p1, v1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$fputmHighResolutionsForExternalEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)V

    iget-object p0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$fgetmHighResolutionsForExternalEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$msetHighResolutionsForExternalEnabledLocked(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
