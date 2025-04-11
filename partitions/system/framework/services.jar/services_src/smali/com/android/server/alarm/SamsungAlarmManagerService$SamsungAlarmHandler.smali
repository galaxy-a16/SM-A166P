.class public Lcom/android/server/alarm/SamsungAlarmManagerService$SamsungAlarmHandler;
.super Landroid/os/Handler;
.source "SamsungAlarmManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/SamsungAlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/SamsungAlarmManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/alarm/SamsungAlarmManagerService$SamsungAlarmHandler;->this$0:Lcom/android/server/alarm/SamsungAlarmManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/alarm/SamsungAlarmManagerService$SamsungAlarmHandler;->this$0:Lcom/android/server/alarm/SamsungAlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/SamsungAlarmManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/alarm/SamsungAlarmManagerService;->-$$Nest$sfgetALARM_CLOCK_CHANGED_INTENT()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_0
    return-void
.end method
