.class public Lcom/android/server/am/AppFGSTracker$MyHandler;
.super Landroid/os/Handler;
.source "AppFGSTracker.java"


# instance fields
.field public final mTracker:Lcom/android/server/am/AppFGSTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppFGSTracker;)V
    .locals 1

    .line 141
    iget-object v0, p1, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 142
    iput-object p1, p0, Lcom/android/server/am/AppFGSTracker$MyHandler;->mTracker:Lcom/android/server/am/AppFGSTracker;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 147
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 173
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker$MyHandler;->mTracker:Lcom/android/server/am/AppFGSTracker;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/am/AppFGSTracker;->-$$Nest$mhandleNotificationRemoved(Lcom/android/server/am/AppFGSTracker;Ljava/lang/String;II)V

    goto :goto_0

    .line 170
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker$MyHandler;->mTracker:Lcom/android/server/am/AppFGSTracker;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/am/AppFGSTracker;->-$$Nest$mhandleNotificationPosted(Lcom/android/server/am/AppFGSTracker;Ljava/lang/String;II)V

    goto :goto_0

    .line 167
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker$MyHandler;->mTracker:Lcom/android/server/am/AppFGSTracker;

    invoke-static {p0}, Lcom/android/server/am/AppFGSTracker;->-$$Nest$mcheckLongRunningFgs(Lcom/android/server/am/AppFGSTracker;)V

    goto :goto_0

    .line 161
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 162
    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker$MyHandler;->mTracker:Lcom/android/server/am/AppFGSTracker;

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    .line 163
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 162
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/am/AppFGSTracker;->-$$Nest$mhandleForegroundServiceNotificationUpdated(Lcom/android/server/am/AppFGSTracker;Ljava/lang/String;IIZ)V

    .line 164
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 157
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker$MyHandler;->mTracker:Lcom/android/server/am/AppFGSTracker;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/am/AppFGSTracker;->-$$Nest$mhandleForegroundServicesChanged(Lcom/android/server/am/AppFGSTracker;Ljava/lang/String;II)V

    goto :goto_0

    .line 153
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker$MyHandler;->mTracker:Lcom/android/server/am/AppFGSTracker;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Lcom/android/server/am/AppFGSTracker;->-$$Nest$mhandleForegroundServicesChanged(Lcom/android/server/am/AppFGSTracker;Ljava/lang/String;IIZ)V

    goto :goto_0

    .line 149
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker$MyHandler;->mTracker:Lcom/android/server/am/AppFGSTracker;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, p1, v2}, Lcom/android/server/am/AppFGSTracker;->-$$Nest$mhandleForegroundServicesChanged(Lcom/android/server/am/AppFGSTracker;Ljava/lang/String;IIZ)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
