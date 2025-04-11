.class public abstract Lcom/android/server/power/PreRebootLogger;
.super Ljava/lang/Object;
.source "PreRebootLogger.java"


# static fields
.field public static final BUFFERS_TO_DUMP:[Ljava/lang/String;

.field public static final MAX_DUMP_TIME:J

.field public static final SERVICES_TO_DUMP:[Ljava/lang/String;

.field public static final sLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$Du13QPVgNx-tXQ4odjl-GfIrf2M(Ljava/io/File;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/power/PreRebootLogger;->lambda$dump$0(Ljava/io/File;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "system"

    .line 48
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PreRebootLogger;->BUFFERS_TO_DUMP:[Ljava/lang/String;

    const-string/jumbo v0, "rollback"

    const-string/jumbo v1, "package"

    .line 49
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PreRebootLogger;->SERVICES_TO_DUMP:[Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/PreRebootLogger;->sLock:Ljava/lang/Object;

    .line 52
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/power/PreRebootLogger;->MAX_DUMP_TIME:J

    return-void
.end method

.method public static dump(Ljava/io/File;J)V
    .locals 4

    const-string v0, "Dumping pre-reboot information..."

    const-string v1, "PreRebootLogger"

    .line 80
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 82
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/power/PreRebootLogger$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/android/server/power/PreRebootLogger$$ExternalSyntheticLambda0;-><init>(Ljava/io/File;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 93
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 96
    :try_start_0
    invoke-virtual {v2, p1, p2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to dump pre-reboot information due to interrupted"

    .line 98
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Failed to dump pre-reboot information due to timeout"

    .line 102
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static dumpLogsLocked(Ljava/io/File;Ljava/lang/String;)V
    .locals 4

    .line 126
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    .line 128
    invoke-virtual {v0, v2, v2}, Ljava/io/File;->setWritable(ZZ)Z

    goto :goto_0

    .line 131
    :cond_0
    new-instance p0, Ljava/io/FileWriter;

    invoke-direct {p0, v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-virtual {p0}, Ljava/io/FileWriter;->flush()V

    :goto_0
    const/4 p0, 0x6

    new-array p0, p0, [Ljava/lang/String;

    const-string v3, "logcat"

    aput-object v3, p0, v1

    const-string v1, "-d"

    aput-object v1, p0, v2

    const-string v1, "-b"

    const/4 v2, 0x2

    aput-object v1, p0, v2

    const/4 v1, 0x3

    aput-object p1, p0, v1

    const-string p1, "-f"

    const/4 v1, 0x4

    aput-object p1, p0, v1

    .line 135
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x5

    aput-object p1, p0, v0

    .line 136
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "PreRebootLogger"

    const-string v0, "Failed to dump system log buffer before reboot"

    .line 138
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static dumpServiceLocked(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    .line 144
    invoke-static {p1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 150
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 p0, 0x2c000000

    .line 151
    invoke-static {v1, p0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    .line 154
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    const-class v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Failed to dump %s service before reboot"

    .line 156
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PreRebootLogger"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static getDumpDir()Ljava/io/File;
    .locals 3

    .line 116
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataMiscDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "prereboot"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Pre-reboot dump directory not found"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic lambda$dump$0(Ljava/io/File;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 6

    .line 83
    sget-object v0, Lcom/android/server/power/PreRebootLogger;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_0
    sget-object v1, Lcom/android/server/power/PreRebootLogger;->BUFFERS_TO_DUMP:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 85
    invoke-static {p0, v5}, Lcom/android/server/power/PreRebootLogger;->dumpLogsLocked(Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 87
    :cond_0
    sget-object v1, Lcom/android/server/power/PreRebootLogger;->SERVICES_TO_DUMP:[Ljava/lang/String;

    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 88
    invoke-static {p0, v4}, Lcom/android/server/power/PreRebootLogger;->dumpServiceLocked(Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 90
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    .line 91
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_0
    move-exception p0

    .line 90
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static log(Landroid/content/Context;)V
    .locals 1

    .line 60
    invoke-static {}, Lcom/android/server/power/PreRebootLogger;->getDumpDir()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/power/PreRebootLogger;->log(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method public static log(Landroid/content/Context;Ljava/io/File;)V
    .locals 2

    .line 65
    invoke-static {p0}, Lcom/android/server/power/PreRebootLogger;->needDump(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 66
    sget-wide v0, Lcom/android/server/power/PreRebootLogger;->MAX_DUMP_TIME:J

    invoke-static {p1, v0, v1}, Lcom/android/server/power/PreRebootLogger;->dump(Ljava/io/File;J)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {p1}, Lcom/android/server/power/PreRebootLogger;->wipe(Ljava/io/File;)V

    :goto_0
    return-void
.end method

.method public static needDump(Landroid/content/Context;)Z
    .locals 3

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object p0

    .line 75
    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller;->getActiveStagedSessions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public static wipe(Ljava/io/File;)V
    .locals 4

    const-string v0, "PreRebootLogger"

    const-string v1, "Wiping pre-reboot information..."

    .line 107
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sget-object v0, Lcom/android/server/power/PreRebootLogger;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 110
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
