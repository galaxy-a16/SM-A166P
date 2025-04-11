.class public Lcom/android/server/sepunion/SemDeviceInfoManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "SemDeviceInfoManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$1;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "android.intent.extra.user_handle"

    const/16 v0, -0x2710

    .line 139
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 141
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 142
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-ltz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_1

    .line 147
    :cond_1
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is removed on User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$1;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-static {p0, p2, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->-$$Nest$mclearPendingIntentAsUserInternal(Lcom/android/server/sepunion/SemDeviceInfoManagerService;Ljava/lang/String;I)V

    return-void

    .line 144
    :cond_2
    :goto_1
    sget-object p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string p1, "Intent contains invalid userId or package name"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
