.class public Lcom/android/server/sepunion/PaymentSafetyService$1;
.super Landroid/content/BroadcastReceiver;
.source "PaymentSafetyService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/PaymentSafetyService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/PaymentSafetyService;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/android/server/sepunion/PaymentSafetyService$1;->this$0:Lcom/android/server/sepunion/PaymentSafetyService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 221
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_UNLOCKED"

    .line 222
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-static {}, Lcom/android/server/sepunion/PaymentSafetyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onUserUnlocked"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object p0, p0, Lcom/android/server/sepunion/PaymentSafetyService$1;->this$0:Lcom/android/server/sepunion/PaymentSafetyService;

    invoke-static {p0}, Lcom/android/server/sepunion/PaymentSafetyService;->-$$Nest$fgetmHandler(Lcom/android/server/sepunion/PaymentSafetyService;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x46

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    const-string v0, "com.samsung.knox.securefolder.SETUP_COMPLETE"

    .line 229
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "userid"

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    goto :goto_0

    :cond_1
    const-string v0, "android.intent.extra.user_handle"

    .line 232
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 235
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v2, 0x3c

    .line 236
    iput v2, v0, Landroid/os/Message;->what:I

    .line 237
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "action"

    .line 238
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v2, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 240
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 241
    iget-object p0, p0, Lcom/android/server/sepunion/PaymentSafetyService$1;->this$0:Lcom/android/server/sepunion/PaymentSafetyService;

    invoke-static {p0}, Lcom/android/server/sepunion/PaymentSafetyService;->-$$Nest$fgetmHandler(Lcom/android/server/sepunion/PaymentSafetyService;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
