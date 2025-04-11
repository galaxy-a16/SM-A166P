.class public Lcom/android/server/am/ActivityManagerService$26;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic val$packageNames:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$26;->val$packageNames:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$26;->val$packageNames:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmDynamicHiddenApp(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/DynamicHiddenApp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/am/DynamicHiddenApp;->addAllowlistList(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmDynamicHiddenApp(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/DynamicHiddenApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/DynamicHiddenApp;->IsAllowListCleared()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmDynamicHiddenApp(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/DynamicHiddenApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/DynamicHiddenApp;->removeAllowlistByBUB()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList;->getmLruProcesses()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_1
    if-ltz v3, :cond_6

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmDynamicHiddenApp(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/DynamicHiddenApp;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v8, v5, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v6, v7, v8}, Lcom/android/server/am/DynamicHiddenApp;->appIsPickedProcess(Ljava/lang/String;I)I

    move-result v6

    if-ltz v6, :cond_2

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/server/am/ProcessRecord;->setIpmLaunchType(I)V

    :cond_2
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$26;->val$packageNames:Ljava/util/List;

    if-eqz v6, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v5, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "_&_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5, v4}, Lcom/android/server/am/ProcessRecord;->setIpmLaunchType(I)V

    :cond_3
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$26;->val$packageNames:Ljava/util/List;

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmDynamicHiddenApp(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/DynamicHiddenApp;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/am/DynamicHiddenApp;->resetKillExceptFlag(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmDynamicHiddenApp(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/DynamicHiddenApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/DynamicHiddenApp;->IsAllowListCleared()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmDynamicHiddenApp(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/DynamicHiddenApp;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/am/DynamicHiddenApp;->resetKillExceptFlag(Lcom/android/server/am/ProcessRecord;)V

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmDynamicHiddenApp(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/DynamicHiddenApp;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$26;->val$packageNames:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/android/server/am/DynamicHiddenApp;->updatePickedProcessLists(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$26;->val$packageNames:Ljava/util/List;

    if-nez v0, :cond_7

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmDynamicHiddenApp(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/DynamicHiddenApp;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/server/am/DynamicHiddenApp;->setAllowListCleared(Z)V

    const-string p0, "ActivityManager"

    const-string v0, "ALLOWLIST set in bootupbooster"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmDynamicHiddenApp(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/DynamicHiddenApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/DynamicHiddenApp;->IsAllowListCleared()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmDynamicHiddenApp(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/DynamicHiddenApp;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/server/am/DynamicHiddenApp;->setAllowListCleared(Z)V

    const-string p0, "ActivityManager"

    const-string v0, "ALLOWLIST clear in bootupbooster"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method
