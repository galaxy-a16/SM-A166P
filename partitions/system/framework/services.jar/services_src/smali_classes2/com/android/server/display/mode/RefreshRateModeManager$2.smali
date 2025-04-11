.class public Lcom/android/server/display/mode/RefreshRateModeManager$2;
.super Landroid/content/BroadcastReceiver;
.source "RefreshRateModeManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/mode/RefreshRateModeManager;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/RefreshRateModeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/mode/RefreshRateModeManager$2;->this$0:Lcom/android/server/display/mode/RefreshRateModeManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo p1, "plugged"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object p1, p0, Lcom/android/server/display/mode/RefreshRateModeManager$2;->this$0:Lcom/android/server/display/mode/RefreshRateModeManager;

    invoke-static {p1}, Lcom/android/server/display/mode/RefreshRateModeManager;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/RefreshRateModeManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/android/server/display/mode/RefreshRateModeManager$2;->this$0:Lcom/android/server/display/mode/RefreshRateModeManager;

    invoke-virtual {p2}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/android/server/display/mode/RefreshRateController;->compareAndSetIsWirelessCharging(Z)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateModeManager$2;->this$0:Lcom/android/server/display/mode/RefreshRateModeManager;

    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->onBrightnessChangedLocked()V

    :cond_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
