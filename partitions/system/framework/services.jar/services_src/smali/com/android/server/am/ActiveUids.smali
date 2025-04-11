.class public final Lcom/android/server/am/ActiveUids;
.super Ljava/lang/Object;
.source "ActiveUids.java"


# instance fields
.field public final mActiveUids:Landroid/util/SparseArray;

.field public final mPostChangesToAtm:Z

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public static synthetic $r8$lambda$G_7-jFL0r5ri3SJ6Mg5gotLMr8Y(Ljava/io/PrintWriter;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/am/ActiveUids;->lambda$dump$0(Ljava/io/PrintWriter;Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Z)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    .line 43
    iput-object p1, p0, Lcom/android/server/am/ActiveUids;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/server/am/ActiveUids;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 45
    iput-boolean p2, p0, Lcom/android/server/am/ActiveUids;->mPostChangesToAtm:Z

    return-void
.end method

.method public static synthetic lambda$dump$0(Ljava/io/PrintWriter;Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    const-string v0, "      proc="

    .line 129
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;Z)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 110
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 111
    iget-object v2, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UidRecord;

    if-eqz p2, :cond_0

    .line 112
    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-eq v3, p3, :cond_0

    goto :goto_1

    :cond_0
    if-nez v1, :cond_2

    if-eqz p5, :cond_1

    .line 118
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_1
    const-string v1, "  "

    .line 120
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_2
    const-string v3, "    UID "

    .line 122
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v3

    invoke-static {p1, v3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v3, ": "

    .line 123
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v3, "      curProcState="

    .line 124
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " curCapability="

    .line 125
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v3

    invoke-static {p1, v3}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 127
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 128
    new-instance v3, Lcom/android/server/am/ActiveUids$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/android/server/am/ActiveUids$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v2, v3}, Lcom/android/server/am/UidRecord;->forEachProcess(Ljava/util/function/Consumer;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;IJ)V
    .locals 3

    const/4 v0, 0x0

    .line 137
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UidRecord;

    if-eqz p2, :cond_0

    .line 139
    invoke-virtual {v1}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    if-eq v2, p3, :cond_0

    goto :goto_1

    .line 142
    :cond_0
    invoke-virtual {v1, p1, p4, p5}, Lcom/android/server/am/UidRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public get(I)Lcom/android/server/am/UidRecord;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/UidRecord;

    return-object p0
.end method

.method public getAllUidRecords()Ljava/util/Map;
    .locals 4

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 99
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UidRecord;

    .line 101
    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public keyAt(I)I
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0
.end method

.method public put(ILcom/android/server/am/UidRecord;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    iget-boolean v0, p0, Lcom/android/server/am/ActiveUids;->mPostChangesToAtm:Z

    if-eqz v0, :cond_0

    .line 52
    iget-object p0, p0, Lcom/android/server/am/ActiveUids;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p2}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUidActive(II)V

    :cond_0
    return-void
.end method

.method public remove(I)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 59
    iget-boolean v0, p0, Lcom/android/server/am/ActiveUids;->mPostChangesToAtm:Z

    if-eqz v0, :cond_0

    .line 60
    iget-object p0, p0, Lcom/android/server/am/ActiveUids;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUidInactive(I)V

    :cond_0
    return-void
.end method

.method public size()I
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    return p0
.end method

.method public valueAt(I)Lcom/android/server/am/UidRecord;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/UidRecord;

    return-object p0
.end method
