.class public Lcom/android/server/enterprise/device/DeviceInfo$3;
.super Landroid/content/BroadcastReceiver;
.source "DeviceInfo.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/device/DeviceInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/device/DeviceInfo;)V
    .locals 0

    .line 996
    iput-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$3;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 998
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DeviceInfo"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1000
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$3;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-static {p1}, Lcom/android/server/enterprise/device/DeviceInfo;->-$$Nest$mdataUsageValuesInit(Lcom/android/server/enterprise/device/DeviceInfo;)V

    .line 1001
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo$3;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->dataUsageTimerActivation(Lcom/samsung/android/knox/ContextInfo;)V

    goto :goto_0

    .line 1002
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1003
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$3;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    const/16 p2, 0xa

    invoke-static {p1, p2}, Lcom/android/server/enterprise/device/DeviceInfo;->-$$Nest$fputmDataStatsCounter(Lcom/android/server/enterprise/device/DeviceInfo;I)V

    .line 1004
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$3;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-static {p1}, Lcom/android/server/enterprise/device/DeviceInfo;->-$$Nest$fgetmDataUsageEventsHandler(Lcom/android/server/enterprise/device/DeviceInfo;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/enterprise/device/DeviceInfo$3;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-static {p2}, Lcom/android/server/enterprise/device/DeviceInfo;->-$$Nest$fgetmDataStatisticsUpdateRun(Lcom/android/server/enterprise/device/DeviceInfo;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1005
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$3;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-static {p1}, Lcom/android/server/enterprise/device/DeviceInfo;->-$$Nest$fgetmDataUsageTimerActivated(Lcom/android/server/enterprise/device/DeviceInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1006
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$3;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-static {p1}, Lcom/android/server/enterprise/device/DeviceInfo;->-$$Nest$fgetmDataUsageEventsHandler(Lcom/android/server/enterprise/device/DeviceInfo;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo$3;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-static {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->-$$Nest$fgetmDataStatisticsUpdateRun(Lcom/android/server/enterprise/device/DeviceInfo;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method
