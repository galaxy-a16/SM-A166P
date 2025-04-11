.class public Lcom/android/server/am/KillPolicyManager$SCPMReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KillPolicyManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1968
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "sec.app.policy.UPDATE.kpm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1969
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION***"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityManager_kpm"

    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$SCPMReceiver;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->updateSCPMParametersFromDB()V

    :cond_0
    return-void
.end method
