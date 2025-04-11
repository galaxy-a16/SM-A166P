.class public abstract Lcom/android/server/am/Pageboost$PageboostAppCapture;
.super Ljava/lang/Object;
.source "Pageboost.java"


# static fields
.field public static final PAGEBOOST_IO_PREFETCH_LEVEL:I

.field public static record_ongoing:Z = false


# direct methods
.method public static bridge synthetic -$$Nest$sfgetPAGEBOOST_IO_PREFETCH_LEVEL()I
    .locals 1

    .line 0
    sget v0, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    return v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.config.pageboost.io_prefetch.level"

    const/4 v1, 0x3

    .line 1987
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    return-void
.end method

.method public static capture(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V
    .locals 2

    const/4 v0, 0x3

    .line 2059
    sget v1, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    if-ne v0, v1, :cond_0

    .line 2060
    invoke-static {p0, p1}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->record(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V

    goto :goto_0

    .line 2062
    :cond_0
    invoke-static {p0, p1}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->snapshot(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V

    :goto_0
    return-void
.end method

.method public static captureFinished(Lcom/android/server/am/Pageboost$IoRecord;)V
    .locals 6

    .line 2082
    sget v0, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    const/4 v1, 0x3

    if-ne v1, v0, :cond_2

    .line 2083
    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$IoRecord;->getApp()Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v1

    const/4 v2, 0x0

    .line 2084
    sput-boolean v2, Lcom/android/server/am/Pageboost$PageboostAppCapture;->record_ongoing:Z

    if-nez v1, :cond_0

    .line 2086
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "captureFinished requested for null app"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2089
    :cond_0
    invoke-static {p0}, Lcom/android/server/am/Pageboost$IoRecord;->-$$Nest$fgetmRecordDone(Lcom/android/server/am/Pageboost$IoRecord;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2090
    invoke-virtual {v1, v0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setCapturedLevel(I)V

    .line 2091
    iget-wide v2, p0, Lcom/android/server/am/Pageboost$IoRecord;->mBytesRecorded:J

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setCapturedSizeForPrefetch(JJ)V

    .line 2092
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "captureFinished success : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/Pageboost$IoRecord;->mBytesRecorded:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2095
    :cond_1
    invoke-static {}, Lcom/android/server/am/Pageboost$IoRecord;->emergencyReset()V

    .line 2096
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "captureFinished fail"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecordEnd,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/am/Pageboost$IoRecord;->-$$Nest$fgetmRecordDone(Lcom/android/server/am/Pageboost$IoRecord;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/Pageboost$VramdiskLogger;->add(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static check64Bit(I)Z
    .locals 6

    const/4 v0, 0x0

    if-gtz p0, :cond_0

    return v0

    .line 2019
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/exe"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2020
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2021
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x6

    :try_start_1
    new-array v2, v2, [B

    const-string/jumbo v3, "\u007fELF"

    const-string v4, "UTF-8"

    .line 2023
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 2024
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    const/4 v4, 0x4

    .line 2030
    invoke-static {v2, v0, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-static {v5, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    aget-byte v2, v2, v4

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 2035
    :goto_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2036
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v2

    goto :goto_2

    :catchall_0
    move-exception v2

    .line 2021
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
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
    move-exception v1

    .line 2037
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2040
    :goto_2
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "64 bit checked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isCaptureTarget(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, "/data"

    .line 2002
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/system"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/product"

    .line 2003
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "/data/misc"

    .line 2006
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "(deleted"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public static isRecordingCapture()Z
    .locals 2

    .line 2055
    sget v0, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRecordingTarget(Ljava/lang/String;Z)Z
    .locals 2

    .line 2069
    invoke-static {p0}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->isCaptureTarget(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2071
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmZygote64FileMap()Lcom/android/server/am/Pageboost$FileMapList;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/am/Pageboost$FileMapList;->contain(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 2073
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmZygoteFileMap()Lcom/android/server/am/Pageboost$FileMapList;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/am/Pageboost$FileMapList;->contain(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static needCapture(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 2045
    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->isFullyExecuted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2046
    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->isApkPathCorrect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2047
    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getCapturedLevel()I

    move-result p0

    sget v0, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static record(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V
    .locals 2

    .line 2103
    sget-boolean v0, Lcom/android/server/am/Pageboost$PageboostAppCapture;->record_ongoing:Z

    if-eqz v0, :cond_0

    .line 2104
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "record is ongoing. Abort for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-lez p1, :cond_2

    .line 2109
    new-instance v0, Lcom/android/server/am/Pageboost$IoRecord;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/Pageboost$IoRecord;-><init>(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V

    .line 2110
    invoke-virtual {v0}, Lcom/android/server/am/Pageboost$IoRecord;->isCorrect()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 2111
    sput-boolean p1, Lcom/android/server/am/Pageboost$PageboostAppCapture;->record_ongoing:Z

    .line 2112
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecordStart,"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/Pageboost$VramdiskLogger;->add(Ljava/lang/String;)V

    .line 2113
    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getGameApp()Z

    move-result p0

    const/16 p1, 0xf

    if-eqz p0, :cond_1

    const p0, 0x88b8

    .line 2114
    invoke-static {p1, v0, p0}, Lcom/android/server/am/Pageboost;->-$$Nest$smsendMessageWithObject(ILjava/lang/Object;I)V

    goto :goto_0

    :cond_1
    const/16 p0, 0x1388

    .line 2116
    invoke-static {p1, v0, p0}, Lcom/android/server/am/Pageboost;->-$$Nest$smsendMessageWithObject(ILjava/lang/Object;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static snapshot(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 2129
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmZygote64FileMap()Lcom/android/server/am/Pageboost$FileMapList;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmZygote64FileMap()Lcom/android/server/am/Pageboost$FileMapList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/Pageboost$FileMapList;->isCorrect()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_7

    .line 2132
    :cond_0
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmZygoteFileMap()Lcom/android/server/am/Pageboost$FileMapList;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmZygoteFileMap()Lcom/android/server/am/Pageboost$FileMapList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/Pageboost$FileMapList;->isCorrect()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_7

    .line 2136
    :cond_1
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO Capture start for : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "pid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmFileDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2138
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmFileDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x2

    .line 2143
    sget v3, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    const-wide/16 v7, 0x0

    if-gt v2, v3, :cond_c

    .line 2144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2146
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->check64Bit(I)Z

    move-result v9

    .line 2149
    new-instance v10, Lcom/android/server/am/Pageboost$FileMapList;

    invoke-direct {v10, v1}, Lcom/android/server/am/Pageboost$FileMapList;-><init>(I)V

    .line 2151
    invoke-virtual {v10}, Lcom/android/server/am/Pageboost$FileMapList;->isCorrect()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 2153
    invoke-static {v10}, Lcom/android/server/am/Pageboost$FileMapList;->-$$Nest$fgetmFiles(Lcom/android/server/am/Pageboost$FileMapList;)Ljava/util/Hashtable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide v13, v7

    move-wide v15, v13

    const/4 v11, 0x0

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v5, v17

    check-cast v5, Ljava/lang/String;

    .line 2154
    invoke-static {v5}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->isCaptureTarget(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v9, :cond_4

    .line 2159
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmZygote64FileMap()Lcom/android/server/am/Pageboost$FileMapList;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/android/server/am/Pageboost$FileMapList;->contain(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_0

    :cond_4
    if-nez v9, :cond_5

    .line 2161
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmZygoteFileMap()Lcom/android/server/am/Pageboost$FileMapList;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/android/server/am/Pageboost$FileMapList;->contain(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_0

    .line 2165
    :cond_5
    new-instance v12, Lcom/android/server/am/Pageboost$FileMapInfo;

    invoke-direct {v12, v1}, Lcom/android/server/am/Pageboost$FileMapInfo;-><init>(I)V

    .line 2166
    invoke-virtual {v12}, Lcom/android/server/am/Pageboost$FileMapInfo;->isCorrect()Z

    move-result v18

    move/from16 v19, v9

    const-string v9, "/"

    if-eqz v18, :cond_8

    move-object/from16 v18, v10

    .line 2167
    iget-object v10, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    move/from16 v20, v11

    const/4 v11, 0x1

    invoke-static {v12, v5, v11, v6, v10}, Lcom/android/server/am/Pageboost$FileMapInfo;->-$$Nest$mgetFileMapInfo(Lcom/android/server/am/Pageboost$FileMapInfo;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)[J

    move-result-object v5

    const/4 v10, 0x0

    if-eqz v5, :cond_9

    .line 2169
    aget-wide v20, v5, v10

    .line 2170
    aget-wide v22, v5, v11

    add-long v7, v7, v20

    add-long v13, v13, v20

    add-long v11, v15, v22

    const-wide/32 v15, 0x9600000

    cmp-long v5, v13, v15

    if-lez v5, :cond_6

    .line 2176
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IO Capture \'map\' over limit : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v9, 0x9600000

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    const-wide/32 v15, 0x20000

    cmp-long v5, v11, v15

    if-lez v5, :cond_7

    .line 2180
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IO Capture \'map\' over dbsize limit : "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v9, 0x20000

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-wide v9, v7

    move-wide v7, v13

    const/4 v5, 0x1

    goto :goto_4

    :cond_7
    move-wide v15, v11

    const/4 v11, 0x1

    goto :goto_2

    :cond_8
    move-object/from16 v18, v10

    move/from16 v20, v11

    const/4 v10, 0x0

    :cond_9
    move/from16 v11, v20

    .line 2187
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move v5, v11

    sub-long v10, v20, v2

    const-wide/16 v20, 0x3e8

    cmp-long v12, v10, v20

    if-lez v12, :cond_a

    .line 2189
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v12

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v5

    const-string v5, "IO Capture \'map\' timed out : "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3e8

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    move/from16 v20, v5

    move-object/from16 v10, v18

    move/from16 v9, v19

    move/from16 v11, v20

    goto/16 :goto_0

    :cond_b
    move/from16 v20, v11

    :goto_3
    move-wide v9, v7

    move-wide v7, v13

    move/from16 v5, v20

    .line 2193
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 2194
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IO Capture \'mapped files\' pid : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " size : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " time : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v11, v2

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v12, v7

    move-wide v2, v9

    goto :goto_5

    :cond_c
    move-wide v2, v7

    move-wide v12, v2

    const/4 v5, 0x0

    .line 2198
    :goto_5
    sget v14, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    const/4 v15, 0x1

    if-gt v15, v14, :cond_e

    .line 2199
    iget-object v7, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    if-eqz v7, :cond_e

    .line 2200
    invoke-static {v7}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->isCaptureTarget(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 2201
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2202
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 2203
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    const/high16 v9, 0x3200000

    if-le v8, v9, :cond_d

    move v11, v9

    goto :goto_6

    :cond_d
    move v11, v8

    :goto_6
    const v8, 0x8000

    .line 2207
    div-int v10, v11, v8

    if-lez v10, :cond_e

    .line 2209
    new-array v9, v10, [B

    const/4 v5, -0x1

    .line 2210
    invoke-static {v9, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 2211
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmFileDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const/4 v8, 0x0

    const/16 v16, 0x0

    move v15, v11

    move/from16 v11, v16

    invoke-static/range {v5 .. v11}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->insertTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I[BII)V

    .line 2212
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO Capture \'apk\', pid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v5, v15

    add-long/2addr v2, v5

    const/4 v5, 0x1

    :cond_e
    if-eqz v5, :cond_f

    .line 2222
    invoke-virtual {v0, v14}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setCapturedLevel(I)V

    .line 2223
    invoke-virtual {v0, v2, v3, v12, v13}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setCapturedSizeForPrefetch(JJ)V

    .line 2224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Capture,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/Pageboost$VramdiskLogger;->add(Ljava/lang/String;)V

    .line 2226
    :cond_f
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO Capture end for : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " done correctly? "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_7
    return-void
.end method
