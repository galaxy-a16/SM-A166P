.class Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$1;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$1;->lambda$onReceive$0(J)V

    return-void
.end method

.method private synthetic lambda$onReceive$0(J)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->f(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;)Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->g(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->e(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->setFailureInfo(IJ)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->f(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;)Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->g(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;)I

    move-result p0

    invoke-virtual {v0, p1, p2, p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->handleAttemptLockout(JI)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.kmxservice.escrowvault.VERIFY_PPP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "KMX|VerifyPppActivity"

    if-eqz p1, :cond_5

    const-string p1, "isSuccess"

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string v2, "status"

    const-string v3, "EV0002"

    if-eqz p1, :cond_0

    const-string p1, "SALogging for Recover PPP Success"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/samsung/android/kmxservice/common/analytics/SALog;

    invoke-direct {p2, v3, v3, p1}, Lcom/samsung/android/kmxservice/common/analytics/SALog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/kmxservice/common/analytics/KmxLogWrapper;->sendLog(Lcom/samsung/android/kmxservice/common/analytics/SALog;Landroid/app/Application;)V

    const-string p1, "finish: success!!!"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;

    const-string v4, "failure_count"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {p1, v4}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->j(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;I)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;

    const-string v4, "back_off_time"

    const-wide/16 v5, -0x1

    invoke-virtual {p2, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->i(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;J)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;

    invoke-static {p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->g(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;)I

    move-result p1

    const/16 p2, 0x14

    if-lt p1, p2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->f(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;)Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->showNotifyDeleteDialog()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;

    invoke-static {p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->f(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;)Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;

    invoke-static {p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->f(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;)Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->showProgressBar(Z)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;

    invoke-static {p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->f(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;)Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->setIncorrectMessage()V

    const-string p1, "SALogging for Recover PPP Failure"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "reason"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/samsung/android/kmxservice/common/analytics/SALog;

    invoke-direct {p2, v3, v3, p1}, Lcom/samsung/android/kmxservice/common/analytics/SALog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/kmxservice/common/analytics/KmxLogWrapper;->sendLog(Lcom/samsung/android/kmxservice/common/analytics/SALog;Landroid/app/Application;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v2, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->e(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;)J

    move-result-wide v2

    sub-long/2addr v2, p1

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-long v2, v2

    const-wide/16 v4, 0x5

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    const-wide/16 v4, 0xa

    rem-long v4, v2, v4

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    sub-long/2addr v2, v6

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;

    new-instance v5, Lcom/samsung/android/kmxservice/escrowvault/ui/c;

    invoke-direct {v5, v1, v2, v3, p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/c;-><init>(IJLjava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->g(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;)I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_4

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->f(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;)Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->showDeleteDialog()V

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fail!!! failureCount: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->g(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", backOffTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->e(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", deviceTime: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string p1, "com.samsung.android.kmxservice.escrowvault.FINISH_PPP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "finishAndRemoveTask"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_6

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->finish()V

    :cond_6
    :goto_1
    return-void
.end method
