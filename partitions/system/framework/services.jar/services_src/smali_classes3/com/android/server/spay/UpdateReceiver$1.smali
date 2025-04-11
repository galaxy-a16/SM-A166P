.class public Lcom/android/server/spay/UpdateReceiver$1;
.super Ljava/lang/Thread;
.source "UpdateReceiver.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/spay/UpdateReceiver;

.field public final synthetic val$action:Ljava/lang/String;

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/server/spay/UpdateReceiver;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/server/spay/UpdateReceiver$1;->this$0:Lcom/android/server/spay/UpdateReceiver;

    iput-object p2, p0, Lcom/android/server/spay/UpdateReceiver$1;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/spay/UpdateReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 38
    :try_start_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 39
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action"

    .line 40
    iget-object v3, p0, Lcom/android/server/spay/UpdateReceiver$1;->val$action:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "getdata_of_intent"

    .line 41
    iget-object v3, p0, Lcom/android/server/spay/UpdateReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 43
    iget-object p0, p0, Lcom/android/server/spay/UpdateReceiver$1;->this$0:Lcom/android/server/spay/UpdateReceiver;

    iget-object p0, p0, Lcom/android/server/spay/UpdateReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 45
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
