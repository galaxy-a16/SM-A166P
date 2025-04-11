.class public Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;
.super Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;
.source "GPUMemoryReclaimer.java"


# instance fields
.field public final COMMAND_TYPE_BG:I

.field public final COMMAND_TYPE_FG:I

.field public final GMR_MAX_RECLAIM_SIZE_NODE:Ljava/lang/String;

.field public final KGSL_PROC_PATH:Ljava/lang/String;

.field public final TAG:Ljava/lang/String;

.field public mPerf:Landroid/util/BoostFramework;

.field public final synthetic this$0:Lcom/android/server/chimera/GPUMemoryReclaimer;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/GPUMemoryReclaimer;Lcom/android/server/chimera/GPUMemoryReclaimer;)V
    .locals 4

    .line 748
    iput-object p1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;->this$0:Lcom/android/server/chimera/GPUMemoryReclaimer;

    const-string v0, "KGSL"

    .line 749
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;-><init>(Lcom/android/server/chimera/GPUMemoryReclaimer;Lcom/android/server/chimera/GPUMemoryReclaimer;Ljava/lang/String;)V

    .line 739
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GMR "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 742
    iput v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;->COMMAND_TYPE_BG:I

    const/4 v1, 0x2

    .line 743
    iput v1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;->COMMAND_TYPE_FG:I

    const-string v1, "/sys/class/kgsl/kgsl/proc"

    .line 745
    iput-object v1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;->KGSL_PROC_PATH:Ljava/lang/String;

    const-string v1, "/sys/class/kgsl/kgsl/max_reclaim_limit"

    .line 746
    iput-object v1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;->GMR_MAX_RECLAIM_SIZE_NODE:Ljava/lang/String;

    .line 750
    iput-object p2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 751
    new-instance p2, Landroid/util/BoostFramework;

    invoke-direct {p2}, Landroid/util/BoostFramework;-><init>()V

    iput-object p2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v2, "vendor.perf.bgt.enable"

    const-string v3, "false"

    .line 753
    invoke-virtual {p2, v2, v3}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 752
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 755
    iput-boolean v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->mIsInitialized:Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 757
    iput-object p2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo p2, "perf-hal bgt disabled"

    .line 758
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :goto_0
    :try_start_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 764
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->getMaxReclaimSize()J

    move-result-wide v0

    sget v2, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v2}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v2

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V

    .line 765
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GMR: Success write max reclaim limit: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->getMaxReclaimSize()J

    move-result-wide v0

    sget v2, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v2}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v2

    div-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 767
    :catch_0
    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;->TAG:Ljava/lang/String;

    const-string p1, "GMR: Failed to write max recaim limit to /sys/class/kgsl/kgsl/max_reclaim_limit"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public calculateReclaimed([J)J
    .locals 0

    const/4 p0, 0x2

    .line 815
    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public calculateResident([J)J
    .locals 4

    const/4 p0, 0x0

    .line 808
    aget-wide v0, p1, p0

    const/4 p0, 0x1

    aget-wide v2, p1, p0

    add-long/2addr v0, v2

    const/4 p0, 0x2

    aget-wide p0, p1, p0

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method public getMeminfoRaw(I)[J
    .locals 5

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sys/class/kgsl/kgsl/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/gpumem_mapped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 794
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/gpumem_unmapped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 795
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/gpumem_reclaimed"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    new-array v2, v2, [J

    .line 796
    iget-object v3, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    invoke-static {v3}, Lcom/android/server/chimera/GPUMemoryReclaimer;->-$$Nest$fgetmUtils(Lcom/android/server/chimera/GPUMemoryReclaimer;)Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

    move-result-object v3

    .line 797
    invoke-virtual {v3, v0}, Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;->readFileToLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v0, 0x0

    aput-wide v3, v2, v0

    iget-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    invoke-static {v0}, Lcom/android/server/chimera/GPUMemoryReclaimer;->-$$Nest$fgetmUtils(Lcom/android/server/chimera/GPUMemoryReclaimer;)Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

    move-result-object v0

    .line 798
    invoke-virtual {v0, v1}, Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;->readFileToLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v3, 0x1

    aput-wide v0, v2, v3

    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    invoke-static {p0}, Lcom/android/server/chimera/GPUMemoryReclaimer;->-$$Nest$fgetmUtils(Lcom/android/server/chimera/GPUMemoryReclaimer;)Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

    move-result-object p0

    .line 799
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;->readFileToLong(Ljava/lang/String;)J

    move-result-wide p0

    const/4 v0, 0x2

    aput-wide p0, v2, v0

    return-object v2
.end method

.method public getReclaimableTasks()Ljava/util/ArrayList;
    .locals 7

    .line 822
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 825
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/kgsl/kgsl/proc"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 826
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    .line 827
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 828
    aget-object v3, v1, v2

    .line 829
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 830
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 831
    new-instance v4, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;

    iget-object v5, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;->this$0:Lcom/android/server/chimera/GPUMemoryReclaimer;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v3, p0, v6}, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;-><init>(Lcom/android/server/chimera/GPUMemoryReclaimer;ILcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask-IA;)V

    .line 832
    invoke-virtual {v4}, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 836
    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot access /sys/class/kgsl/kgsl/proc : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method public swapInImpl(ILjava/lang/String;)I
    .locals 0

    .line 782
    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;->mPerf:Landroid/util/BoostFramework;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/high16 p2, 0x42820000    # 65.0f

    .line 784
    filled-new-array {p2, p1}, [I

    move-result-object p1

    const/16 p2, 0xa

    .line 785
    invoke-virtual {p0, p2, p1}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    const/4 p0, 0x0

    return p0
.end method

.method public swapOutImpl(ILjava/lang/String;)I
    .locals 0

    .line 773
    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;->mPerf:Landroid/util/BoostFramework;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const p2, 0x42824000    # 65.125f

    .line 775
    filled-new-array {p2, p1}, [I

    move-result-object p1

    const/16 p2, 0xa

    .line 776
    invoke-virtual {p0, p2, p1}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    const/4 p0, 0x0

    return p0
.end method
