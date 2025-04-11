.class public final Lcom/android/server/NandswapManager;
.super Landroid/app/job/JobService;
.source "NandswapManager.java"


# static fields
.field public static final SUPPORT_RAM_EXPAND_SWITCH:Z

.field public static final intentReceiver:Landroid/content/BroadcastReceiver;

.field public static isJdmDevice:Z

.field public static mClient:Lcom/android/server/NandswapManager$NandswapClient;

.field public static mContext:Landroid/content/Context;

.field public static mNandBigData:Lcom/android/server/NandswapManager$NandSwapBigdataManager;

.field public static final sNandswapManager:Landroid/content/ComponentName;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmNandBigData()Lcom/android/server/NandswapManager$NandSwapBigdataManager;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/NandswapManager;->mNandBigData:Lcom/android/server/NandswapManager$NandSwapBigdataManager;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smclearClientsBigdataInfo()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/android/server/NandswapManager;->clearClientsBigdataInfo()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetDefaultRamExpandSize()I
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/NandswapManager;->getDefaultRamExpandSize()I

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smgetMemInfo()Ljava/util/HashMap;
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/NandswapManager;->getMemInfo()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smgetRamExpandSize(Landroid/content/Context;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/NandswapManager;->getRamExpandSize(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smgetRamExpandSizeList(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/NandswapManager;->getRamExpandSizeList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smgetRamExpandSizePersistProp()I
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/NandswapManager;->getRamExpandSizePersistProp()I

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smisBackingDevSet()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/NandswapManager;->isBackingDevSet()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smputRamExpandSize(Landroid/content/Context;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/NandswapManager;->putRamExpandSize(Landroid/content/Context;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smsaveClientsBigdataInfoInReboot()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/android/server/NandswapManager;->saveClientsBigdataInfoInReboot()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smsetExpandSizeAndList(Landroid/content/Context;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/NandswapManager;->setExpandSizeAndList(Landroid/content/Context;I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 57
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/NandswapManager;

    .line 58
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/NandswapManager;->sNandswapManager:Landroid/content/ComponentName;

    const/4 v0, 0x0

    .line 89
    sput-object v0, Lcom/android/server/NandswapManager;->mContext:Landroid/content/Context;

    .line 90
    sput-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 91
    sput-object v0, Lcom/android/server/NandswapManager;->mNandBigData:Lcom/android/server/NandswapManager$NandSwapBigdataManager;

    const/4 v0, 0x1

    .line 92
    sput-boolean v0, Lcom/android/server/NandswapManager;->isJdmDevice:Z

    .line 101
    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v2, 0x1fc34

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/server/NandswapManager;->SUPPORT_RAM_EXPAND_SWITCH:Z

    .line 635
    new-instance v0, Lcom/android/server/NandswapManager$1;

    invoke-direct {v0}, Lcom/android/server/NandswapManager$1;-><init>()V

    sput-object v0, Lcom/android/server/NandswapManager;->intentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static clearClientsBigdataInfo()V
    .locals 1

    .line 528
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->isNandswapEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->initBigdataInfoProp()V

    :cond_0
    return-void
.end method

.method public static getAvailSizeList()Ljava/lang/String;
    .locals 3

    .line 173
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    const/16 v2, 0x1e

    shr-long/2addr v0, v2

    long-to-int v0, v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const-string v0, "2,4"

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    const-string v0, "2,4,6"

    goto :goto_0

    :cond_1
    const-string v0, "2,4,6,8"

    :goto_0
    return-object v0
.end method

.method public static getDefaultRamExpandSize()I
    .locals 3

    .line 153
    invoke-static {}, Lcom/android/server/NandswapManager;->getStorageSize()I

    move-result v0

    const-string/jumbo v1, "ro.sys.kernelmemory.nandswap.higher_max_size"

    const/4 v2, 0x0

    .line 155
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x100

    if-lt v0, v1, :cond_0

    const/16 v0, 0x2000

    return v0

    :cond_0
    const/16 v1, 0x20

    if-le v0, v1, :cond_1

    const/16 v0, 0x1000

    return v0

    :cond_1
    if-ne v0, v1, :cond_2

    const/16 v0, 0x800

    return v0

    :cond_2
    return v2
.end method

.method public static final getMemInfo()Ljava/util/HashMap;
    .locals 6

    .line 706
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 708
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/meminfo"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, ":"

    .line 712
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    .line 715
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 716
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\D+"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 718
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 721
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v2

    .line 708
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const-string v1, "NandswapManager"

    const-string v2, "Failed to read stats from /proc/meminfo"

    .line 722
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :goto_2
    return-object v0
.end method

.method public static getRamExpandSize(Landroid/content/Context;)I
    .locals 2

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "ram_expand_size"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getRamExpandSizeList(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "ram_expand_size_list"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRamExpandSizePersistProp()I
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    const-string/jumbo v1, "persist.sys.zram.ram_expand_size"

    .line 137
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "NandswapManager"

    const-string v2, "error on get SystemProperties"

    .line 139
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public static getStorageSize()I
    .locals 7

    const/4 v0, 0x0

    .line 387
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/partitions"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :try_start_1
    invoke-static {}, Lcom/android/server/NandswapManager;->isUfs()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ".*(sda|sdc)$"

    goto :goto_0

    :cond_0
    const-string v2, ".*(mmcblk0)$"

    :goto_0
    move v3, v0

    .line 391
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 392
    invoke-virtual {v4, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 393
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\s+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 394
    array-length v5, v4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    const/4 v5, 0x2

    .line 395
    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 397
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 401
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v2

    .line 387
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const-string v1, "NandswapManager"

    const-string v2, "Failed to read storage size from /proc/partitions"

    .line 402
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v0

    :goto_3
    if-nez v3, :cond_3

    return v0

    :cond_3
    const/high16 v0, 0x100000

    .line 410
    div-int/2addr v3, v0

    int-to-double v0, v3

    .line 411
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    shl-int v0, v1, v0

    return v0
.end method

.method public static initNandswapClient()V
    .locals 6

    const-string v0, "Init Nandswap Client"

    const-string v1, "NandswapManager"

    .line 464
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-static {}, Lcom/android/server/NandswapManager;->isRemainStorageLifeTime()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 468
    :cond_0
    invoke-static {}, Lcom/android/server/NandswapManager;->selectDailyQuota()I

    move-result v0

    const-string/jumbo v2, "persist.sys.zram.daily_quota"

    const/4 v3, -0x1

    .line 471
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 472
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "First boot, set daily quota..."

    .line 473
    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v4, "persist.sys.zram.daily_quota_remain"

    .line 476
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 477
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "First boot, set daily quota remaining..."

    .line 478
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/high16 v0, 0x40000

    .line 481
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x3

    .line 484
    sget-object v2, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    invoke-virtual {v2}, Lcom/android/server/NandswapManager$NandswapClient;->isNandswapEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 486
    sget-object v2, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    iput v0, v2, Lcom/android/server/NandswapManager$NandswapClient;->dailyQuota:I

    .line 487
    iput v1, v2, Lcom/android/server/NandswapManager$NandswapClient;->dailyQuotaLimit:I

    .line 490
    invoke-virtual {v2}, Lcom/android/server/NandswapManager$NandswapClient;->getQuotaSysNode()I

    move-result v0

    if-nez v0, :cond_3

    .line 491
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/NandswapManager$NandswapClient;->getQuotaRemainingProp(I)I

    move-result v0

    .line 492
    sget-object v1, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    invoke-virtual {v1, v0}, Lcom/android/server/NandswapManager$NandswapClient;->setQuotaSysNode(I)V

    :cond_3
    return-void
.end method

.method public static isBackingDevSet()Z
    .locals 4

    const/4 v0, 0x0

    .line 307
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/block/zram0/backing_dev"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    const/16 v3, 0x80

    .line 308
    invoke-static {v1, v3, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "none"

    .line 310
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    const-string v1, "NandswapManager"

    const-string v2, "exception on checking backing_dev /sys/block/zram0/backing_dev"

    .line 316
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isRemainStorageLifeTime()Z
    .locals 10

    const-string v0, ""

    .line 322
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/scsi_host/host0/lt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 323
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/ufs/lt"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v2, v4

    goto :goto_0

    :cond_1
    const-string v2, "/sys/block/mmcblk0/device/life_time"

    .line 333
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "try to check lifetime via "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NandswapManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 335
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x10

    invoke-static {v4, v5, v0}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v6, "\\s+"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v6, v1

    .line 336
    :goto_1
    array-length v7, v4

    const/4 v8, 0x1

    if-ge v6, v7, :cond_3

    .line 339
    aget-object v7, v4, v6

    const-string v9, "0x"

    invoke-virtual {v7, v9, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    const/16 v9, 0x8

    if-le v7, v9, :cond_2

    .line 341
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "abort: lifetime below 20%%(val=%d)"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    return v8

    .line 348
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isUfs()Z
    .locals 5

    const/4 v0, 0x0

    .line 355
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/sec/ufs/un"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 360
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v3, "/sys/class/sec/mmc/un"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 365
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v3, "/sys/class/scsi_host/host0/proc_name"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, ""

    const/16 v4, 0x40

    .line 368
    invoke-static {v1, v4, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "ufshcd"

    .line 369
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    return v2

    :catch_0
    const-string v1, "NandswapManager"

    const-string v2, "Failed to read /sys/class/scsi_host/host0/proc_name"

    .line 374
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method

.method public static isValidRamExpandSize(I)Z
    .locals 2

    .line 188
    invoke-static {}, Lcom/android/server/NandswapManager;->getAvailSizeList()Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_1

    .line 190
    rem-int/lit16 v1, p0, 0x400

    if-nez v1, :cond_0

    div-int/lit16 p0, p0, 0x400

    .line 191
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static makeNandswapBigdataManager(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 563
    :try_start_0
    new-instance v1, Lcom/android/server/NandswapManager$NandSwapBigdataManager;

    invoke-direct {v1, p0, v0}, Lcom/android/server/NandswapManager$NandSwapBigdataManager;-><init>(Landroid/content/Context;Lcom/android/server/NandswapManager$NandSwapBigdataManager-IA;)V

    sput-object v1, Lcom/android/server/NandswapManager;->mNandBigData:Lcom/android/server/NandswapManager$NandSwapBigdataManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected error while create bigdataManager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "NandswapManager"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    sput-object v0, Lcom/android/server/NandswapManager;->mNandBigData:Lcom/android/server/NandswapManager$NandSwapBigdataManager;

    const/4 p0, 0x0

    return p0
.end method

.method public static makeNandswapClient()Z
    .locals 3

    .line 551
    :try_start_0
    new-instance v0, Lcom/android/server/NandswapManager$NandswapClient;

    invoke-direct {v0}, Lcom/android/server/NandswapManager$NandswapClient;-><init>()V

    sput-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 552
    invoke-static {}, Lcom/android/server/NandswapManager;->initNandswapClient()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected error while create mClient: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NandswapManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 555
    sput-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    const/4 v0, 0x0

    return v0
.end method

.method public static putRamExpandSize(Landroid/content/Context;I)V
    .locals 1

    .line 120
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "ram_expand_size"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error on ram_expand_size: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NandswapManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static putRamExpandSizeList(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 128
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "ram_expand_size_list"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error on ram_expand_size_list "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NandswapManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static resetClientQuotas()V
    .locals 3

    const-string v0, "NandswapManager"

    const-string v1, "Reset Client Quotas"

    .line 499
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->isNandswapEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->getQuotaSysNode()I

    move-result v0

    sget-object v1, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    iget v2, v1, Lcom/android/server/NandswapManager$NandswapClient;->dailyQuota:I

    add-int/2addr v0, v2

    .line 502
    iget v2, v1, Lcom/android/server/NandswapManager$NandswapClient;->dailyQuotaLimit:I

    if-le v0, v2, :cond_0

    move v0, v2

    .line 505
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/server/NandswapManager$NandswapClient;->setQuotaSysNode(I)V

    :cond_1
    return-void
.end method

.method public static saveClientsBigdataInfoInReboot()V
    .locals 1

    .line 522
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->isNandswapEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->setBigdataInfoProp()V

    :cond_0
    return-void
.end method

.method public static saveClientsStorageUsage()V
    .locals 1

    .line 510
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->isNandswapEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->saveStorageUsage()V

    :cond_0
    return-void
.end method

.method public static schedNextLimitReset()V
    .locals 7

    .line 534
    sget-object v0, Lcom/android/server/NandswapManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 535
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    const/16 v2, 0x32d

    sget-object v3, Lcom/android/server/NandswapManager;->sNandswapManager:Landroid/content/ComponentName;

    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x18

    .line 536
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 537
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 538
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 535
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method

.method public static schedNextUpdateAvgerage()V
    .locals 7

    .line 542
    sget-object v0, Lcom/android/server/NandswapManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 543
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    const/16 v2, 0x32e

    sget-object v3, Lcom/android/server/NandswapManager;->sNandswapManager:Landroid/content/ComponentName;

    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x4

    .line 544
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 545
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 546
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 543
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method

.method public static scheduleNandswapManager(Landroid/content/Context;)V
    .locals 4

    const-string v0, "NandswapManager"

    :try_start_0
    const-string v1, "Initialize NandswapManager..."

    .line 575
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-static {}, Lcom/android/server/NandswapManager;->makeNandswapClient()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 579
    :cond_0
    invoke-static {p0}, Lcom/android/server/NandswapManager;->makeNandswapBigdataManager(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Bigdata is not supported"

    .line 580
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_1
    sput-object p0, Lcom/android/server/NandswapManager;->mContext:Landroid/content/Context;

    .line 585
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 586
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.REBOOT"

    .line 587
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    .line 588
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    .line 589
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 590
    sget-object v2, Lcom/android/server/NandswapManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/NandswapManager;->intentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 592
    invoke-static {p0}, Lcom/android/server/NandswapManager;->testRestoreExpandSizeAndList(Landroid/content/Context;)V

    .line 593
    invoke-static {}, Lcom/android/server/NandswapManager;->isRemainStorageLifeTime()Z

    move-result p0

    if-nez p0, :cond_2

    return-void

    .line 597
    :cond_2
    invoke-static {}, Lcom/android/server/NandswapManager;->schedNextLimitReset()V

    .line 598
    invoke-static {}, Lcom/android/server/NandswapManager;->schedNextUpdateAvgerage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Unexpected error while scheduleNandswapManager"

    .line 600
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static selectDailyQuota()I
    .locals 14

    .line 418
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 419
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/16 v4, 0xc

    .line 420
    filled-new-array {v2, v2, v3, v4}, [I

    move-result-object v5

    const/4 v6, 0x1

    .line 421
    filled-new-array {v2, v6, v3, v4}, [I

    move-result-object v3

    const/16 v4, 0x10

    const/16 v6, 0x20

    const/16 v7, 0x40

    const/16 v8, 0x80

    .line 422
    filled-new-array {v4, v6, v7, v8}, [I

    move-result-object v9

    .line 425
    invoke-static {}, Lcom/android/server/NandswapManager;->getStorageSize()I

    move-result v10

    .line 428
    sget-boolean v11, Lcom/android/server/NandswapManager;->isJdmDevice:Z

    const-string v12, "NandswapManager"

    const/high16 v13, 0x40000

    if-eqz v11, :cond_2

    const-string v0, "This device is JDM model"

    .line 429
    invoke-static {v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v10, v7, :cond_0

    return v13

    :cond_0
    if-ne v10, v6, :cond_1

    const/high16 v0, 0x20000

    return v0

    :cond_1
    return v2

    :cond_2
    const-string v6, "This device is in-house model"

    .line 439
    invoke-static {v12, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v6, 0x4

    if-ge v2, v6, :cond_3

    .line 441
    aget v6, v9, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget v7, v5, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    aget v6, v9, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget v7, v3, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-le v10, v8, :cond_4

    goto :goto_1

    :cond_4
    move v8, v10

    :goto_1
    if-le v4, v8, :cond_5

    goto :goto_2

    :cond_5
    move v4, v8

    .line 449
    :goto_2
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 450
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 452
    invoke-static {}, Lcom/android/server/NandswapManager;->isUfs()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_6

    mul-int/2addr v0, v13

    return v0

    :cond_6
    mul-int/2addr v1, v13

    return v1

    .line 457
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Storage size is not in Quota table! size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v13
.end method

.method public static setExpandSizeAndList(Landroid/content/Context;I)V
    .locals 5

    .line 238
    invoke-static {}, Lcom/android/server/NandswapManager;->getStorageSize()I

    move-result v0

    const/16 v1, 0x20

    const/4 v2, 0x0

    const-string v3, "NandswapManager"

    if-ge v0, v1, :cond_0

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no ramExpandSwitch for low storage "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 245
    :goto_0
    sget-boolean v1, Lcom/android/server/NandswapManager;->SUPPORT_RAM_EXPAND_SWITCH:Z

    if-nez v1, :cond_1

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no ramExpandSwitch for version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move v2, v0

    .line 251
    :goto_1
    invoke-static {p0, p1}, Lcom/android/server/NandswapManager;->putRamExpandSize(Landroid/content/Context;I)V

    .line 252
    invoke-static {p1}, Lcom/android/server/NandswapManager;->setRamExpandSizePersistProp(I)V

    if-nez v2, :cond_2

    return-void

    .line 258
    :cond_2
    invoke-static {}, Lcom/android/server/NandswapManager;->getAvailSizeList()Ljava/lang/String;

    move-result-object v0

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ramExpandSizeMb: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " avail: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-static {p0, v0}, Lcom/android/server/NandswapManager;->putRamExpandSizeList(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static setRamExpandSizePersistProp(I)V
    .locals 2

    :try_start_0
    const-string/jumbo v0, "persist.sys.zram.ram_expand_size"

    .line 146
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error on set SystemProperties: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NandswapManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static testRestoreExpandSizeAndList(Landroid/content/Context;)V
    .locals 5

    .line 199
    invoke-static {p0}, Lcom/android/server/NandswapManager;->getRamExpandSize(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 207
    :cond_0
    sget-boolean v1, Lcom/android/server/NandswapManager;->SUPPORT_RAM_EXPAND_SWITCH:Z

    const-string/jumbo v2, "ramExpandSizeMb: "

    const-string v3, "NandswapManager"

    if-nez v1, :cond_2

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no ramExpandSwitch for version "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-static {}, Lcom/android/server/NandswapManager;->getDefaultRamExpandSize()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 212
    invoke-static {p0, v1}, Lcom/android/server/NandswapManager;->putRamExpandSize(Landroid/content/Context;I)V

    move v0, v1

    .line 214
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 218
    :cond_2
    invoke-static {}, Lcom/android/server/NandswapManager;->getAvailSizeList()Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-static {p0}, Lcom/android/server/NandswapManager;->getRamExpandSizeList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 221
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 222
    invoke-static {p0, v1}, Lcom/android/server/NandswapManager;->putRamExpandSizeList(Landroid/content/Context;Ljava/lang/String;)V

    .line 224
    :cond_3
    invoke-static {v0}, Lcom/android/server/NandswapManager;->isValidRamExpandSize(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 225
    invoke-static {}, Lcom/android/server/NandswapManager;->getDefaultRamExpandSize()I

    move-result v0

    .line 226
    invoke-static {p0, v0}, Lcom/android/server/NandswapManager;->putRamExpandSize(Landroid/content/Context;I)V

    .line 229
    :cond_4
    invoke-static {v0}, Lcom/android/server/NandswapManager;->setRamExpandSizePersistProp(I)V

    .line 231
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " avail: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5

    const-string/jumbo v0, "onStartJob"

    const-string v1, "NandswapManager"

    .line 607
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 609
    :try_start_0
    invoke-static {}, Lcom/android/server/NandswapManager;->isRemainStorageLifeTime()Z

    move-result v2

    if-nez v2, :cond_0

    .line 610
    invoke-virtual {p0, p1, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return v0

    .line 614
    :cond_0
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    const/16 v3, 0x32d

    if-ne v2, v3, :cond_1

    .line 615
    invoke-static {}, Lcom/android/server/NandswapManager;->resetClientQuotas()V

    .line 616
    invoke-static {}, Lcom/android/server/NandswapManager;->schedNextLimitReset()V

    goto :goto_0

    .line 617
    :cond_1
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    const/16 v3, 0x32e

    if-ne v2, v3, :cond_2

    .line 618
    invoke-static {}, Lcom/android/server/NandswapManager;->saveClientsStorageUsage()V

    .line 619
    invoke-static {}, Lcom/android/server/NandswapManager;->schedNextUpdateAvgerage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 622
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduler exception occurred : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const-string p0, "NandswapManager"

    const-string/jumbo p1, "onStopJob"

    .line 630
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
