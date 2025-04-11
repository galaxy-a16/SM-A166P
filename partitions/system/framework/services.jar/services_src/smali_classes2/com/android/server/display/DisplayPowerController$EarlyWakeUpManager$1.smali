.class public Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$1;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;)V
    .locals 0

    .line 5604
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$1;->this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 5607
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$1;->this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->-$$Nest$fgetmEarlyWakeUpLock(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5610
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$1;->this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->-$$Nest$fputmEarlyLightSensorReadyLocked(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;Z)V

    .line 5611
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$1;->this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->-$$Nest$mupdateSuspendBlockerLocked(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;)V

    .line 5612
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
