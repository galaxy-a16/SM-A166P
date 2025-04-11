.class public Lcom/android/server/locksettings/LockSettingsServiceLog;
.super Ljava/lang/Object;
.source "LockSettingsServiceLog.java"


# static fields
.field public static final SECURITY_LOG_VERSION:Ljava/lang/String;


# instance fields
.field public BUILD_ID:Ljava/lang/String;

.field public EVENT_ID:Ljava/lang/String;

.field public final F_LOCK:Ljava/util/concurrent/locks/Lock;

.field public LOG_FILE:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mFileWriteLock:Ljava/lang/Object;

.field public mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

.field public saveLssLog:Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;


# direct methods
.method public static bridge synthetic -$$Nest$fgetF_LOCK(Lcom/android/server/locksettings/LockSettingsServiceLog;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->F_LOCK:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFileWriteLock(Lcom/android/server/locksettings/LockSettingsServiceLog;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mFileWriteLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLogFile(Lcom/android/server/locksettings/LockSettingsServiceLog;)[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputLOG_FILE(Lcom/android/server/locksettings/LockSettingsServiceLog;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->LOG_FILE:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmakeLogTime(Lcom/android/server/locksettings/LockSettingsServiceLog;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsServiceLog;->makeLogTime()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msendToDiagmon(Lcom/android/server/locksettings/LockSettingsServiceLog;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsServiceLog;->sendToDiagmon(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowDump(Lcom/android/server/locksettings/LockSettingsServiceLog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsServiceLog;->showDump()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mzipLogFile(Lcom/android/server/locksettings/LockSettingsServiceLog;I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsServiceLog;->zipLogFile(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    sput-object v0, Lcom/android/server/locksettings/LockSettingsServiceLog;->SECURITY_LOG_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mFileWriteLock:Ljava/lang/Object;

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->BUILD_ID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->EVENT_ID:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->saveLssLog:Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->LOG_FILE:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->F_LOCK:Ljava/util/concurrent/locks/Lock;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsServiceLog;->init()V

    return-void
.end method

.method public static gethashStr([B)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/4 v0, 0x5

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gethashStr() failed. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LockSettingsLog"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static isDevBuild()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isShipBuild()Z
    .locals 2

    const-string/jumbo v0, "ro.product_ship"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addLog(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "mLogFile is null. type = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LockSettingsLog"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;-><init>(Lcom/android/server/locksettings/LockSettingsServiceLog;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->saveLssLog:Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 12

    const-string v0, "dump start"

    const-string v1, "LockSettingsLog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_6

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    aget-object v3, v3, v2

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->hasLogType(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n----------------- Start "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " state -----------------"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->getLastFileName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<No "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " file>"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_1
    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->F_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string/jumbo v8, "r"

    invoke-direct {v7, v6, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move v6, v0

    :goto_1
    :try_start_1
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    const-wide/16 v10, 0x7d0

    cmp-long v4, v8, v10

    const/4 v8, 0x0

    if-lez v4, :cond_2

    :try_start_2
    const-string v4, "<MAX Line reached>"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    goto :goto_3

    :cond_2
    move-object v4, v8

    goto :goto_1

    :cond_3
    :goto_2
    :try_start_3
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v4, :cond_4

    goto :goto_8

    :catchall_1
    move-exception v6

    move-object v8, v4

    move-object v4, v6

    :goto_3
    :try_start_4
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v6

    :try_start_5
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v4
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    move-object v4, v8

    goto :goto_a

    :catch_0
    move-exception v6

    move-object v4, v8

    goto :goto_5

    :catch_1
    move-object v4, v8

    goto :goto_6

    :catch_2
    move-object v4, v8

    goto :goto_7

    :catchall_4
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v6

    :goto_5
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    const-string v4, "<Unknown Error>"

    goto :goto_8

    :catch_4
    :goto_6
    const-string v4, "<IO Error>"

    goto :goto_8

    :catch_5
    :goto_7
    const-string v4, "<File not found>"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :goto_8
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->F_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "----------------- End "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :goto_a
    if-eqz v4, :cond_5

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->F_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_6
    const-string p0, "dump end"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final getCurTime()Ljava/lang/String;
    .locals 1

    new-instance p0, Landroid/text/format/Time;

    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {p0}, Landroid/text/format/Time;->setToNow()V

    const-string v0, "%Y%m%d_%H%M%S"

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    const-string v2, "Enroll"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    const-string v2, "Verify"

    invoke-direct {v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    const-string v2, "KeystoreErr"

    invoke-direct {v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    const-string v2, "Restore"

    invoke-direct {v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    new-instance v0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    const-string v1, "Debug"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;-><init>(Ljava/lang/String;I)V

    aput-object v0, p0, v2

    return-void
.end method

.method public final makeLogTime()Ljava/lang/String;
    .locals 7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%02d-%02d %02d:%02d:%02d.%03d "

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public migrateLssLog()V
    .locals 6

    const-string v0, "LockSettingsLog"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/log/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    const-string p0, "No log folder"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v3, Lcom/android/server/locksettings/LockSettingsServiceLog$3;

    invoke-direct {v3, p0, v1}, Lcom/android/server/locksettings/LockSettingsServiceLog$3;-><init>(Lcom/android/server/locksettings/LockSettingsServiceLog;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "No log files"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " deleted!"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete file error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public final sendToDiagmon(I)V
    .locals 12

    const-string v0, "1"

    const-string v1, "IntentOnly"

    const-string v2, "Ext"

    const-string v3, "CFailLogUpload"

    const-string v4, "DiagMon"

    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "samsung_errorlog_agree"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const-string v6, "LockSettingsLog"

    const/4 v7, 0x1

    if-eq v5, v7, :cond_0

    const-string/jumbo p0, "sendToDiagmon failed. errorlog_agree is not true!!"

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->LOG_FILE:Ljava/lang/String;

    if-nez v5, :cond_1

    const-string/jumbo p0, "sendToDiagmon failed. filename is null!!"

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    aget-object v5, v5, p1

    invoke-virtual {v5, v7}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->hasLogType(I)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendToDiagmon failed. Cannot upload this log : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->getErrorCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsServiceLog;->isShipBuild()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsServiceLog;->isDevBuild()Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo p0, "sendToDiagmon failed. Can upload only ship or dev!"

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "send broadcast intent to diagmon : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->LOG_FILE:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.sec.android.diagmonagent.intent.REPORT_ERROR_V2"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const/16 v8, 0x20

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v7, v4, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v9, v3, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "ServiceID"

    const-string/jumbo v11, "sp4xkeu9ef"

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v9, v2, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "ClientV"

    iget-object v11, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->BUILD_ID:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "UiMode"

    const-string v11, "0"

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "ResultCode"

    iget-object v11, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    aget-object v11, v11, p1

    invoke-virtual {v11}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->getErrorCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "WifiOnlyFeature"

    invoke-virtual {v9, v10, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "EventID"

    iget-object v11, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->EVENT_ID:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v9, "Description"

    iget-object v10, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    aget-object p1, v10, p1

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v9, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "IntentOnlyMode"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "Agree"

    const-string v2, "D"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "LogPath"

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->LOG_FILE:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "uploadMO"

    invoke-virtual {v5, p1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p1, "com.sec.android.diagmonagent"

    invoke-virtual {v5, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Exception while sending a bug report."

    invoke-static {v6, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->LOG_FILE:Ljava/lang/String;

    return-void
.end method

.method public final showDump()V
    .locals 14

    const-string v0, "!@LSS log start"

    const-string v1, "LockSettingsLog"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v4, v0

    move v3, v2

    :goto_0
    const/4 v5, 0x5

    if-ge v3, v5, :cond_5

    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    aget-object v5, v5, v3

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->hasLogType(I)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->getErrorCode()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@----------------- Start "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " state -----------------"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->getLastFileName()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->F_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string/jumbo v9, "r"

    invoke-direct {v8, v6, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move v6, v2

    :goto_1
    :try_start_1
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "!@"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v6, v6, 0x1

    int-to-long v9, v6

    const-wide/16 v11, 0x7d0

    cmp-long v4, v9, v11

    if-lez v4, :cond_1

    :try_start_2
    const-string v4, "!@<MAX Line reached>"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    move-object v6, v0

    goto :goto_3

    :cond_1
    move-object v4, v0

    goto :goto_1

    :cond_2
    :goto_2
    :try_start_3
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v4, :cond_3

    goto :goto_8

    :catchall_1
    move-exception v6

    move-object v13, v6

    move-object v6, v4

    move-object v4, v13

    :goto_3
    :try_start_4
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v8

    :try_start_5
    invoke-virtual {v4, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v4
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    move-object v4, v6

    goto :goto_a

    :catch_0
    move-exception v4

    move-object v13, v6

    move-object v6, v4

    move-object v4, v13

    goto :goto_5

    :catch_1
    move-object v4, v6

    goto :goto_6

    :catch_2
    move-object v4, v6

    goto :goto_7

    :catchall_4
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v6

    :goto_5
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    const-string v4, "!@<Unknown Error>"

    goto :goto_8

    :catch_4
    :goto_6
    const-string v4, "!@<IO Error>"

    goto :goto_8

    :catch_5
    :goto_7
    const-string v4, "!@<File not found>"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :goto_8
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->F_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "!@----------------- End "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :goto_a
    if-eqz v4, :cond_4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->F_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_5
    const-string p0, "!@LSS log end"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public uploadLogFile(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mLogFile is null. type = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LockSettingsLog"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/locksettings/LockSettingsServiceLog$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/locksettings/LockSettingsServiceLog$1;-><init>(Lcom/android/server/locksettings/LockSettingsServiceLog;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public writeLog()V
    .locals 1

    new-instance v0, Lcom/android/server/locksettings/LockSettingsServiceLog$2;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/LockSettingsServiceLog$2;-><init>(Lcom/android/server/locksettings/LockSettingsServiceLog;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final zipLogFile(I)Ljava/lang/String;
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/log/LockSettingsLog_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsServiceLog;->getCurTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v1

    const/16 v2, 0x800

    :try_start_0
    new-array v2, v2, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v3, 0x0

    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v5, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v5, v4}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v6, 0x0

    move-object v8, v3

    move v7, v6

    :goto_0
    const/4 v9, 0x5

    if-ge v7, v9, :cond_3

    if-ne p1, v7, :cond_0

    :try_start_3
    iget-object v9, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->getUploadFileName()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_0
    iget-object v9, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->getLastFileName()Ljava/lang/String;

    move-result-object v9

    :goto_1
    if-eqz v9, :cond_2

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    new-instance v10, Ljava/util/zip/ZipEntry;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    aget-object v12, v12, v7

    invoke-virtual {v12}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->getErrorCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ".log"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :goto_2
    :try_start_4
    invoke-virtual {v10, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_1

    invoke-virtual {v5, v2, v6, v8}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_2

    :cond_1
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v8, v10

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v3, v10

    goto :goto_7

    :catch_0
    move-exception p0

    move-object v8, v10

    goto :goto_5

    :cond_2
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_5

    :cond_3
    if-eqz v8, :cond_4

    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catch_2
    :cond_4
    :try_start_6
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catch_3
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_6

    :catchall_1
    move-exception p0

    move-object v5, v3

    goto :goto_7

    :catch_4
    move-exception p0

    move-object v5, v3

    goto :goto_4

    :catchall_2
    move-exception p0

    move-object v4, v3

    move-object v5, v4

    goto :goto_7

    :catch_5
    move-exception p0

    move-object v4, v3

    move-object v5, v4

    :goto_4
    move-object v8, v5

    :goto_5
    :try_start_8
    const-string p1, "LockSettingsLog"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "zipLogFile - error"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v8, :cond_5

    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catch_6
    :cond_5
    if-eqz v5, :cond_6

    :try_start_a
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catch_7
    :cond_6
    if-eqz v4, :cond_7

    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catch_8
    :cond_7
    move-object v0, v3

    :catch_9
    :goto_6
    :try_start_c
    const-string p0, "LockSettingsLog"

    const-string/jumbo p1, "zipLogFile - finish"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    return-object v0

    :catchall_3
    move-exception p0

    move-object v3, v8

    :goto_7
    if-eqz v3, :cond_8

    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catch_a
    :cond_8
    if-eqz v5, :cond_9

    :try_start_e
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catch_b
    :cond_9
    if-eqz v4, :cond_a

    :try_start_f
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :catch_c
    :cond_a
    :try_start_10
    throw p0

    :catchall_4
    move-exception p0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    throw p0
.end method
