.class public Lcom/android/server/display/mode/RefreshRateModeManager$1;
.super Ljava/lang/Object;
.source "RefreshRateModeManager.java"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/mode/RefreshRateModeManager;


# direct methods
.method public static synthetic $r8$lambda$LsnHUjh_12_1NmkoW4-j7eIajIg(Lcom/android/server/display/mode/RefreshRateModeManager$1;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/mode/RefreshRateModeManager$1;->lambda$onFinish$0(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/mode/RefreshRateModeManager;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/android/server/display/mode/RefreshRateModeManager$1;->this$0:Lcom/android/server/display/mode/RefreshRateModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onFinish$0(Z)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateModeManager$1;->this$0:Lcom/android/server/display/mode/RefreshRateModeManager;

    invoke-static {v0}, Lcom/android/server/display/mode/RefreshRateModeManager;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/RefreshRateModeManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 162
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateModeManager$1;->this$0:Lcom/android/server/display/mode/RefreshRateModeManager;

    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/RefreshRateController;->onDisplayStateChangeLocked(Z)V

    .line 163
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public onFinish(III)V
    .locals 1

    const/4 p2, 0x2

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    if-eq p3, p2, :cond_0

    return-void

    :cond_0
    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 150
    :goto_0
    iget-object p1, p0, Lcom/android/server/display/mode/RefreshRateModeManager$1;->this$0:Lcom/android/server/display/mode/RefreshRateModeManager;

    invoke-virtual {p1}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/server/display/mode/RefreshRateController;->getPowerModeOnByDisplayType(I)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 152
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-ne v0, p1, :cond_2

    return-void

    .line 156
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DisplayStateListener#onFinish, isPowerModeOn="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", displayType="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RefreshRateModeManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object p1, p0, Lcom/android/server/display/mode/RefreshRateModeManager$1;->this$0:Lcom/android/server/display/mode/RefreshRateModeManager;

    invoke-virtual {p1}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    move-result-object p1

    invoke-virtual {p1, p3, v0}, Lcom/android/server/display/mode/RefreshRateController;->setPowerModeOnByDisplayType(IZ)V

    .line 160
    iget-object p1, p0, Lcom/android/server/display/mode/RefreshRateModeManager$1;->this$0:Lcom/android/server/display/mode/RefreshRateModeManager;

    invoke-static {p1}, Lcom/android/server/display/mode/RefreshRateModeManager;->-$$Nest$fgetmHandler(Lcom/android/server/display/mode/RefreshRateModeManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/display/mode/RefreshRateModeManager$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v0}, Lcom/android/server/display/mode/RefreshRateModeManager$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/mode/RefreshRateModeManager$1;Z)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
