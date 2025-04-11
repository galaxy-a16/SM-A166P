.class public Lcom/android/server/BatteryService$4$2;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/BatteryService$4;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService$4;)V
    .locals 0

    .line 839
    iput-object p1, p0, Lcom/android/server/BatteryService$4$2;->this$1:Lcom/android/server/BatteryService$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 842
    iget-object v0, p0, Lcom/android/server/BatteryService$4$2;->this$1:Lcom/android/server/BatteryService$4;

    iget-object v0, v0, Lcom/android/server/BatteryService$4;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLock(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 843
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BatteryService$4$2;->this$1:Lcom/android/server/BatteryService$4;

    iget-object v1, v1, Lcom/android/server/BatteryService$4;->this$0:Lcom/android/server/BatteryService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->-$$Nest$fputmScreenOn(Lcom/android/server/BatteryService;Z)V

    .line 845
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_NOTIFY_SCREEN_STATE:Z

    if-eqz v1, :cond_0

    .line 846
    iget-object v1, p0, Lcom/android/server/BatteryService$4$2;->this$1:Lcom/android/server/BatteryService$4;

    iget-object v1, v1, Lcom/android/server/BatteryService$4;->this$0:Lcom/android/server/BatteryService;

    invoke-virtual {v1}, Lcom/android/server/BatteryService;->sendScreenState()V

    .line 849
    :cond_0
    iget-object p0, p0, Lcom/android/server/BatteryService$4$2;->this$1:Lcom/android/server/BatteryService$4;

    iget-object p0, p0, Lcom/android/server/BatteryService$4;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLed(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 850
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
