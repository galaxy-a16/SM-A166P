.class public Lcom/android/server/am/MARsTrigger$3;
.super Landroid/content/BroadcastReceiver;
.source "MARsTrigger.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/MARsTrigger;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsTrigger;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 436
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "FIRST_ALARM_TRIGGER_ACTION"

    .line 440
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPolicyIntentReceiver broadcast received action : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MARsTrigger"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 443
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->getIsDumpstateWorking()Z

    move-result v0

    if-nez v0, :cond_1

    .line 444
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsHandler;->sendFirstTriggerMsgToMainHandler()V

    .line 445
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsHandler;->sendRepeatTriggerMsgToMainHandler()V

    :cond_1
    const-string v0, "com.samsung.android.server.am.ACTION_UI_TRIGGER_POLICY"

    .line 449
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 450
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "POLICY_NAME"

    const-string v0, ""

    .line 452
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 453
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v0, p2}, Lcom/android/server/am/MARsTrigger;->-$$Nest$mpolicyNameToInt(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)I

    move-result p2

    const-string v0, "PACKAGE_NAME"

    .line 455
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 457
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p0}, Lcom/android/server/am/MARsHandler;->sendRunPolicySpecificPkgMsgToMainHandler(Ljava/util/ArrayList;ILjava/lang/String;I)V

    :cond_2
    return-void
.end method
