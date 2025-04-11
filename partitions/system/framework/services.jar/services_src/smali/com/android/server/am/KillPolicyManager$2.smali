.class public Lcom/android/server/am/KillPolicyManager$2;
.super Landroid/content/BroadcastReceiver;
.source "KillPolicyManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;

.field public final synthetic val$triggerTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;J)V
    .locals 0

    .line 565
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$2;->this$0:Lcom/android/server/am/KillPolicyManager;

    iput-wide p2, p0, Lcom/android/server/am/KillPolicyManager$2;->val$triggerTime:J

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 568
    sget-boolean p1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz p1, :cond_0

    .line 569
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "report daily random sample time : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$2;->val$triggerTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityManager_kpm"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager$2;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-virtual {p1}, Lcom/android/server/am/KillPolicyManager;->updateKpmBigdata()V

    .line 572
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$2;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->reportMemInfo()V

    return-void
.end method
