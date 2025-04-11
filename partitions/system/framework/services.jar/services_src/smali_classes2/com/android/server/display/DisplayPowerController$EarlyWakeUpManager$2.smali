.class public Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$2;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

.field public final synthetic val$enable:Z


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$2;->this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    iput-boolean p2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$2;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$2;->val$enable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$2;->this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    iget-object v1, v1, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmBlanker(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayBlanker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$2;->this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmDisplayId(Lcom/android/server/display/DisplayPowerController;)I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/android/server/display/DisplayBlanker;->setDisplayStateLimitForEarlyWakeUp(II)V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$2;->this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->-$$Nest$fgetmEarlyWakeUpLock(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$2;->this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->-$$Nest$fputmEarlyDisplayReadyLocked(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;Z)V

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$2;->this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->-$$Nest$mupdateSuspendBlockerLocked(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
