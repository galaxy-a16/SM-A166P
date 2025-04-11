.class public Lcom/android/server/sepunion/PaymentSafetyService$2;
.super Landroid/content/BroadcastReceiver;
.source "PaymentSafetyService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/PaymentSafetyService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/PaymentSafetyService;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/android/server/sepunion/PaymentSafetyService$2;->this$0:Lcom/android/server/sepunion/PaymentSafetyService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 248
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 249
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "android.intent.extra.UID"

    const/4 v1, 0x0

    .line 250
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "android.intent.extra.REPLACING"

    .line 251
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 252
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-nez v1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 256
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x32

    .line 257
    iput v2, v1, Landroid/os/Message;->what:I

    .line 258
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "action"

    .line 259
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "uid"

    .line 260
    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "pkg_name"

    .line 261
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 263
    iget-object p0, p0, Lcom/android/server/sepunion/PaymentSafetyService$2;->this$0:Lcom/android/server/sepunion/PaymentSafetyService;

    invoke-static {p0}, Lcom/android/server/sepunion/PaymentSafetyService;->-$$Nest$fgetmHandler(Lcom/android/server/sepunion/PaymentSafetyService;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void
.end method
