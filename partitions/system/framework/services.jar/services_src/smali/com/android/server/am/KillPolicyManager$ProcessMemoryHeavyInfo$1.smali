.class public Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;
.super Ljava/lang/Thread;
.source "KillPolicyManager.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

.field public final synthetic val$kpmBigdata:Lcom/android/server/am/KillPolicyManager$KpmRaw;

.field public final synthetic val$kpmPolicy:Lcom/android/server/am/KillPolicyManager$KpmRaw;


# direct methods
.method public constructor <init>(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;Ljava/lang/String;Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$KpmRaw;)V
    .locals 0

    .line 3134
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    iput-object p3, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->val$kpmBigdata:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iput-object p4, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->val$kpmPolicy:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "ActivityManager_kpm"

    const-wide/16 v1, 0xbb8

    const/4 v3, 0x0

    .line 3138
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    const-string v1, "PMM gatherHeavyProcessThread"

    .line 3139
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3141
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-virtual {v2}, Lcom/android/server/am/KillPolicyManager;->getProcMemInfo()Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 3142
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->val$kpmBigdata:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isGetPssDump:Z

    if-nez v1, :cond_0

    .line 3143
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    const/4 v4, 0x1

    invoke-static {v1, v4, v2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->-$$Nest$mgetProcessMemoryDumpInformation(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;ZLcom/android/server/am/KillPolicyManager$ProcMemInfo;)V

    .line 3144
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->val$kpmBigdata:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    invoke-static {v2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->-$$Nest$fgetpeakLmkdKillAdj(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;)I

    move-result v2

    invoke-static {v1, v4, v5, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateProcessHeavyPssList(Lcom/android/server/am/KillPolicyManager$KpmRaw;Ljava/util/ArrayList;Lcom/android/server/am/KillPolicyManager$ProcMemInfo;I)V

    .line 3145
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->val$kpmBigdata:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    iget-object v2, v2, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    invoke-static {v1, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateMemoryUsageByAdj(Lcom/android/server/am/KillPolicyManager$KpmRaw;Ljava/util/HashMap;)V

    .line 3146
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->-$$Nest$mreportHeavyProcessTop5ByAdj(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;)V

    goto :goto_0

    .line 3148
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    invoke-static {v1, v3, v2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->-$$Nest$mgetProcessMemoryDumpInformation(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;ZLcom/android/server/am/KillPolicyManager$ProcMemInfo;)V

    .line 3151
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->val$kpmPolicy:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    if-eqz v1, :cond_1

    .line 3152
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    invoke-static {v2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->-$$Nest$fgetpeakLmkdKillAdj(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;)I

    move-result v2

    invoke-static {v1, v4, v5, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateProcessHeavyPssList(Lcom/android/server/am/KillPolicyManager$KpmRaw;Ljava/util/ArrayList;Lcom/android/server/am/KillPolicyManager$ProcMemInfo;I)V

    .line 3153
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->val$kpmPolicy:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    iget-object v2, v2, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    invoke-static {v1, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateMemoryUsageByAdj(Lcom/android/server/am/KillPolicyManager$KpmRaw;Ljava/util/HashMap;)V

    .line 3156
    :cond_1
    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v1, :cond_2

    .line 3157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProcessMemoryHeavy peakLmkdKillAdj : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    invoke-static {v2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->-$$Nest$fgetpeakLmkdKillAdj(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3158
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->-$$Nest$mshowDebugHeavyProcess(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;Ljava/util/ArrayList;)V

    .line 3159
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->-$$Nest$mshowDebugAdjMemory(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 3162
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3164
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    invoke-static {p0, v3}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->-$$Nest$fputisThreadRunning(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;Z)V

    return-void
.end method
