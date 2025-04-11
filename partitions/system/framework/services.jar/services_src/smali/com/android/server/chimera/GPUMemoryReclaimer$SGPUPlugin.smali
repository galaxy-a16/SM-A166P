.class public Lcom/android/server/chimera/GPUMemoryReclaimer$SGPUPlugin;
.super Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;
.source "GPUMemoryReclaimer.java"


# static fields
.field public static final mSkiplistPackages:[Ljava/lang/String;


# instance fields
.field public final SGPU_PATH:Ljava/lang/String;

.field public final TAG:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/chimera/GPUMemoryReclaimer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "com.sec.android.gallery3d"

    .line 853
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer$SGPUPlugin;->mSkiplistPackages:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/chimera/GPUMemoryReclaimer;Lcom/android/server/chimera/GPUMemoryReclaimer;)V
    .locals 1

    .line 855
    iput-object p1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$SGPUPlugin;->this$0:Lcom/android/server/chimera/GPUMemoryReclaimer;

    const-string v0, "SGPU"

    .line 856
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;-><init>(Lcom/android/server/chimera/GPUMemoryReclaimer;Lcom/android/server/chimera/GPUMemoryReclaimer;Ljava/lang/String;)V

    .line 849
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GMR "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lcom/android/server/chimera/GPUMemoryReclaimer$SGPUPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$SGPUPlugin;->TAG:Ljava/lang/String;

    const-string p1, "/sys/kernel/gpu"

    .line 850
    iput-object p1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$SGPUPlugin;->SGPU_PATH:Ljava/lang/String;

    .line 857
    iput-object p2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    const/4 p1, 0x1

    .line 858
    iput-boolean p1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->mIsInitialized:Z

    return-void
.end method


# virtual methods
.method public calculateReclaimed([J)J
    .locals 2

    const/4 p0, 0x2

    .line 938
    aget-wide v0, p1, p0

    const/4 p0, 0x3

    aget-wide p0, p1, p0

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method public calculateResident([J)J
    .locals 0

    const/4 p0, 0x3

    .line 931
    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public getMeminfoRaw(I)[J
    .locals 4

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sys/kernel/gpu/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/summary"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 916
    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    invoke-static {p0}, Lcom/android/server/chimera/GPUMemoryReclaimer;->-$$Nest$fgetmUtils(Lcom/android/server/chimera/GPUMemoryReclaimer;)Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;->readFileToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\s+"

    .line 917
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x4

    new-array p1, p1, [J

    const/4 v0, 0x1

    .line 918
    aget-object v1, p0, v0

    .line 919
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x0

    aput-wide v1, p1, v3

    const/4 v1, 0x3

    aget-object v2, p0, v1

    .line 920
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, p1, v0

    const/4 v0, 0x5

    aget-object v0, p0, v0

    .line 921
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v0, 0x2

    aput-wide v2, p1, v0

    const/4 v0, 0x7

    aget-object p0, p0, v0

    .line 922
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, p1, v1

    return-object p1
.end method

.method public getReclaimableTasks()Ljava/util/ArrayList;
    .locals 7

    .line 946
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 949
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/kernel/gpu/proc"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 950
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    .line 951
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 952
    aget-object v3, v1, v2

    .line 953
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 954
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 955
    new-instance v4, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;

    iget-object v5, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$SGPUPlugin;->this$0:Lcom/android/server/chimera/GPUMemoryReclaimer;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v3, p0, v6}, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;-><init>(Lcom/android/server/chimera/GPUMemoryReclaimer;ILcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask-IA;)V

    .line 956
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

    .line 960
    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$SGPUPlugin;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot access /sys/kernel/gpu/proc : "

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
    .locals 2

    const/4 p2, -0x1

    .line 899
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " 0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 900
    iget-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    invoke-static {v0}, Lcom/android/server/chimera/GPUMemoryReclaimer;->-$$Nest$fgetmUtils(Lcom/android/server/chimera/GPUMemoryReclaimer;)Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

    move-result-object v0

    const-string v1, "/sys/kernel/gpu/sgpu_swap_ctrl"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p1

    .line 906
    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$SGPUPlugin;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to swap-in: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    return p2
.end method

.method public swapOutImpl(ILjava/lang/String;)I
    .locals 7

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    .line 864
    :try_start_0
    sget-object v1, Lcom/android/server/chimera/GPUMemoryReclaimer$SGPUPlugin;->mSkiplistPackages:[Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 865
    iget-object p1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$SGPUPlugin;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip GMR BG for Skiplist package ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 869
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sys/kernel/gpu/proc/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/swap"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 871
    iget-object v1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    invoke-static {v1}, Lcom/android/server/chimera/GPUMemoryReclaimer;->-$$Nest$fgetmUtils(Lcom/android/server/chimera/GPUMemoryReclaimer;)Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;->readFileToLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 872
    iget-object p2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    invoke-static {p2}, Lcom/android/server/chimera/GPUMemoryReclaimer;->-$$Nest$fgetmUtils(Lcom/android/server/chimera/GPUMemoryReclaimer;)Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;->getSwapFreeKb()J

    move-result-wide v3

    const-wide/16 v5, 0x400

    mul-long/2addr v3, v5

    .line 873
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->getMaxReclaimSize()J

    move-result-wide v5

    cmp-long p2, v1, v5

    if-lez p2, :cond_1

    move-wide v1, v5

    :cond_1
    cmp-long p2, v1, v3

    if-lez p2, :cond_2

    goto :goto_0

    :cond_2
    move-wide v3, v1

    .line 883
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 884
    iget-object p2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    invoke-static {p2}, Lcom/android/server/chimera/GPUMemoryReclaimer;->-$$Nest$fgetmUtils(Lcom/android/server/chimera/GPUMemoryReclaimer;)Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

    move-result-object p2

    const-string v1, "/sys/kernel/gpu/sgpu_swap_ctrl"

    invoke-virtual {p2, v1, p1}, Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p1

    .line 890
    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$SGPUPlugin;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to swap-out: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    return v0
.end method
