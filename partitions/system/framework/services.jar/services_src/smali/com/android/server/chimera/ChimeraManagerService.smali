.class public Lcom/android/server/chimera/ChimeraManagerService;
.super Lcom/samsung/android/chimera/IChimera$Stub;
.source "ChimeraManagerService.java"


# instance fields
.field public mChimeraManager:Lcom/android/server/chimera/ChimeraManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 4

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/chimera/IChimera$Stub;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManagerService;->mChimeraManager:Lcom/android/server/chimera/ChimeraManager;

    const-string v0, ""

    const-string/jumbo v1, "persist.config.chimera.enable"

    .line 31
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string/jumbo v3, "true"

    if-nez v2, :cond_0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    :cond_0
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 37
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    new-instance v0, Lcom/android/server/chimera/ChimeraManager;

    invoke-direct {v0, p1, p2}, Lcom/android/server/chimera/ChimeraManager;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManagerService;->mChimeraManager:Lcom/android/server/chimera/ChimeraManager;

    .line 43
    :cond_2
    invoke-static {p2, p1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->init(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public checkProcessInHeimdall(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManagerService;->mChimeraManager:Lcom/android/server/chimera/ChimeraManager;

    if-eqz p0, :cond_0

    .line 97
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/chimera/ChimeraManager;->checkProcessInHeimdall(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    if-eqz p3, :cond_2

    .line 51
    array-length p1, p3

    if-eqz p1, :cond_2

    .line 53
    array-length p1, p3

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 54
    :goto_0
    array-length v0, p3

    if-ge p1, v0, :cond_2

    .line 55
    aget-object v0, p3, p1

    const-string v1, "-enable_chimera"

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "persist.config.chimera.enable"

    if-eqz v1, :cond_0

    const-string/jumbo v1, "true"

    .line 57
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "-disable_chimera"

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "forcestop"

    .line 61
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 70
    :cond_2
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManagerService;->mChimeraManager:Lcom/android/server/chimera/ChimeraManager;

    if-eqz p0, :cond_3

    .line 71
    invoke-virtual {p0, p2, p3}, Lcom/android/server/chimera/ChimeraManager;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public getAvailableMemInfo(JJ)Ljava/util/List;
    .locals 1

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManagerService;->mChimeraManager:Lcom/android/server/chimera/ChimeraManager;

    if-eqz p0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraManager;->getPSITracker()Lcom/android/server/chimera/psitracker/PSITracker;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 107
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/chimera/psitracker/PSITracker;->getAvailableMemInfo(JJ)Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getChimeraManager()Lcom/android/server/chimera/ChimeraManager;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManagerService;->mChimeraManager:Lcom/android/server/chimera/ChimeraManager;

    return-object p0
.end method

.method public getChimeraStat()Lcom/android/server/chimera/ChimeraDataInfo;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManagerService;->mChimeraManager:Lcom/android/server/chimera/ChimeraManager;

    if-eqz p0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraManager;->getChimeraStat()Lcom/android/server/chimera/ChimeraDataInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isRescheduleExceptionPackage(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 86
    invoke-static {}, Lcom/android/server/chimera/RestartImmediatePackages;->getInstance()Lcom/android/server/chimera/RestartImmediatePackages;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/RestartImmediatePackages;->getPackage(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
