.class public Lcom/android/server/power/stats/BatteryUsageStatsStore;
.super Ljava/lang/Object;
.source "BatteryUsageStatsStore.java"


# static fields
.field public static final BATTERY_USAGE_STATS_QUERY:Ljava/util/List;


# instance fields
.field public final mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

.field public final mConfigFile:Landroid/util/AtomicFile;

.field public final mContext:Landroid/content/Context;

.field public final mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public final mHandler:Landroid/os/Handler;

.field public mJvmLock:Ljava/nio/channels/FileLock;

.field public final mLockFile:Ljava/io/File;

.field public final mMaxStorageBytes:J

.field public final mStoreDir:Ljava/io/File;

.field public mSystemReady:Z


# direct methods
.method public static synthetic $r8$lambda$UadUfauiYb68mDU19ZS6-vk_IkY(Lcom/android/server/power/stats/BatteryUsageStatsStore;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/BatteryUsageStatsStore;->lambda$prepareForBatteryStatsReset$0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ceMADXOAeGNFihyOvRd8RjLS0AI(Lcom/android/server/power/stats/BatteryUsageStatsStore;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryUsageStatsStore;->prepareForBatteryStatsReset(I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 59
    new-instance v0, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    const-wide/16 v1, 0x0

    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includePowerModels()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v0

    .line 59
    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->BATTERY_USAGE_STATS_QUERY:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/stats/BatteryStatsImpl;Ljava/io/File;Landroid/os/Handler;)V
    .locals 7

    const-wide/32 v5, 0x19000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 87
    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/stats/BatteryUsageStatsStore;-><init>(Landroid/content/Context;Lcom/android/server/power/stats/BatteryStatsImpl;Ljava/io/File;Landroid/os/Handler;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/stats/BatteryStatsImpl;Ljava/io/File;Landroid/os/Handler;J)V
    .locals 3

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 93
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 95
    new-instance v0, Ljava/io/File;

    const-string v1, "battery-usage-stats"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->mStoreDir:Ljava/io/File;

    .line 96
    new-instance p3, Ljava/io/File;

    const-string v1, ".lock"

    invoke-direct {p3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->mLockFile:Ljava/io/File;

    .line 97
    new-instance p3, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string v2, "config"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p3, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object p3, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->mConfigFile:Landroid/util/AtomicFile;

    .line 98
    iput-object p4, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->mHandler:Landroid/os/Handler;

    .line 99
    iput-wide p5, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->mMaxStorageBytes:J

    .line 100
    new-instance p3, Lcom/android/server/power/stats/BatteryUsageStatsStore$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/server/power/stats/BatteryUsageStatsStore$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/BatteryUsageStatsStore;)V

    invoke-virtual {p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl;->setBatteryResetListener(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryResetListener;)V

    .line 101
    new-instance p3, Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    invoke-direct {p3, p1, p2}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;)V

    iput-object p3, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    return-void
.end method

.method private synthetic lambda$prepareForBatteryStatsReset$0(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryUsageStats;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryUsageStatsStore;->storeBatteryUsageStats(Landroid/os/BatteryUsageStats;)V

    return-void
.end method


# virtual methods
.method public getLastBatteryUsageStatsBeforeResetAtomPullTimestamp()J
    .locals 5

    .line 229
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 230
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryUsageStatsStore;->lockSnapshotDirectory()V

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 233
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 234
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    .line 232
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_5
    const-string v2, "BatteryUsageStatsStore"

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot load config file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 238
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    const-string p0, "BATTERY_USAGE_STATS_BEFORE_RESET_TIMESTAMP"

    const-string v1, "0"

    .line 241
    invoke-virtual {v0, p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 240
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 238
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    .line 239
    throw v0
.end method

.method public listBatteryUsageStatsTimestamps()[J
    .locals 9

    .line 153
    new-instance v0, Landroid/util/LongArray;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LongArray;-><init>(I)V

    .line 154
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryUsageStatsStore;->lockSnapshotDirectory()V

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->mStoreDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 157
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".bus"

    .line 158
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    .line 161
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    .line 160
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 162
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/util/LongArray;->add(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v6, "BatteryUsageStatsStore"

    .line 164
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid format of BatteryUsageStats snapshot file name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    .line 172
    invoke-virtual {v0}, Landroid/util/LongArray;->toArray()[J

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    .line 170
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    .line 171
    throw v0
.end method

.method public loadBatteryUsageStats(J)Landroid/os/BatteryUsageStats;
    .locals 1

    .line 181
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryUsageStatsStore;->lockSnapshotDirectory()V

    .line 183
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryUsageStatsStore;->makeSnapshotFilename(J)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryUsageStatsStore;->readXmlFileLocked(Ljava/io/File;)Landroid/os/BatteryUsageStats;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    return-object p1

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "BatteryUsageStatsStore"

    const-string v0, "Cannot read battery usage stats"

    .line 187
    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    .line 191
    throw p1
.end method

.method public final lockSnapshotDirectory()V
    .locals 4

    .line 245
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->mLockFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 250
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->mLockFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 251
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->mLockFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    sget-object v2, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->mJvmLock:Ljava/nio/channels/FileLock;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "BatteryUsageStatsStore"

    const-string v1, "Cannot lock snapshot directory"

    .line 253
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final makeSnapshotFilename(J)Ljava/io/File;
    .locals 3

    .line 272
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->mStoreDir:Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%019d"

    invoke-static {v2, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".bus"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public onSystemReady()V
    .locals 1

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->mSystemReady:Z

    return-void
.end method

.method public final prepareForBatteryStatsReset(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    .line 112
    iget-boolean p1, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->mSystemReady:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    sget-object v0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->BATTERY_USAGE_STATS_QUERY:Ljava/util/List;

    .line 117
    invoke-virtual {p1, v0}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 118
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "BatteryUsageStatsStore"

    const-string p1, "No battery usage stats generated"

    .line 119
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/stats/BatteryUsageStatsStore$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/stats/BatteryUsageStatsStore$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/BatteryUsageStatsStore;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final readXmlFileLocked(Ljava/io/File;)Landroid/os/BatteryUsageStats;
    .locals 1

    .line 288
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 289
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newBinaryPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p1

    .line 290
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 291
    invoke-static {p1}, Landroid/os/BatteryUsageStats;->createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/BatteryUsageStats;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 288
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public removeAllSnapshots()V
    .locals 7

    .line 325
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryUsageStatsStore;->lockSnapshotDirectory()V

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->mStoreDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 328
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".bus"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 329
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "BatteryUsageStatsStore"

    .line 330
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot delete battery usage stats "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 335
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    .line 336
    throw v0
.end method

.method public final removeOldSnapshotsLocked()V
    .locals 11

    .line 300
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 301
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->mStoreDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    aget-object v6, v1, v5

    .line 302
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v3, v7

    .line 304
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".bus"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 305
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 309
    :cond_1
    :goto_1
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->mMaxStorageBytes:J

    cmp-long v1, v3, v1

    if-lez v1, :cond_4

    .line 310
    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 315
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 316
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_3

    .line 317
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot delete battery usage stats "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BatteryUsageStatsStore"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 320
    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public setLastBatteryUsageStatsBeforeResetAtomPullTimestamp(J)V
    .locals 5

    const-string v0, "BatteryUsageStatsStore"

    .line 200
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 201
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryUsageStatsStore;->lockSnapshotDirectory()V

    .line 203
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 204
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 205
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v2, :cond_0

    .line 203
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v2

    .line 206
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot load config file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    const-string v2, "BATTERY_USAGE_STATS_BEFORE_RESET_TIMESTAMP"

    .line 209
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 208
    invoke-virtual {v1, v2, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 p1, 0x0

    .line 212
    :try_start_6
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {p2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object p1

    const-string p2, "Statsd atom pull timestamps"

    .line 213
    invoke-virtual {v1, p1, p2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 214
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {p2, p1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catch_1
    move-exception p2

    .line 216
    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, p1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 217
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot save config file "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 220
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    return-void

    :goto_3
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    .line 221
    throw p1
.end method

.method public final storeBatteryUsageStats(Landroid/os/BatteryUsageStats;)V
    .locals 4

    .line 127
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryUsageStatsStore;->lockSnapshotDirectory()V

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->mStoreDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "BatteryUsageStatsStore"

    if-nez v0, :cond_0

    .line 130
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->mStoreDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Could not create a directory for battery usage stats snapshots"

    .line 131
    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    return-void

    .line 135
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats;->getStatsEndTimestamp()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/server/power/stats/BatteryUsageStatsStore;->makeSnapshotFilename(J)Ljava/io/File;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    :try_start_3
    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/BatteryUsageStatsStore;->writeXmlFileLocked(Landroid/os/BatteryUsageStats;Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_4
    const-string v0, "Cannot save battery usage stats"

    .line 139
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryUsageStatsStore;->removeOldSnapshotsLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 144
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    .line 145
    throw p1
.end method

.method public final unlockSnapshotDirectory()V
    .locals 3

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->mJvmLock:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :goto_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "BatteryUsageStatsStore"

    const-string v2, "Cannot unlock snapshot directory"

    .line 261
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 263
    :goto_2
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 264
    throw v0
.end method

.method public final writeXmlFileLocked(Landroid/os/BatteryUsageStats;Ljava/io/File;)V
    .locals 2

    .line 277
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 278
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newBinarySerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object p2

    .line 279
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 280
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 281
    invoke-virtual {p1, p2}, Landroid/os/BatteryUsageStats;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 282
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 277
    :try_start_1
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method
