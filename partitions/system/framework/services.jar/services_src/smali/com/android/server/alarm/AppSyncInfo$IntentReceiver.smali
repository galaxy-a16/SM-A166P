.class public Lcom/android/server/alarm/AppSyncInfo$IntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppSyncInfo.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/AppSyncInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AppSyncInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/alarm/AppSyncInfo$IntentReceiver;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-static {p1}, Lcom/android/server/alarm/AppSyncInfo;->-$$Nest$minitFilter(Lcom/android/server/alarm/AppSyncInfo;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$IntentReceiver;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-static {p0, v0}, Lcom/android/server/alarm/AppSyncInfo;->-$$Nest$fputmScreenOn(Lcom/android/server/alarm/AppSyncInfo;Z)V

    goto :goto_0

    :cond_0
    const-string p1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$IntentReceiver;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-static {p0, v1}, Lcom/android/server/alarm/AppSyncInfo;->-$$Nest$fputmScreenOn(Lcom/android/server/alarm/AppSyncInfo;Z)V

    goto :goto_0

    :cond_1
    const-string p1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$IntentReceiver;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-static {p0, v1}, Lcom/android/server/alarm/AppSyncInfo;->-$$Nest$fputmCharging(Lcom/android/server/alarm/AppSyncInfo;Z)V

    goto :goto_0

    :cond_2
    const-string p1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$IntentReceiver;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-static {p0, v0}, Lcom/android/server/alarm/AppSyncInfo;->-$$Nest$fputmCharging(Lcom/android/server/alarm/AppSyncInfo;Z)V

    :cond_3
    :goto_0
    return-void
.end method
