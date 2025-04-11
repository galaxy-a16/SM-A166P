.class public Lcom/android/server/bgslotmanager/MemInfoGetter;
.super Ljava/lang/Object;
.source "MemInfoGetter.java"


# instance fields
.field public mInfoInner:Lcom/android/internal/util/MemInfoReader;

.field public final mTotalMemMb:J

.field public final memoryMBToGBPool:[[I


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3000

    const/16 v1, 0x10

    .line 9
    filled-new-array {v0, v1}, [I

    move-result-object v2

    const/16 v0, 0x2000

    const/16 v1, 0xc

    filled-new-array {v0, v1}, [I

    move-result-object v3

    const/16 v0, 0x1800

    const/16 v1, 0x8

    filled-new-array {v0, v1}, [I

    move-result-object v4

    const/16 v0, 0x1000

    const/4 v1, 0x6

    filled-new-array {v0, v1}, [I

    move-result-object v5

    const/16 v0, 0xc00

    const/4 v1, 0x4

    filled-new-array {v0, v1}, [I

    move-result-object v6

    const/16 v0, 0x800

    const/4 v1, 0x3

    filled-new-array {v0, v1}, [I

    move-result-object v7

    const/16 v0, 0x400

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v8

    const/4 v0, 0x0

    const/4 v1, 0x1

    filled-new-array {v0, v1}, [I

    move-result-object v9

    filled-new-array/range {v2 .. v9}, [[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/bgslotmanager/MemInfoGetter;->memoryMBToGBPool:[[I

    .line 21
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/server/bgslotmanager/MemInfoGetter;->mInfoInner:Lcom/android/internal/util/MemInfoReader;

    .line 22
    invoke-static {}, Lcom/android/server/bgslotmanager/MemInfoGetter;->getTotalMemoryMB()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/bgslotmanager/MemInfoGetter;->mTotalMemMb:J

    return-void
.end method

.method public static getTotalMemoryMB()J
    .locals 4

    .line 26
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getAvailableMemLegacy()J
    .locals 8

    .line 39
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/MemInfoGetter;->readLightMemInfo()V

    .line 40
    iget-object v0, p0, Lcom/android/server/bgslotmanager/MemInfoGetter;->mInfoInner:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v0

    .line 41
    iget-object v2, p0, Lcom/android/server/bgslotmanager/MemInfoGetter;->mInfoInner:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeLegacy()J

    move-result-wide v2

    .line 42
    iget-object v4, p0, Lcom/android/server/bgslotmanager/MemInfoGetter;->mInfoInner:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getRbinTotalSize()J

    move-result-wide v4

    .line 43
    iget-object p0, p0, Lcom/android/server/bgslotmanager/MemInfoGetter;->mInfoInner:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getRbinAllocedSize()J

    move-result-wide v6

    add-long/2addr v0, v2

    sub-long/2addr v4, v6

    sub-long/2addr v0, v4

    return-wide v0
.end method

.method public getPhysicalMemory()I
    .locals 9

    .line 60
    iget-object v0, p0, Lcom/android/server/bgslotmanager/MemInfoGetter;->memoryMBToGBPool:[[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 61
    iget-wide v5, p0, Lcom/android/server/bgslotmanager/MemInfoGetter;->mTotalMemMb:J

    aget v7, v4, v2

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    const/4 p0, 0x1

    .line 62
    aget p0, v4, p0

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final getSwapTotalSizeKb()J
    .locals 2

    .line 34
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/MemInfoGetter;->readLightMemInfo()V

    .line 35
    iget-object p0, p0, Lcom/android/server/bgslotmanager/MemInfoGetter;->mInfoInner:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSwapsizeGB()I
    .locals 6

    .line 49
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/MemInfoGetter;->getSwapTotalSizeKb()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 51
    iget-object p0, p0, Lcom/android/server/bgslotmanager/MemInfoGetter;->memoryMBToGBPool:[[I

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    .line 52
    aget v5, v4, v2

    if-le v0, v5, :cond_0

    const/4 p0, 0x1

    .line 53
    aget p0, v4, p0

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final readLightMemInfo()V
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/server/bgslotmanager/MemInfoGetter;->mInfoInner:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->readLightMemInfo()V

    return-void
.end method
