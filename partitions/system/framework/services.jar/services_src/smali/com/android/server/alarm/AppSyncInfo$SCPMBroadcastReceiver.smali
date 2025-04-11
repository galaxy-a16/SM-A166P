.class public Lcom/android/server/alarm/AppSyncInfo$SCPMBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppSyncInfo.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/AppSyncInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AppSyncInfo;Landroid/content/Context;)V
    .locals 1

    .line 990
    iput-object p1, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMBroadcastReceiver;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 992
    new-instance p1, Landroid/content/IntentFilter;

    const-string/jumbo v0, "sec.app.policy.UPDATE.AppsyncPolicy"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 993
    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 999
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "sec.app.policy.UPDATE.AppsyncPolicy"

    .line 1003
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1004
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMBroadcastReceiver;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-static {p0, p1}, Lcom/android/server/alarm/AppSyncInfo;->-$$Nest$mupdateSuspiciousPolicy(Lcom/android/server/alarm/AppSyncInfo;Landroid/content/Context;)V

    :cond_1
    return-void
.end method
