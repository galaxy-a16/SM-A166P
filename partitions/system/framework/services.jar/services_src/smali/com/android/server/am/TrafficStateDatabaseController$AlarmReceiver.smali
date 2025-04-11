.class public Lcom/android/server/am/TrafficStateDatabaseController$AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TrafficStateDatabaseController.java"


# direct methods
.method public static synthetic $r8$lambda$TVvdkAqGqHf3zu89pMst8zlM2AM(Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/TrafficStateDatabaseController$AlarmReceiver;->lambda$onReceive$0(Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onReceive$0(Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-static {}, Lcom/android/server/am/TrafficStateDatabaseController;->-$$Nest$smdeleteValues()V

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.intent.ACTION_INSERT_TRAFFIC_STATE_DB"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "onReceive(): ACTION_DELETE_TRAFFIC_STATE_DB"

    invoke-static {p1}, Lcom/android/server/am/TrafficStateDatabaseController;->-$$Nest$smlog(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p0

    invoke-static {}, Lcom/android/server/am/TrafficStateDatabaseController;->getAsyncHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/am/TrafficStateDatabaseController$AlarmReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/am/TrafficStateDatabaseController$AlarmReceiver$$ExternalSyntheticLambda0;-><init>(Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
