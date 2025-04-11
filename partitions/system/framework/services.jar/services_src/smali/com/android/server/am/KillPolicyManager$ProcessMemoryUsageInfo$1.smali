.class public Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;
.super Ljava/lang/Thread;
.source "KillPolicyManager.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

.field public final synthetic val$lastCycle:Lcom/android/server/am/KillPolicyManager$KpmRaw;


# direct methods
.method public constructor <init>(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;Ljava/lang/String;Lcom/android/server/am/KillPolicyManager$KpmRaw;)V
    .locals 0

    .line 3487
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    iput-object p3, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->val$lastCycle:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    const-string v0, "ActivityManager_kpm"

    const-string v1, "KPM end cycle get pss"

    .line 3491
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3492
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->-$$Nest$mgetProcDumpMemInfo(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;)V

    .line 3493
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_0

    .line 3494
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->-$$Nest$mshowDebugAdjPss(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;)V

    .line 3496
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->val$lastCycle:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateProcAdjPss(Lcom/android/server/am/KillPolicyManager$KpmRaw;Ljava/util/HashMap;)V

    .line 3498
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->val$lastCycle:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget-boolean v1, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isStateChanged:Z

    if-eqz v1, :cond_1

    .line 3499
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/KillPolicyManager;->reportUserTrend(ILcom/android/server/am/KillPolicyManager$KpmRaw;)V

    .line 3501
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->val$lastCycle:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget-boolean v1, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isDailyBigdata:Z

    if-eqz v1, :cond_2

    .line 3502
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/KillPolicyManager;->reportUserTrend(ILcom/android/server/am/KillPolicyManager$KpmRaw;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3505
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
