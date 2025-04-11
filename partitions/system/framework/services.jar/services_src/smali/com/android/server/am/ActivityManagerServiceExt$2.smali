.class public Lcom/android/server/am/ActivityManagerServiceExt$2;
.super Ljava/lang/Object;
.source "ActivityManagerServiceExt.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerServiceExt;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerServiceExt;)V
    .locals 0

    .line 1528
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$2;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1531
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$2;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1532
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt$2;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerServiceExt;->-$$Nest$fgetmDeXKillProcesses(Lcom/android/server/am/ActivityManagerServiceExt;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1533
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt$2;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerServiceExt;->-$$Nest$fgetmDeXKillProcesses(Lcom/android/server/am/ActivityManagerServiceExt;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 1535
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt$2;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerServiceExt;->-$$Nest$fgetmDeXKillProcesses(Lcom/android/server/am/ActivityManagerServiceExt;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    invoke-static {v3, v4}, Lcom/android/server/am/ActivityManagerServiceExt;->-$$Nest$mforceKillProcessesForDeXExitLocked(Lcom/android/server/am/ActivityManagerServiceExt;Lcom/android/server/am/ProcessRecord;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1538
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
