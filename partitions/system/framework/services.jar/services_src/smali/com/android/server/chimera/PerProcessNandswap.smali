.class public final Lcom/android/server/chimera/PerProcessNandswap;
.super Ljava/lang/Object;
.source "PerProcessNandswap.java"


# static fields
.field public static final FAST_MADVISE_ENABLED:Z

.field public static INSTANCE:Lcom/android/server/chimera/PerProcessNandswap; = null

.field public static final IS_DEBUG_LEVEL_LOW:Z

.field public static final IS_SHIP_BUILD:Z

.field public static final NANDSWAP_EXCEPTION_PKGNAMES:[Ljava/lang/String;

.field public static final STATUS_ALREADY_PPN:Ljava/lang/Integer;

.field public static final STATUS_KEY_APP:Ljava/lang/Integer;

.field public static final TAG:Ljava/lang/String; = "PerProcessNandswap"

.field public static __DebugEnabled:Ljava/lang/Boolean;

.field public static __MinSwapFreePercentage:Ljava/lang/Integer;

.field public static __PolicyVersion:Ljava/lang/Integer;

.field public static __PrefetchActionEnabled:Ljava/lang/Boolean;

.field public static __PrefetchSupported:Ljava/lang/Boolean;

.field public static __PsiEnabled:Ljava/lang/Boolean;

.field public static __PsiHighStallUS:Ljava/lang/Integer;

.field public static __PsiLowStallUS:Ljava/lang/Integer;

.field public static __PsiThrottlingMS:Ljava/lang/Integer;

.field public static __SlotCount:I

.field public static __SlotCountMap:Ljava/util/ArrayList;

.field public static __WritebackOnBGEnabled:Ljava/lang/Boolean;

.field public static __WritebackOnFreezeEnabled:Ljava/lang/Boolean;

.field public static mAlwaysRunningQuotaPPNCnt:I

.field public static mAlwaysRunningQuotaPPNTriggerCnt:I


# instance fields
.field public WRITEBACK_ENABLED:Z

.field public __KeyAppEnable:Ljava/lang/Boolean;

.field public __PageoutCachedEmptyEnable:Ljava/lang/Boolean;

.field public __QuickSwapEnable:Ljava/lang/Boolean;

.field public mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

.field public final mKeyApps:Ljava/util/Map;

.field public mLastNandswapStats:Ljava/util/LinkedHashMap;

.field public mMemoryPressureDetector:Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;

.field public mMsgHandler:Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;

.field public mMsgThread:Lcom/android/server/ServiceThread;

.field public mNandswapHandler:Landroid/os/Handler;

.field public mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public mNandswapThread:Lcom/android/server/ServiceThread;

.field public final mPendingNandswapActivityApp:Ljava/util/ArrayList;

.field public final mPendingNandswapActivityAppDelayed:Ljava/util/ArrayList;

.field public final mPendingNandswapNonActivityApp:Ljava/util/ArrayList;

.field public final mPendingNandswapNonActivityAppDelayed:Ljava/util/ArrayList;

.field public mQuickSwap:Lcom/android/server/chimera/QuickSwap;

.field public mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public static synthetic $r8$lambda$wGFHkKjNiVascAxmjjj_5FV3MwU(Lcom/android/server/chimera/PerProcessNandswap;I)[J
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PerProcessNandswap;->getFieldFromNandswapMap(I)[J

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetWRITEBACK_ENABLED(Lcom/android/server/chimera/PerProcessNandswap;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmKeyApps(Lcom/android/server/chimera/PerProcessNandswap;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mKeyApps:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMsgThread(Lcom/android/server/chimera/PerProcessNandswap;)Lcom/android/server/ServiceThread;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mMsgThread:Lcom/android/server/ServiceThread;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNandswapThread(Lcom/android/server/chimera/PerProcessNandswap;)Lcom/android/server/ServiceThread;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mNandswapThread:Lcom/android/server/ServiceThread;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingNandswapActivityApp(Lcom/android/server/chimera/PerProcessNandswap;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mPendingNandswapActivityApp:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingNandswapActivityAppDelayed(Lcom/android/server/chimera/PerProcessNandswap;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mPendingNandswapActivityAppDelayed:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingNandswapNonActivityApp(Lcom/android/server/chimera/PerProcessNandswap;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mPendingNandswapNonActivityApp:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingNandswapNonActivityAppDelayed(Lcom/android/server/chimera/PerProcessNandswap;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mPendingNandswapNonActivityAppDelayed:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/PerProcessNandswap;)Lcom/android/server/chimera/SystemRepository;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdelayAlwaysRunningQuotaPPN(Lcom/android/server/chimera/PerProcessNandswap;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/chimera/PerProcessNandswap;->delayAlwaysRunningQuotaPPN(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitMemoryPressureDetectorNative(Lcom/android/server/chimera/PerProcessNandswap;II)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/chimera/PerProcessNandswap;->initMemoryPressureDetectorNative(II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misKeyApp(Lcom/android/server/chimera/PerProcessNandswap;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PerProcessNandswap;->isKeyApp(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misSamsungProtectApps(Lcom/android/server/chimera/PerProcessNandswap;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PerProcessNandswap;->isSamsungProtectApps(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mnandswapActivityAppDelayed(Lcom/android/server/chimera/PerProcessNandswap;Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PerProcessNandswap;->nandswapActivityAppDelayed(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtryToPerProcessNandswapByPsi(Lcom/android/server/chimera/PerProcessNandswap;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PerProcessNandswap;->tryToPerProcessNandswapByPsi(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateLastNandswapStats(Lcom/android/server/chimera/PerProcessNandswap;ILjava/lang/String;[J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/chimera/PerProcessNandswap;->updateLastNandswapStats(ILjava/lang/String;[J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwaitForMemoryPressure(Lcom/android/server/chimera/PerProcessNandswap;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/chimera/PerProcessNandswap;->waitForMemoryPressure()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetFAST_MADVISE_ENABLED()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/chimera/PerProcessNandswap;->FAST_MADVISE_ENABLED:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetNANDSWAP_EXCEPTION_PKGNAMES()[Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/chimera/PerProcessNandswap;->NANDSWAP_EXCEPTION_PKGNAMES:[Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetSTATUS_ALREADY_PPN()Ljava/lang/Integer;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/chimera/PerProcessNandswap;->STATUS_ALREADY_PPN:Ljava/lang/Integer;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetSTATUS_KEY_APP()Ljava/lang/Integer;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/chimera/PerProcessNandswap;->STATUS_KEY_APP:Ljava/lang/Integer;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/chimera/PerProcessNandswap;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smprefetchProcess(I)J
    .locals 2

    .line 0
    invoke-static {p0}, Lcom/android/server/chimera/PerProcessNandswap;->prefetchProcess(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smprefetchProcessFast(I)J
    .locals 2

    .line 0
    invoke-static {p0}, Lcom/android/server/chimera/PerProcessNandswap;->prefetchProcessFast(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static constructor <clinit>()V
    .locals 5

    .line 69
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FAST_MADVISE_ENABLED:Z

    sput-boolean v0, Lcom/android/server/chimera/PerProcessNandswap;->FAST_MADVISE_ENABLED:Z

    const-string/jumbo v0, "ro.product_ship"

    const-string v1, "false"

    .line 71
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/chimera/PerProcessNandswap;->IS_SHIP_BUILD:Z

    const-string/jumbo v0, "ro.boot.debug_level"

    const-string v1, "0x4f4c"

    .line 73
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/chimera/PerProcessNandswap;->IS_DEBUG_LEVEL_LOW:Z

    const/4 v0, 0x0

    .line 77
    sput-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__DebugEnabled:Ljava/lang/Boolean;

    .line 78
    sput-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__PolicyVersion:Ljava/lang/Integer;

    .line 79
    sput-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__MinSwapFreePercentage:Ljava/lang/Integer;

    .line 80
    sput-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__PrefetchActionEnabled:Ljava/lang/Boolean;

    .line 81
    sput-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__WritebackOnBGEnabled:Ljava/lang/Boolean;

    .line 82
    sput-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__WritebackOnFreezeEnabled:Ljava/lang/Boolean;

    const/4 v1, 0x0

    .line 188
    sput v1, Lcom/android/server/chimera/PerProcessNandswap;->__SlotCount:I

    .line 189
    sput-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__SlotCountMap:Ljava/util/ArrayList;

    .line 328
    sput-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__PsiEnabled:Ljava/lang/Boolean;

    .line 329
    sput-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__PsiThrottlingMS:Ljava/lang/Integer;

    .line 330
    sput-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__PsiLowStallUS:Ljava/lang/Integer;

    .line 331
    sput-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__PsiHighStallUS:Ljava/lang/Integer;

    .line 361
    sput-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__PrefetchSupported:Ljava/lang/Boolean;

    const-string v2, "com.sec.android.gallery3d"

    const-string v3, "com.samsung.android.messaging"

    const-string v4, "com.sec.android.app.camera"

    .line 388
    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/chimera/PerProcessNandswap;->NANDSWAP_EXCEPTION_PKGNAMES:[Ljava/lang/String;

    .line 394
    sput-object v0, Lcom/android/server/chimera/PerProcessNandswap;->INSTANCE:Lcom/android/server/chimera/PerProcessNandswap;

    .line 460
    sput v1, Lcom/android/server/chimera/PerProcessNandswap;->mAlwaysRunningQuotaPPNTriggerCnt:I

    .line 461
    sput v1, Lcom/android/server/chimera/PerProcessNandswap;->mAlwaysRunningQuotaPPNCnt:I

    .line 512
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/PerProcessNandswap;->STATUS_ALREADY_PPN:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 513
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/PerProcessNandswap;->STATUS_KEY_APP:Ljava/lang/Integer;

    .line 516
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->staticInitialize()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->__KeyAppEnable:Ljava/lang/Boolean;

    .line 86
    iput-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->__QuickSwapEnable:Ljava/lang/Boolean;

    .line 89
    iput-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->__PageoutCachedEmptyEnable:Ljava/lang/Boolean;

    .line 465
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/chimera/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 467
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/chimera/PerProcessNandswap;->mPendingNandswapNonActivityApp:Ljava/util/ArrayList;

    .line 470
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/chimera/PerProcessNandswap;->mPendingNandswapNonActivityAppDelayed:Ljava/util/ArrayList;

    .line 473
    iput-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mNandswapThread:Lcom/android/server/ServiceThread;

    .line 474
    iput-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mMsgThread:Lcom/android/server/ServiceThread;

    .line 475
    iput-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mMemoryPressureDetector:Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;

    .line 477
    iput-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mNandswapHandler:Landroid/os/Handler;

    .line 478
    iput-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mMsgHandler:Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;

    .line 484
    new-instance v0, Lcom/android/server/chimera/PerProcessNandswap$1;

    invoke-direct {v0, p0}, Lcom/android/server/chimera/PerProcessNandswap$1;-><init>(Lcom/android/server/chimera/PerProcessNandswap;)V

    iput-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mLastNandswapStats:Ljava/util/LinkedHashMap;

    .line 498
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mPendingNandswapActivityApp:Ljava/util/ArrayList;

    .line 500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mPendingNandswapActivityAppDelayed:Ljava/util/ArrayList;

    .line 505
    new-instance v0, Lcom/android/server/chimera/PerProcessNandswap$2;

    invoke-direct {v0, p0}, Lcom/android/server/chimera/PerProcessNandswap$2;-><init>(Lcom/android/server/chimera/PerProcessNandswap;)V

    iput-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mKeyApps:Ljava/util/Map;

    return-void
.end method

.method private static native __compactProcessForWriteback(II)J
.end method

.method private static native __compactProcessForWritebackFast(II)J
.end method

.method private static native __setWriteBoosterPath()Z
.end method

.method public static compactProcessForWriteback(II)J
    .locals 1

    .line 695
    sget-boolean v0, Lcom/android/server/chimera/PerProcessNandswap;->FAST_MADVISE_ENABLED:Z

    if-eqz v0, :cond_0

    .line 696
    invoke-static {p0, p1}, Lcom/android/server/chimera/PerProcessNandswap;->__compactProcessForWritebackFast(II)J

    move-result-wide p0

    goto :goto_0

    .line 698
    :cond_0
    invoke-static {p0, p1}, Lcom/android/server/chimera/PerProcessNandswap;->__compactProcessForWriteback(II)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static final decideSlotCount()Z
    .locals 7

    .line 194
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 196
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 197
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    const-wide/16 v2, 0x7f

    add-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43000000    # 128.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/lit16 v0, v0, 0x80

    .line 199
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getSlotCountMap()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 200
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 203
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcom/android/server/chimera/PerProcessNandswap;->__SlotCount:I

    move v3, v2

    .line 204
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 205
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    if-nez v4, :cond_1

    .line 207
    sget-object v4, Lcom/android/server/chimera/PerProcessNandswap;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid slotCountMap item: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    sput v2, Lcom/android/server/chimera/PerProcessNandswap;->__SlotCount:I

    goto :goto_2

    .line 211
    :cond_1
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 212
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit16 v5, v5, 0x400

    if-lt v0, v5, :cond_2

    .line 214
    sput v4, Lcom/android/server/chimera/PerProcessNandswap;->__SlotCount:I

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 201
    :cond_3
    :goto_1
    sget-object v1, Lcom/android/server/chimera/PerProcessNandswap;->TAG:Ljava/lang/String;

    const-string v2, "invalid slotCountMap"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_4
    :goto_2
    sget-object v1, Lcom/android/server/chimera/PerProcessNandswap;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "swap_total: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", slot_count: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/chimera/PerProcessNandswap;->__SlotCount:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public static dumpMemoryItems(Ljava/io/PrintWriter;Ljava/util/List;)V
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    .line 771
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 772
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/chimera/PerProcessNandswap$MemoryItem;

    .line 773
    iget-wide v3, v2, Lcom/android/server/chimera/PerProcessNandswap$MemoryItem;->writeback:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 774
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/chimera/PerProcessNandswap$MemoryItem;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v2, Lcom/android/server/chimera/PerProcessNandswap$MemoryItem;->writeback:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 776
    iget-object v3, v2, Lcom/android/server/chimera/PerProcessNandswap$MemoryItem;->subitems:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 777
    invoke-static {v3}, Lcom/android/server/chimera/PerProcessNandswap;->sortMemoryItems(Ljava/util/List;)V

    move v3, v0

    .line 778
    :goto_1
    iget-object v5, v2, Lcom/android/server/chimera/PerProcessNandswap$MemoryItem;->subitems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 779
    iget-object v5, v2, Lcom/android/server/chimera/PerProcessNandswap$MemoryItem;->subitems:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/chimera/PerProcessNandswap$MemoryItem;

    const-string v6, "        "

    .line 780
    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 781
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v5, Lcom/android/server/chimera/PerProcessNandswap$MemoryItem;->label:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lcom/android/server/chimera/PerProcessNandswap$MemoryItem;->writeback:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v5, Lcom/android/server/chimera/PerProcessNandswap$MemoryItem;->swap:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/chimera/PerProcessNandswap$MemoryItem;->ppnState:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lcom/android/server/chimera/PerProcessNandswap$MemoryItem;->lastNandswapTimeDiff:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/chimera/PerProcessNandswap;
    .locals 2

    const-class v0, Lcom/android/server/chimera/PerProcessNandswap;

    monitor-enter v0

    .line 532
    :try_start_0
    sget-object v1, Lcom/android/server/chimera/PerProcessNandswap;->INSTANCE:Lcom/android/server/chimera/PerProcessNandswap;

    if-nez v1, :cond_0

    .line 533
    new-instance v1, Lcom/android/server/chimera/PerProcessNandswap;

    invoke-direct {v1}, Lcom/android/server/chimera/PerProcessNandswap;-><init>()V

    sput-object v1, Lcom/android/server/chimera/PerProcessNandswap;->INSTANCE:Lcom/android/server/chimera/PerProcessNandswap;

    .line 535
    :cond_0
    sget-object v1, Lcom/android/server/chimera/PerProcessNandswap;->INSTANCE:Lcom/android/server/chimera/PerProcessNandswap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final getMinSwapFreePercentage()I
    .locals 2

    .line 131
    sget-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__MinSwapFreePercentage:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ro.sys.kernelmemory.nandswap.min_swap_free_percentage"

    const/4 v1, 0x2

    .line 132
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__MinSwapFreePercentage:Ljava/lang/Integer;

    .line 133
    :cond_0
    sget-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__MinSwapFreePercentage:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static final getPolicyVersion()I
    .locals 4

    .line 117
    sget-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__PolicyVersion:Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 118
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isPrefetchSupported()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string/jumbo v3, "ro.sys.kernelmemory.nandswap.policy_version"

    .line 119
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcom/android/server/chimera/PerProcessNandswap;->__PolicyVersion:Ljava/lang/Integer;

    .line 120
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v2, :cond_1

    sget-object v2, Lcom/android/server/chimera/PerProcessNandswap;->__PolicyVersion:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 121
    :cond_1
    sget-object v1, Lcom/android/server/chimera/PerProcessNandswap;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid policy_version ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/chimera/PerProcessNandswap;->__PolicyVersion:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ").Reset it as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__PolicyVersion:Ljava/lang/Integer;

    .line 126
    :cond_2
    sget-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__PolicyVersion:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static final getPsiHighStallUS()I
    .locals 2

    .line 356
    sget-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__PsiHighStallUS:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ro.sys.kernelmemory.nandswap.psi_high_stall_us"

    const v1, 0x17318

    .line 357
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__PsiHighStallUS:Ljava/lang/Integer;

    .line 358
    :cond_0
    sget-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__PsiHighStallUS:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static final getPsiLowStallUS()I
    .locals 2

    .line 349
    sget-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__PsiLowStallUS:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ro.sys.kernelmemory.nandswap.psi_low_stall_us"

    const v1, 0x13880

    .line 350
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__PsiLowStallUS:Ljava/lang/Integer;

    .line 351
    :cond_0
    sget-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__PsiLowStallUS:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static final getPsiThrottlingMS()I
    .locals 2

    .line 342
    sget-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__PsiThrottlingMS:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ro.sys.kernelmemory.nandswap.psi_throttling_ms"

    const/16 v1, 0x1388

    .line 343
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__PsiThrottlingMS:Ljava/lang/Integer;

    .line 344
    :cond_0
    sget-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__PsiThrottlingMS:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static final getSlotCount()I
    .locals 1

    .line 191
    sget v0, Lcom/android/server/chimera/PerProcessNandswap;->__SlotCount:I

    return v0
.end method

.method public static final getSlotCountMap()Ljava/util/ArrayList;
    .locals 2

    .line 241
    sget-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__SlotCountMap:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 243
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getPolicyVersion()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const-string v0, "default"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const-string/jumbo v1, "ro.sys.kernelmemory.nandswap.slot_count_map"

    .line 242
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-static {v0}, Lcom/android/server/chimera/PerProcessNandswap;->stringToSlotCountMap(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__SlotCountMap:Ljava/util/ArrayList;

    .line 246
    :cond_1
    sget-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__SlotCountMap:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static final getSlotCountMapString()Ljava/lang/String;
    .locals 6

    .line 309
    sget-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__SlotCountMap:Ljava/util/ArrayList;

    const-string v1, ""

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 311
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/chimera/PerProcessNandswap;->__SlotCountMap:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 312
    :goto_0
    sget-object v3, Lcom/android/server/chimera/PerProcessNandswap;->__SlotCountMap:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 313
    sget-object v3, Lcom/android/server/chimera/PerProcessNandswap;->__SlotCountMap:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    if-nez v3, :cond_1

    return-object v1

    :cond_1
    const-string v4, ","

    .line 316
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 317
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 319
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 321
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public static getWritebackSizePid(I)[J
    .locals 10

    const/4 v0, 0x0

    if-gtz p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "Swap:"

    const-string v2, "Writeback:"

    .line 724
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 727
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/smaps_rollup"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    new-array v3, v2, [J

    const/4 v4, 0x1

    .line 731
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    .line 733
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 734
    aget-object v8, v1, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    const-string v8, "\\s+"

    .line 736
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 737
    array-length v8, v7

    const/4 v9, 0x3

    if-ne v8, v9, :cond_3

    .line 738
    aget-object v7, v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    aput-wide v7, v3, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    add-int/lit8 v6, v6, 0x1

    if-ne v6, v2, :cond_1

    .line 745
    :cond_4
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 731
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 746
    :catch_0
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 747
    sget-object v1, Lcom/android/server/chimera/PerProcessNandswap;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to read "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    aget-wide v1, v3, v4

    const-wide/16 v4, 0x0

    cmp-long p0, v1, v4

    if-nez p0, :cond_6

    goto :goto_3

    :cond_6
    move-object v0, v3

    :goto_3
    return-object v0
.end method

.method private native initMemoryPressureDetectorNative(II)I
.end method

.method public static final isDebugEnabled()Z
    .locals 2

    .line 94
    sget-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__DebugEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ro.sys.kernelmemory.nandswap.debug"

    const/4 v1, 0x0

    .line 95
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__DebugEnabled:Ljava/lang/Boolean;

    .line 96
    :cond_0
    sget-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__DebugEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static final isPrefetchActionEnabled()Z
    .locals 2

    .line 137
    sget-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__PrefetchActionEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 139
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getPolicyVersion()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "ro.sys.kernelmemory.nandswap.prefetch_action"

    .line 138
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__PrefetchActionEnabled:Ljava/lang/Boolean;

    .line 140
    :cond_1
    sget-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__PrefetchActionEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static final isPrefetchSupported()Z
    .locals 7

    .line 363
    sget-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__PrefetchSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 365
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__PrefetchSupported:Ljava/lang/Boolean;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 367
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 369
    sget-boolean v2, Lcom/android/server/chimera/PerProcessNandswap;->FAST_MADVISE_ENABLED:Z

    if-eqz v2, :cond_0

    .line 370
    invoke-static {v1}, Lcom/android/server/chimera/PerProcessNandswap;->prefetchProcessFast(I)J

    move-result-wide v2

    goto :goto_1

    .line 372
    :cond_0
    invoke-static {v1}, Lcom/android/server/chimera/PerProcessNandswap;->prefetchProcess(I)J

    move-result-wide v2

    .line 375
    :goto_1
    sget-object v4, Lcom/android/server/chimera/PerProcessNandswap;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "prefetch trial: pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") ret="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v5, 0x0

    cmp-long v1, v2, v5

    if-lez v1, :cond_1

    .line 377
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v1, Lcom/android/server/chimera/PerProcessNandswap;->__PrefetchSupported:Ljava/lang/Boolean;

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prefetch supported ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    :cond_2
    :goto_2
    sget-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__PrefetchSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 383
    sget-object v0, Lcom/android/server/chimera/PerProcessNandswap;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "prefetch not supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_3
    sget-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__PrefetchSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static final isPsiEnabled()Z
    .locals 2

    .line 334
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getPolicyVersion()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 335
    :goto_0
    sget-object v1, Lcom/android/server/chimera/PerProcessNandswap;->__PsiEnabled:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    const-string/jumbo v1, "ro.sys.kernelmemory.nandswap.psi"

    .line 336
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__PsiEnabled:Ljava/lang/Boolean;

    .line 337
    :cond_1
    sget-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__PsiEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static final isWritebackOnBGEnabled()Z
    .locals 2

    .line 144
    sget-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__WritebackOnBGEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 146
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getPolicyVersion()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "ro.sys.kernelmemory.nandswap.writeback_on_bg"

    .line 145
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__WritebackOnBGEnabled:Ljava/lang/Boolean;

    .line 147
    :cond_1
    sget-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__WritebackOnBGEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static final isWritebackOnFreezeEnabled()Z
    .locals 2

    .line 151
    sget-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__WritebackOnFreezeEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 153
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getPolicyVersion()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "ro.sys.kernelmemory.nandswap.writeback_on_bg"

    .line 152
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__WritebackOnFreezeEnabled:Ljava/lang/Boolean;

    .line 154
    :cond_1
    sget-object v0, Lcom/android/server/chimera/PerProcessNandswap;->__WritebackOnFreezeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static native prefetchProcess(I)J
.end method

.method private static native prefetchProcessFast(I)J
.end method

.method public static sortMemoryItems(Ljava/util/List;)V
    .locals 1

    .line 757
    new-instance v0, Lcom/android/server/chimera/PerProcessNandswap$3;

    invoke-direct {v0}, Lcom/android/server/chimera/PerProcessNandswap$3;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public static staticInitialize()V
    .locals 2

    .line 525
    sget-object v0, Lcom/android/server/chimera/PerProcessNandswap;->TAG:Ljava/lang/String;

    const-string v1, "Static Initialization of PerProcessNandswap"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static stringToSlotCountMap(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12

    .line 249
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getPolicyVersion()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const-string v0, "5,6,8,8,12"

    goto :goto_0

    :cond_0
    const-string v0, "5,6,7,8,9"

    .line 251
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    if-eqz p0, :cond_7

    .line 253
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v3, "default"

    .line 262
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object p0, v0

    :cond_2
    const-string v0, ","

    .line 266
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 267
    array-length v3, v0

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6

    .line 272
    sget-object v3, Lcom/android/server/chimera/PerProcessNandswap;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "slot_cout_map: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "Invalid slot count: "

    const-string v5, " in "

    if-ltz v3, :cond_5

    const/16 v6, 0x64

    if-ge v3, v6, :cond_5

    .line 279
    :try_start_1
    new-instance v7, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v2

    move v8, v7

    .line 283
    :goto_1
    array-length v9, v0

    div-int/lit8 v9, v9, 0x2

    if-ge v7, v9, :cond_8

    mul-int/lit8 v9, v7, 0x2

    add-int/lit8 v10, v9, 0x1

    .line 284
    aget-object v10, v0, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v9, v9, 0x2

    .line 285
    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-lez v10, :cond_4

    if-ge v10, v6, :cond_4

    if-ge v8, v10, :cond_4

    if-ltz v9, :cond_3

    if-ge v9, v6, :cond_3

    if-ge v3, v9, :cond_3

    .line 293
    new-instance v3, Landroid/util/Pair;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v3, v8, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    move v3, v9

    move v8, v10

    goto :goto_1

    .line 291
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_4
    new-instance v0, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid thresholdGB: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_5
    new-instance v0, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_6
    new-instance v0, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid slot_count_map: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_7
    :goto_2
    sget-object p0, Lcom/android/server/chimera/PerProcessNandswap;->TAG:Ljava/lang/String;

    const-string v0, "Empty slot_count_map"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 258
    new-instance p0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 300
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 303
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 304
    new-instance p0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    return-object v1
.end method

.method private native waitForMemoryPressure()I
.end method


# virtual methods
.method public checkProcessStatusForNandswap(Ljava/lang/String;II)V
    .locals 2

    .line 1885
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;

    if-nez v0, :cond_0

    .line 1887
    new-instance v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;-><init>(Lcom/android/server/chimera/PerProcessNandswap;Ljava/lang/String;II)V

    .line 1888
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1890
    :cond_0
    iput p3, v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->adj:I

    :goto_0
    return-void
.end method

.method public final delayAlwaysRunningQuotaPPN(J)V
    .locals 2

    .line 1905
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mNandswapHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1906
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1907
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mNandswapHandler:Landroid/os/Handler;

    const-wide/16 p1, 0x1388

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    const-string v0, " "

    const-string/jumbo v1, "quickswap"

    :try_start_0
    const-string v2, "== PerProcessNandswap dump start =="

    .line 819
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 821
    array-length v2, p2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1c

    const-string/jumbo v2, "writeback"

    .line 822
    aget-object v4, p2, v3

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz v2, :cond_4

    .line 823
    sget-boolean v1, Lcom/android/server/chimera/PerProcessNandswap;->IS_SHIP_BUILD:Z

    if-nez v1, :cond_3

    .line 824
    iget-boolean v1, p0, Lcom/android/server/chimera/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    if-eqz v1, :cond_20

    array-length v1, p2

    if-lt v1, v5, :cond_20

    .line 825
    aget-object v1, p2, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 826
    array-length v2, p2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    aget-object p2, p2, v5

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v5

    :goto_0
    if-lez p2, :cond_2

    if-le p2, v5, :cond_1

    goto :goto_1

    :cond_1
    move v5, p2

    .line 831
    :cond_2
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeback start "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 832
    invoke-static {v1, v5}, Lcom/android/server/chimera/PerProcessNandswap;->compactProcessForWriteback(II)J

    move-result-wide v2

    .line 833
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeback end "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ret:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    and-int/lit8 p2, v5, 0x2

    if-eqz p2, :cond_20

    .line 837
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;

    if-eqz p0, :cond_20

    .line 839
    iput v4, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->ppnState:I

    .line 840
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "changed ppnState "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_3
    const-string/jumbo p0, "writeback cmd is not supported with ship build"

    .line 845
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_4
    const-string/jumbo v0, "prefetch"

    .line 847
    aget-object v2, p2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 848
    sget-boolean v0, Lcom/android/server/chimera/PerProcessNandswap;->IS_SHIP_BUILD:Z

    if-nez v0, :cond_6

    .line 849
    iget-boolean p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    if-eqz p0, :cond_20

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isPrefetchActionEnabled()Z

    move-result p0

    if-eqz p0, :cond_20

    array-length p0, p2

    if-ne p0, v5, :cond_20

    .line 850
    aget-object p0, p2, v4

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 852
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "prefetch start "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 853
    sget-boolean p2, Lcom/android/server/chimera/PerProcessNandswap;->FAST_MADVISE_ENABLED:Z

    if-eqz p2, :cond_5

    .line 854
    invoke-static {p0}, Lcom/android/server/chimera/PerProcessNandswap;->prefetchProcessFast(I)J

    move-result-wide v0

    goto :goto_2

    .line 856
    :cond_5
    invoke-static {p0}, Lcom/android/server/chimera/PerProcessNandswap;->prefetchProcess(I)J

    move-result-wide v0

    .line 859
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prefetch end "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ret="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_6
    const-string/jumbo p0, "prefetch cmd is not supported with ship build"

    .line 862
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_7
    const-string/jumbo v0, "quotaPPN"

    .line 864
    aget-object v2, p2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 865
    sget-boolean v0, Lcom/android/server/chimera/PerProcessNandswap;->IS_SHIP_BUILD:Z

    if-nez v0, :cond_20

    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAlwaysRunningQuotaPPN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p2, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 867
    aget-object p2, p2, v4

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 868
    invoke-virtual {p0, v0, v1}, Lcom/android/server/chimera/PerProcessNandswap;->handleAlwaysRunningQuotaPPN(J)V

    goto/16 :goto_4

    .line 872
    :cond_8
    aget-object v0, p2, v3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 873
    sget-boolean p2, Lcom/android/server/chimera/PerProcessNandswap;->IS_SHIP_BUILD:Z

    if-nez p2, :cond_20

    .line 874
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mQuickSwap:Lcom/android/server/chimera/QuickSwap;

    if-nez p0, :cond_9

    const-string/jumbo p0, "quickswap not enable!"

    .line 875
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 877
    :cond_9
    invoke-virtual {p0, v3}, Lcom/android/server/chimera/QuickSwap;->tryQuickSwap(I)Z

    move-result p0

    .line 878
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "quickswap trigger ret="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_a
    const-string/jumbo v0, "setprop"

    .line 883
    aget-object v2, p2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 884
    sget-boolean v0, Lcom/android/server/chimera/PerProcessNandswap;->IS_SHIP_BUILD:Z

    if-nez v0, :cond_1b

    .line 885
    array-length v0, p2

    if-lt v0, v5, :cond_1a

    aget-object v0, p2, v4

    if-eqz v0, :cond_1a

    aget-object p2, p2, v5

    if-eqz p2, :cond_1a

    const-string v2, "debug"

    .line 888
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 889
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/android/server/chimera/PerProcessNandswap;->__DebugEnabled:Ljava/lang/Boolean;

    goto/16 :goto_3

    :cond_b
    const-string/jumbo v2, "slot_count_map"

    .line 890
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 891
    invoke-static {p2}, Lcom/android/server/chimera/PerProcessNandswap;->stringToSlotCountMap(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/android/server/chimera/PerProcessNandswap;->__SlotCountMap:Ljava/util/ArrayList;

    .line 893
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->decideSlotCount()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getSlotCount()I

    move-result v1

    if-lez v1, :cond_18

    .line 894
    invoke-virtual {p0}, Lcom/android/server/chimera/PerProcessNandswap;->initThreadAndHandler()V

    goto/16 :goto_3

    :cond_c
    const-string/jumbo v2, "psi"

    .line 895
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 896
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/server/chimera/PerProcessNandswap;->__PsiEnabled:Ljava/lang/Boolean;

    .line 897
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isPsiEnabled()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 898
    invoke-virtual {p0}, Lcom/android/server/chimera/PerProcessNandswap;->initThreadAndHandler()V

    goto/16 :goto_3

    :cond_d
    const-string/jumbo v2, "psi_throttling_ms"

    .line 899
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 900
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/server/chimera/PerProcessNandswap;->__PsiThrottlingMS:Ljava/lang/Integer;

    .line 901
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mMemoryPressureDetector:Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getPsiThrottlingMS()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;->-$$Nest$msetTrialThrottlingMS(Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;I)V

    goto/16 :goto_3

    :cond_e
    const-string/jumbo v2, "prefetch_action"

    .line 902
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 903
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/android/server/chimera/PerProcessNandswap;->__PrefetchActionEnabled:Ljava/lang/Boolean;

    goto/16 :goto_3

    :cond_f
    const-string/jumbo v2, "writeback_on_bg"

    .line 904
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 905
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/android/server/chimera/PerProcessNandswap;->__WritebackOnBGEnabled:Ljava/lang/Boolean;

    goto/16 :goto_3

    :cond_10
    const-string/jumbo v2, "writeback_on_freeze"

    .line 906
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 907
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/android/server/chimera/PerProcessNandswap;->__WritebackOnFreezeEnabled:Ljava/lang/Boolean;

    goto/16 :goto_3

    :cond_11
    const-string/jumbo v2, "key_app"

    .line 908
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 909
    invoke-virtual {p0}, Lcom/android/server/chimera/PerProcessNandswap;->isKeyAppEnable()Z

    move-result v1

    .line 910
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eq v2, v1, :cond_18

    if-eqz v1, :cond_12

    .line 913
    iget-object v1, p0, Lcom/android/server/chimera/PerProcessNandswap;->mKeyApps:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 915
    :cond_12
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/chimera/PerProcessNandswap;->__KeyAppEnable:Ljava/lang/Boolean;

    goto :goto_3

    .line 919
    :cond_13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 920
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/chimera/PerProcessNandswap;->__QuickSwapEnable:Ljava/lang/Boolean;

    .line 921
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 922
    iget-object v1, p0, Lcom/android/server/chimera/PerProcessNandswap;->mQuickSwap:Lcom/android/server/chimera/QuickSwap;

    if-nez v1, :cond_18

    .line 923
    new-instance v1, Lcom/android/server/chimera/QuickSwap;

    iget-object v2, p0, Lcom/android/server/chimera/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-direct {v1, p0, v2}, Lcom/android/server/chimera/QuickSwap;-><init>(Lcom/android/server/chimera/PerProcessNandswap;Lcom/android/server/chimera/SystemRepository;)V

    iput-object v1, p0, Lcom/android/server/chimera/PerProcessNandswap;->mQuickSwap:Lcom/android/server/chimera/QuickSwap;

    goto :goto_3

    .line 926
    :cond_14
    iget-object v1, p0, Lcom/android/server/chimera/PerProcessNandswap;->mQuickSwap:Lcom/android/server/chimera/QuickSwap;

    if-eqz v1, :cond_18

    .line 927
    invoke-virtual {v1}, Lcom/android/server/chimera/QuickSwap;->unRegisterBroadcast()V

    const/4 v1, 0x0

    .line 928
    iput-object v1, p0, Lcom/android/server/chimera/PerProcessNandswap;->mQuickSwap:Lcom/android/server/chimera/QuickSwap;

    goto :goto_3

    :cond_15
    const-string/jumbo v1, "quickswap."

    .line 931
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/server/chimera/PerProcessNandswap;->mQuickSwap:Lcom/android/server/chimera/QuickSwap;

    if-eqz v1, :cond_17

    .line 932
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 933
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mQuickSwap:Lcom/android/server/chimera/QuickSwap;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/chimera/QuickSwap;->setProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    const-string/jumbo p0, "reboot required to apply the quickswap config"

    .line 935
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_16
    const-string p0, "failed to apply the quickswap config"

    .line 937
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_17
    const-string/jumbo v1, "pageout_cached_empty"

    .line 940
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 941
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/chimera/PerProcessNandswap;->__PageoutCachedEmptyEnable:Ljava/lang/Boolean;

    .line 946
    :cond_18
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set property "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " done"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 943
    :cond_19
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "invalid key for ppnandswap setprop: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1a
    const-string/jumbo p0, "usage: dumpsys activity ppnandswap setprop <key> <value>"

    .line 948
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1b
    const-string/jumbo p0, "setprop cmd is not supported with ship build"

    .line 951
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1c
    const-string p2, "Configurations"

    .line 955
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  feature enable: true"

    .line 956
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 957
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  debug: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 958
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  min_swap_free_percentage: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getMinSwapFreePercentage()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 959
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  policy_version: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getPolicyVersion()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 960
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    slot_count_map: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getSlotCountMapString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 961
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    writeback_on_bg: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isWritebackOnBGEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 962
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    writeback_on_freeze: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isWritebackOnFreezeEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 963
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    pageout_cached_empty: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/chimera/PerProcessNandswap;->isPageoutCachedEmptyEnable()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 964
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    psi: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isPsiEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 965
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isPsiEnabled()Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 966
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "      psi_throttling_ms: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getPsiThrottlingMS()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 967
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "      psi_low_stall_us: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getPsiLowStallUS()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 968
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "      psi_high_stall_us: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getPsiHighStallUS()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 970
    :cond_1d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    key app enable: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/chimera/PerProcessNandswap;->isKeyAppEnable()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 971
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    writeback enable: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 972
    iget-boolean p2, p0, Lcom/android/server/chimera/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    if-eqz p2, :cond_1e

    .line 974
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "      writeback limit enable: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap$ZramInfo;->-$$Nest$smisWritebackLimitEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 974
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 976
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "      prefetch_action: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isPrefetchActionEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 977
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "      quota: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap$ZramInfo;->-$$Nest$smreadZramWritebackLimit()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 978
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "      pending cached apps to be PPR count="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mPendingNandswapActivityApp:Ljava/util/ArrayList;

    .line 979
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 978
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 980
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "      pending & delayed cached apps to be PPR count="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mPendingNandswapActivityAppDelayed:Ljava/util/ArrayList;

    .line 981
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 980
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 985
    :cond_1e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  quickswap enable: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/chimera/PerProcessNandswap;->isQuickSwapEnable()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 986
    invoke-virtual {p0}, Lcom/android/server/chimera/PerProcessNandswap;->isQuickSwapEnable()Z

    move-result p2

    if-eqz p2, :cond_1f

    iget-object p2, p0, Lcom/android/server/chimera/PerProcessNandswap;->mQuickSwap:Lcom/android/server/chimera/QuickSwap;

    if-eqz p2, :cond_1f

    .line 987
    invoke-virtual {p2, p1}, Lcom/android/server/chimera/QuickSwap;->dump(Ljava/io/PrintWriter;)V

    .line 991
    :cond_1f
    iget-boolean p2, p0, Lcom/android/server/chimera/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    if-eqz p2, :cond_20

    .line 992
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PerProcessNandswap;->dumpProcessList(Ljava/io/PrintWriter;)V

    const-string p0, "\nPPNandswap history"

    .line 993
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 994
    invoke-static {p1}, Lcom/android/server/chimera/PerProcessNandswap$NandswapLogger;->print(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    const-string p0, "failed to dumpInfo"

    .line 998
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_20
    :goto_4
    const-string p0, "\n== PerProcessNandswap dump end =="

    .line 1000
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final dumpProcessList(Ljava/io/PrintWriter;)V
    .locals 2

    .line 800
    sget-boolean v0, Lcom/android/server/chimera/PerProcessNandswap;->IS_SHIP_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/chimera/PerProcessNandswap;->IS_DEBUG_LEVEL_LOW:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "\nProcessList state"

    .line 803
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 805
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v0, Lcom/android/server/chimera/PerProcessNandswap$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/chimera/PerProcessNandswap$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/android/server/chimera/SystemRepository;->dumpProcessListForPPN(ILjava/util/function/BiFunction;)Ljava/util/List;

    move-result-object p0

    .line 808
    invoke-static {p1, p0}, Lcom/android/server/chimera/PerProcessNandswap;->dumpMemoryItems(Ljava/io/PrintWriter;Ljava/util/List;)V

    return-void
.end method

.method public final getActionFromAdj(II)I
    .locals 2

    .line 1105
    invoke-virtual {p0}, Lcom/android/server/chimera/PerProcessNandswap;->isPageoutCachedEmptyEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x10

    if-lt p2, p0, :cond_0

    const/16 p0, 0x13

    if-gt p2, p0, :cond_0

    const/16 p0, 0x384

    if-lt p1, p0, :cond_0

    const/16 p0, 0x3e7

    if-gt p1, p0, :cond_0

    const/16 p0, 0xe

    return p0

    .line 1111
    :cond_0
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->isQuotaEnable()Z

    move-result p0

    const/4 v0, 0x5

    const/16 v1, 0xfa

    if-nez p0, :cond_1

    if-lt p1, v1, :cond_1

    if-ne p2, v0, :cond_1

    const/16 p0, 0x8

    return p0

    :cond_1
    const/16 p0, -0x320

    if-eq p1, p0, :cond_7

    const/16 p0, -0x2bc

    if-eq p1, p0, :cond_7

    const/16 p0, 0x64

    if-eq p1, p0, :cond_6

    const/16 p0, 0xc8

    if-eq p1, p0, :cond_8

    const/16 p0, 0xe1

    if-eq p1, p0, :cond_5

    if-eq p1, v1, :cond_4

    const/16 p0, 0x1f4

    if-eq p1, p0, :cond_3

    const/16 p0, 0x320

    if-eq p1, p0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    goto :goto_0

    :cond_5
    const/4 v0, 0x4

    goto :goto_0

    :cond_6
    const/4 v0, 0x6

    goto :goto_0

    :cond_7
    const/4 v0, 0x7

    :cond_8
    :goto_0
    return v0
.end method

.method public final getFieldFromNandswapMap(I)[J
    .locals 3

    .line 791
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [J

    .line 795
    iget v0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->ppnState:I

    int-to-long v0, v0

    const/4 v2, 0x0

    aput-wide v0, p1, v2

    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->lastNandswapTime:J

    aput-wide v1, p1, v0

    return-object p1
.end method

.method public getSwapFreePercentage(Lcom/android/internal/util/MemInfoReader;)I
    .locals 7

    .line 1095
    invoke-virtual {p1}, Lcom/android/internal/util/MemInfoReader;->getSwapFreeSizeKb()J

    move-result-wide v0

    .line 1096
    invoke-virtual {p1}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    move-result-wide p0

    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    const-wide/16 v5, 0x64

    if-gtz v4, :cond_0

    move-wide v0, v2

    goto :goto_0

    :cond_0
    mul-long/2addr v0, v5

    .line 1097
    div-long/2addr v0, p0

    :goto_0
    cmp-long p0, v0, v2

    if-lez p0, :cond_1

    move-wide v2, v0

    :cond_1
    cmp-long p0, v2, v5

    if-gez p0, :cond_2

    move-wide v5, v2

    :cond_2
    long-to-int p0, v5

    return p0
.end method

.method public handleAlwaysRunningQuotaPPN(J)V
    .locals 2

    .line 1895
    invoke-virtual {p0}, Lcom/android/server/chimera/PerProcessNandswap;->isWritebackEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mNandswapHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 1899
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1900
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1901
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mNandswapHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public init(Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/ChimeraStrategy;)V
    .locals 4

    const/4 v0, 0x0

    .line 1034
    :try_start_0
    sget-object v1, Lcom/android/server/chimera/PerProcessNandswap;->TAG:Ljava/lang/String;

    const-string v2, "init start"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap$ZramInfo;->-$$Nest$smisWritebackEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const-string p1, "Writeback is disabled"

    .line 1037
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    iput-boolean v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    return-void

    .line 1043
    :cond_0
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->decideSlotCount()Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo p1, "swap_total not found"

    .line 1044
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iput-boolean v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    return-void

    .line 1049
    :cond_1
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->__setWriteBoosterPath()Z

    .line 1051
    iput-object p1, p0, Lcom/android/server/chimera/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 1052
    iput-object p2, p0, Lcom/android/server/chimera/PerProcessNandswap;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    .line 1054
    invoke-virtual {p0}, Lcom/android/server/chimera/PerProcessNandswap;->initThreadAndHandler()V

    .line 1057
    invoke-virtual {p0}, Lcom/android/server/chimera/PerProcessNandswap;->isQuickSwapEnable()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Lcom/android/server/chimera/QuickSwap;

    invoke-direct {p2, p0, p1}, Lcom/android/server/chimera/QuickSwap;-><init>(Lcom/android/server/chimera/PerProcessNandswap;Lcom/android/server/chimera/SystemRepository;)V

    iput-object p2, p0, Lcom/android/server/chimera/PerProcessNandswap;->mQuickSwap:Lcom/android/server/chimera/QuickSwap;

    :cond_2
    const/4 p1, 0x1

    .line 1060
    iput-boolean p1, p0, Lcom/android/server/chimera/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    .line 1062
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "WritebackEnabled: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap$ZramInfo;->-$$Nest$smisWritebackEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "PrefetchSupported: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isPrefetchSupported()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "WritebackLimitEnabled: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap$ZramInfo;->-$$Nest$smisWritebackLimitEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "WritebackQuotaAvailable: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap$ZramInfo;->isWritebackQuotaAvailable()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "quota: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap$ZramInfo;->-$$Nest$smreadZramWritebackLimit()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "policy_version: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getPolicyVersion()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  slot_count: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getSlotCount()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  psi: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isPsiEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  writeback_on_bg: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isWritebackOnBGEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  writeback_on_freeze: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isWritebackOnFreezeEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  prefetch_action: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isPrefetchActionEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "init success"

    .line 1074
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1076
    :catch_0
    sget-object p1, Lcom/android/server/chimera/PerProcessNandswap;->TAG:Ljava/lang/String;

    const-string p2, "init failed"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    iput-boolean v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    :goto_0
    return-void
.end method

.method public final initThreadAndHandler()V
    .locals 7

    .line 1004
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mNandswapThread:Lcom/android/server/ServiceThread;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1005
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v3, "PerProcessNandswapThread"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mNandswapThread:Lcom/android/server/ServiceThread;

    .line 1007
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1008
    new-instance v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;-><init>(Lcom/android/server/chimera/PerProcessNandswap;Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler-IA;)V

    iput-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mNandswapHandler:Landroid/os/Handler;

    .line 1010
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mNandswapThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {v0, v4}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 1015
    :cond_0
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getSlotCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1017
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mMsgThread:Lcom/android/server/ServiceThread;

    if-nez v0, :cond_1

    .line 1018
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v3, "PPNandswapMsgThread"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mMsgThread:Lcom/android/server/ServiceThread;

    .line 1020
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1021
    new-instance v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;

    invoke-direct {v0, p0, p0, v1}, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;-><init>(Lcom/android/server/chimera/PerProcessNandswap;Lcom/android/server/chimera/PerProcessNandswap;Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler-IA;)V

    iput-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mMsgHandler:Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;

    .line 1025
    :cond_1
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isPsiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mMemoryPressureDetector:Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;

    if-nez v0, :cond_2

    .line 1026
    new-instance v0, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;

    .line 1027
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getPsiThrottlingMS()I

    move-result v4

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getPsiLowStallUS()I

    move-result v5

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getPsiHighStallUS()I

    move-result v6

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;-><init>(Lcom/android/server/chimera/PerProcessNandswap;Lcom/android/server/chimera/PerProcessNandswap;III)V

    iput-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mMemoryPressureDetector:Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;

    :cond_2
    return-void
.end method

.method public isAppLaunch()Z
    .locals 0

    .line 1238
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isInAppLaunch()Z

    move-result p0

    return p0
.end method

.method public final isKeyApp(Ljava/lang/String;)Z
    .locals 4

    .line 1917
    invoke-virtual {p0}, Lcom/android/server/chimera/PerProcessNandswap;->isKeyAppEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1921
    :cond_0
    sget-object v0, Lcom/android/server/chimera/PerProcessNandswap;->STATUS_KEY_APP:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/server/chimera/PerProcessNandswap;->mKeyApps:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 1925
    :cond_1
    iget-object p1, p0, Lcom/android/server/chimera/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {p1}, Lcom/android/server/chimera/SystemRepository;->getAvailableMemory()J

    move-result-wide v2

    .line 1926
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/chimera/ChimeraStrategy;->getFreeMemTarget(J)J

    move-result-wide p0

    cmp-long p0, v2, p0

    if-lez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isKeyAppEnable()Z
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->__KeyAppEnable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ro.sys.kernelmemory.nandswap.key_app"

    const/4 v1, 0x0

    .line 159
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->__KeyAppEnable:Ljava/lang/Boolean;

    .line 161
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 163
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isPageoutCachedEmptyEnable()Z
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->__PageoutCachedEmptyEnable:Ljava/lang/Boolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 182
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getPolicyVersion()I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string/jumbo v3, "ro.sys.kernelmemory.nandswap.pageout_cached_empty"

    .line 181
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->__PageoutCachedEmptyEnable:Ljava/lang/Boolean;

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->__PageoutCachedEmptyEnable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {p0}, Lcom/android/server/chimera/SystemRepository;->useCompaction()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public isQuickSwapEnable()Z
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->__QuickSwapEnable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ro.sys.kernelmemory.nandswap.quickswap"

    const/4 v1, 0x0

    .line 170
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->__QuickSwapEnable:Ljava/lang/Boolean;

    .line 172
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 174
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isSamsungProtectApps(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "com.sec.android.app.launcher"

    .line 1911
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.samsung.android.honeyboard"

    .line 1912
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.android.systemui"

    .line 1913
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isWritebackEnabled()Z
    .locals 0

    .line 1091
    iget-boolean p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    return p0
.end method

.method public final nandswapActivityAppDelayed(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;)V
    .locals 2

    .line 1219
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mPendingNandswapActivityAppDelayed:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1220
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mNandswapHandler:Landroid/os/Handler;

    const/4 p1, 0x3

    .line 1221
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    .line 1220
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final nandswapNonActivityApp(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;II)V
    .locals 4

    .line 1192
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mPendingNandswapNonActivityApp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x14

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1193
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mPendingNandswapNonActivityApp:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1194
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mNandswapHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 1195
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 1194
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1198
    :cond_0
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1199
    sget-object p0, Lcom/android/server/chimera/PerProcessNandswap;->TAG:Ljava/lang/String;

    const-string p1, "Skipping send NANDSWAP_NON_ACTIVITY_APP_MSG"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyAppBecomeBG(ILjava/lang/String;I)V
    .locals 1

    .line 627
    :try_start_0
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isWritebackOnBGEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 631
    :cond_0
    new-instance v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;-><init>(Lcom/android/server/chimera/PerProcessNandswap;Ljava/lang/String;II)V

    .line 632
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mMsgHandler:Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;

    const/4 p1, 0x6

    const/4 p2, 0x0

    .line 633
    invoke-virtual {p0, p1, p2, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 632
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 636
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public notifyAppBecomeFrozen(ILjava/lang/String;I)V
    .locals 1

    .line 642
    :try_start_0
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isWritebackOnFreezeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 646
    :cond_0
    new-instance v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;-><init>(Lcom/android/server/chimera/PerProcessNandswap;Ljava/lang/String;II)V

    .line 647
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mMsgHandler:Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;

    const/4 p1, 0x7

    const/4 p2, 0x0

    .line 648
    invoke-virtual {p0, p1, p2, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 647
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 651
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public notifyDiedAppToPPR(I)V
    .locals 2

    .line 541
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 543
    :cond_0
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getSlotCount()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    .line 549
    :cond_1
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mMsgHandler:Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 550
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 549
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 553
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public notifyEntryAppToPPR(Ljava/lang/String;)V
    .locals 2

    .line 657
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 659
    :cond_0
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getSlotCount()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 664
    :cond_2
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mMsgHandler:Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 665
    invoke-virtual {p0, v0, v1, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 664
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 668
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public notifyReentryAppToPPR(I)V
    .locals 2

    .line 559
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 561
    :cond_0
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getSlotCount()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    .line 568
    :cond_1
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mMsgHandler:Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 569
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 568
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 572
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onOomAdjChanged(ILjava/lang/String;IIIIZJ)V
    .locals 9

    move v0, p3

    move v8, p4

    .line 579
    invoke-virtual {p0}, Lcom/android/server/chimera/PerProcessNandswap;->isWritebackEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez p7, :cond_1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p4

    move v5, p6

    move-wide/from16 v6, p8

    .line 585
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/chimera/PerProcessNandswap;->tryNandswapNonActivityApp(ILjava/lang/String;IIJ)V

    .line 589
    :cond_1
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getSlotCount()I

    move-result v1

    if-lez v1, :cond_4

    const/16 v1, 0x2bc

    if-ne v0, v1, :cond_2

    const/16 v1, 0x352

    if-lt v8, v1, :cond_2

    const/16 v1, 0x3e7

    if-gt v8, v1, :cond_2

    if-eqz p7, :cond_2

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    .line 597
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/chimera/PerProcessNandswap;->notifyAppBecomeBG(ILjava/lang/String;I)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    move v2, p1

    :goto_0
    const/4 v3, 0x5

    const/16 v4, 0xc8

    if-gt v0, v4, :cond_3

    move v0, p5

    if-le v0, v3, :cond_4

    :cond_3
    const/16 v0, 0x64

    if-lt v8, v0, :cond_4

    if-ge v8, v4, :cond_4

    move v0, p6

    if-ne v0, v3, :cond_4

    .line 606
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PerProcessNandswap;->notifyReentryAppToPPR(I)V

    :cond_4
    return-void
.end method

.method public onProcessFrozen(ILjava/lang/String;IZ)V
    .locals 1

    .line 612
    invoke-virtual {p0}, Lcom/android/server/chimera/PerProcessNandswap;->isWritebackEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 616
    :cond_0
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getSlotCount()I

    move-result v0

    if-lez v0, :cond_1

    const/16 v0, 0x352

    if-lt p3, v0, :cond_1

    const/16 v0, 0x3e7

    if-gt p3, v0, :cond_1

    if-eqz p4, :cond_1

    .line 620
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/chimera/PerProcessNandswap;->notifyAppBecomeFrozen(ILjava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public requestChangePPRState(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1226
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/chimera/PerProcessNandswap;->requestChangePPRState(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;II)V

    return-void
.end method

.method public final requestChangePPRState(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;II)V
    .locals 1

    .line 1230
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getSlotCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1231
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mMsgHandler:Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;

    const/4 v0, 0x1

    .line 1232
    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1231
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final shouldNandswapNonActivityApp(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;J)Z
    .locals 4

    .line 1178
    iget-wide v0, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->lastNandswapTime:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const-wide/32 v0, 0x83d60

    sub-long/2addr p2, v0

    .line 1183
    iput-wide p2, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->lastNandswapTime:J

    goto :goto_0

    :cond_0
    sub-long v0, p2, v0

    const-wide/32 v2, 0x927c0

    cmp-long p0, v0, v2

    if-lez p0, :cond_1

    .line 1186
    iput-wide p2, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->lastNandswapTime:J

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public tryNandswapNonActivityApp(ILjava/lang/String;IIJ)V
    .locals 8

    .line 1152
    :try_start_0
    invoke-virtual {p0, p3, p4}, Lcom/android/server/chimera/PerProcessNandswap;->getActionFromAdj(II)I

    move-result v0

    if-eqz v0, :cond_2

    .line 1154
    iget-object v1, p0, Lcom/android/server/chimera/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;

    if-nez v1, :cond_0

    .line 1156
    new-instance v1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p2

    move v5, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;-><init>(Lcom/android/server/chimera/PerProcessNandswap;Ljava/lang/String;III)V

    .line 1157
    iget-object p4, p0, Lcom/android/server/chimera/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p4, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1159
    :cond_0
    iput p3, v1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->adj:I

    .line 1162
    :goto_0
    invoke-virtual {p0, v1, p5, p6}, Lcom/android/server/chimera/PerProcessNandswap;->shouldNandswapNonActivityApp(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;J)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 1163
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 1164
    sget-object p4, Lcom/android/server/chimera/PerProcessNandswap;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p6, "nandswap "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, " pkg:"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, " pid:"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, " curAdj:"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    :cond_1
    invoke-virtual {p0, v1, p3, v0}, Lcom/android/server/chimera/PerProcessNandswap;->nandswapNonActivityApp(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1171
    :catch_0
    sget-object p0, Lcom/android/server/chimera/PerProcessNandswap;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "failed to tryNandswapNonActivityApp "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public tryQuickSwap(I)Z
    .locals 1

    .line 1083
    invoke-virtual {p0}, Lcom/android/server/chimera/PerProcessNandswap;->isQuickSwapEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mQuickSwap:Lcom/android/server/chimera/QuickSwap;

    if-nez p0, :cond_0

    goto :goto_0

    .line 1086
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/QuickSwap;->tryQuickSwap(I)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final tryToPerProcessNandswapByPsi(I)V
    .locals 3

    .line 2385
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getSlotCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isPsiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2386
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mMsgHandler:Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 2387
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mMsgHandler:Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final updateLastNandswapStats(ILjava/lang/String;[J)V
    .locals 2

    .line 494
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mLastNandswapStats:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mLastNandswapStats:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lcom/android/server/chimera/PerProcessNandswap$LastNandswapStats;

    invoke-direct {v0, p2, p3}, Lcom/android/server/chimera/PerProcessNandswap$LastNandswapStats;-><init>(Ljava/lang/String;[J)V

    invoke-virtual {p0, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
