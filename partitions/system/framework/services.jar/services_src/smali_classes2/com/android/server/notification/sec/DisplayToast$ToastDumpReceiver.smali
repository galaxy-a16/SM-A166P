.class public Lcom/android/server/notification/sec/DisplayToast$ToastDumpReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DisplayToast.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/sec/DisplayToast;


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 132
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.mobiledoctor.GETMOBILEDATAFILES"

    if-eq p1, v0, :cond_1

    .line 133
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.android.action.ACTION_REQUEST_INTERNET_LOG"

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const-string p1, "ToastLog"

    const-string/jumbo p2, "start dump"

    .line 134
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object p0, p0, Lcom/android/server/notification/sec/DisplayToast$ToastDumpReceiver;->this$0:Lcom/android/server/notification/sec/DisplayToast;

    invoke-static {p0}, Lcom/android/server/notification/sec/DisplayToast;->-$$Nest$mdump(Lcom/android/server/notification/sec/DisplayToast;)V

    return-void
.end method
