.class public Lcom/android/server/am/MARsTrigger$9;
.super Landroid/content/BroadcastReceiver;
.source "MARsTrigger.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/MARsTrigger;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsTrigger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$9;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.TIME_SET"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$9;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v2}, Lcom/android/server/am/MARsTrigger;->-$$Nest$fgetmLastTimeChangeClockTime(Lcom/android/server/am/MARsTrigger;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$9;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v4}, Lcom/android/server/am/MARsTrigger;->-$$Nest$fgetmLastTimeChangeRealtime(Lcom/android/server/am/MARsTrigger;)J

    move-result-wide v4

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    sub-long v2, p1, v2

    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/android/server/am/MARsHandler;->sendTimeChangedMsgToMainHandler(J)V

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$9;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v2, p1, p2}, Lcom/android/server/am/MARsTrigger;->-$$Nest$fputmLastTimeChangeClockTime(Lcom/android/server/am/MARsTrigger;J)V

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger$9;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {p0, v0, v1}, Lcom/android/server/am/MARsTrigger;->-$$Nest$fputmLastTimeChangeRealtime(Lcom/android/server/am/MARsTrigger;J)V

    :cond_1
    :goto_0
    return-void
.end method
