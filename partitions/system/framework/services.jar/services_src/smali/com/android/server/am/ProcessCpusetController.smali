.class public Lcom/android/server/am/ProcessCpusetController;
.super Ljava/lang/Object;
.source "ProcessCpusetController.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ProcessCpusetController"

.field public static mController:Lcom/android/server/am/ProcessCpusetController;


# instance fields
.field public final mAm:Lcom/android/server/am/ActivityManagerService;

.field public final mContext:Landroid/content/Context;

.field public final mSystemPackage:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 59
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/am/ProcessCpusetController;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ProcessCpusetController;->mSystemPackage:Ljava/lang/String;

    return-void
.end method

.method public static getController()Lcom/android/server/am/ProcessCpusetController;
    .locals 1

    .line 70
    sget-object v0, Lcom/android/server/am/ProcessCpusetController;->mController:Lcom/android/server/am/ProcessCpusetController;

    return-object v0
.end method

.method public static getController(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/ProcessCpusetController;
    .locals 0

    .line 74
    invoke-static {p0}, Lcom/android/server/am/ProcessCpusetController;->prepareController(Lcom/android/server/am/ActivityManagerService;)V

    .line 75
    invoke-static {}, Lcom/android/server/am/ProcessCpusetController;->getController()Lcom/android/server/am/ProcessCpusetController;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized prepareController(Lcom/android/server/am/ActivityManagerService;)V
    .locals 2

    const-class v0, Lcom/android/server/am/ProcessCpusetController;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lcom/android/server/am/ProcessCpusetController;->mController:Lcom/android/server/am/ProcessCpusetController;

    if-nez v1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    new-instance v1, Lcom/android/server/am/ProcessCpusetController;

    invoke-direct {v1, p0}, Lcom/android/server/am/ProcessCpusetController;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v1, Lcom/android/server/am/ProcessCpusetController;->mController:Lcom/android/server/am/ProcessCpusetController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit v0

    return-void

    .line 65
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public resetAbnormalList()V
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getmLruProcesses()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 81
    iget-object v2, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList;->getmLruProcesses()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 82
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/4 v3, 0x0

    .line 83
    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessStateRecord;->setAbnormalStatus(Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 85
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/16 v1, 0x17

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(I)V

    .line 86
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

.method public setFGSFilter(IZ)Z
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 119
    invoke-virtual {p1, p2}, Lcom/android/server/am/UidRecord;->setFGSFilterStatus(Z)V

    .line 120
    iget-object p0, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/16 p1, 0x18

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(I)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 123
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setProcessSlowdown(IZ)Z
    .locals 5

    .line 93
    iget-object v0, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getmLruProcesses()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 95
    iget-object v3, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessList;->getmLruProcesses()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 96
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 97
    iget-object v1, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 101
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-nez v1, :cond_2

    .line 103
    sget-object p0, Lcom/android/server/am/ProcessCpusetController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Slowdown: pid "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is nonexistent"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 106
    :cond_2
    invoke-virtual {v1, p2}, Lcom/android/server/am/ProcessStateRecord;->setAbnormalStatus(Z)V

    .line 107
    iget-object p1, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    .line 108
    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/16 p2, 0x17

    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(I)V

    .line 109
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catchall_1
    move-exception p0

    .line 101
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
