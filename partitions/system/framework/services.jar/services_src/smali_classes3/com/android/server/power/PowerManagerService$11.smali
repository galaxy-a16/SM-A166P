.class public Lcom/android/server/power/PowerManagerService$11;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .line 10860
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 10863
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10864
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLastRequestedLimitationOfBrightness(Lcom/android/server/power/PowerManagerService;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmTargetBrightnessForLimit(Lcom/android/server/power/PowerManagerService;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 10865
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmMasterBrightnessLimitRunning(Lcom/android/server/power/PowerManagerService;Z)V

    const-string p0, "PowerManagerService"

    const-string v1, "[api] BrightnessLimitRunnable done"

    .line 10866
    invoke-static {p0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10867
    monitor-exit v0

    return-void

    .line 10869
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLastRequestedLimitationOfBrightness(Lcom/android/server/power/PowerManagerService;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLastRequestedLimitationOfBrightness(Lcom/android/server/power/PowerManagerService;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmTargetBrightnessForLimit(Lcom/android/server/power/PowerManagerService;)I

    move-result v4

    const/4 v5, -0x1

    if-le v3, v4, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmLastRequestedLimitationOfBrightness(Lcom/android/server/power/PowerManagerService;I)V

    .line 10870
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLastRequestedLimitationOfBrightness(Lcom/android/server/power/PowerManagerService;)I

    move-result v2

    invoke-virtual {v1, v5, v2}, Lcom/android/server/power/PowerManagerService;->updateMasterBrightnessLimitLocked(II)V

    .line 10871
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/power/PowerManagerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmClock(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmMasterBrightnessLimitPeriod(Lcom/android/server/power/PowerManagerService;)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 10872
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
