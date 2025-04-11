.class public final Lcom/android/server/am/Pageboost$IoRecord;
.super Ljava/lang/Object;
.source "Pageboost.java"


# instance fields
.field public is64bit:Z

.field public mApp:Lcom/android/server/am/Pageboost$PageboostAppInfo;

.field public mBytesRecorded:J

.field public mCorrectness:Z

.field public mPid:I

.field public mPkg:Ljava/lang/String;

.field public mRecordDone:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmRecordDone(Lcom/android/server/am/Pageboost$IoRecord;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/am/Pageboost$IoRecord;->mRecordDone:Z

    return p0
.end method

.method public constructor <init>(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V
    .locals 3

    .line 1687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1678
    iput v0, p0, Lcom/android/server/am/Pageboost$IoRecord;->mPid:I

    const-wide/16 v1, 0x0

    .line 1682
    iput-wide v1, p0, Lcom/android/server/am/Pageboost$IoRecord;->mBytesRecorded:J

    .line 1683
    iput-boolean v0, p0, Lcom/android/server/am/Pageboost$IoRecord;->mCorrectness:Z

    .line 1684
    iput-boolean v0, p0, Lcom/android/server/am/Pageboost$IoRecord;->mRecordDone:Z

    if-gtz p2, :cond_0

    return-void

    .line 1692
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1695
    iput p2, p0, Lcom/android/server/am/Pageboost$IoRecord;->mPid:I

    .line 1696
    iget-object p2, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/Pageboost$IoRecord;->mPkg:Ljava/lang/String;

    .line 1697
    iput-object p1, p0, Lcom/android/server/am/Pageboost$IoRecord;->mApp:Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 1699
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "/proc/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "io_record_control"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "2"

    invoke-static {p1, p2}, Lcom/android/server/am/Pageboost$IoRecord;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/Pageboost$IoRecord;->mCorrectness:Z

    if-eqz p1, :cond_1

    .line 1701
    iget p1, p0, Lcom/android/server/am/Pageboost$IoRecord;->mPid:I

    invoke-static {p1}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->check64Bit(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/Pageboost$IoRecord;->is64bit:Z

    .line 1702
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "IoRecord pid : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", started correctly"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static createBitmap(I)[B
    .locals 0

    add-int/lit8 p0, p0, 0x7

    .line 1758
    div-int/lit8 p0, p0, 0x8

    .line 1759
    new-array p0, p0, [B

    return-object p0
.end method

.method public static emergencyReset()V
    .locals 2

    const-string v0, "/proc/self/io_record_control"

    const-string v1, "1"

    .line 1707
    invoke-static {v0, v1}, Lcom/android/server/am/Pageboost$IoRecord;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static fillBitmap([BIIZ)V
    .locals 6

    .line 1768
    rem-int/lit8 v0, p1, 0x8

    const/16 v1, 0xff

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-eqz v0, :cond_2

    .line 1769
    div-int/lit8 p1, p1, 0x8

    aget-byte v4, p0, p1

    and-int/2addr v4, v1

    :goto_0
    if-ge v0, v3, :cond_1

    if-eqz p3, :cond_0

    shl-int v5, v2, v0

    or-int/2addr v4, v5

    goto :goto_1

    :cond_0
    shl-int v5, v2, v0

    not-int v5, v5

    and-int/2addr v4, v5

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    and-int/lit16 v0, v4, 0xff

    int-to-byte v0, v0

    .line 1777
    aput-byte v0, p0, p1

    add-int/2addr p1, v2

    mul-int/2addr p1, v3

    .line 1782
    :cond_2
    div-int/2addr p1, v3

    .line 1783
    div-int/lit8 v0, p2, 0x8

    const/4 v4, 0x0

    if-ge p1, v0, :cond_4

    if-eqz p3, :cond_3

    move v5, v1

    goto :goto_2

    :cond_3
    move v5, v4

    :goto_2
    int-to-byte v5, v5

    .line 1790
    invoke-static {p0, p1, v0, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 1794
    :cond_4
    rem-int/2addr p2, v3

    if-eqz p2, :cond_7

    .line 1795
    aget-byte p1, p0, v0

    and-int/2addr p1, v1

    :goto_3
    if-ge v4, p2, :cond_6

    if-eqz p3, :cond_5

    shl-int v3, v2, v4

    or-int/2addr p1, v3

    goto :goto_4

    :cond_5
    shl-int v3, v2, v4

    not-int v3, v3

    and-int/2addr p1, v3

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    and-int/2addr p1, v1

    int-to-byte p1, p1

    .line 1803
    aput-byte p1, p0, v0

    :cond_7
    return-void
.end method

.method public static readInt([B)I
    .locals 2

    const/4 v0, 0x3

    .line 1727
    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x2

    .line 1728
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x1

    .line 1729
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x0

    .line 1730
    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static resizeBitmap([BIIIII)[B
    .locals 4

    add-int v0, p1, p2

    sub-int v0, p3, v0

    add-int/lit8 v0, v0, 0x7

    .line 1741
    div-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    int-to-long v2, p5

    cmp-long p5, v0, v2

    if-gtz p5, :cond_0

    add-int/2addr p4, p3

    sub-int/2addr p4, p1

    .line 1746
    invoke-static {p4}, Lcom/android/server/am/Pageboost$IoRecord;->createBitmap(I)[B

    move-result-object p5

    .line 1748
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p3, p1

    .line 1750
    invoke-static {p5, p2, p3, v1}, Lcom/android/server/am/Pageboost$IoRecord;->fillBitmap([BIIZ)V

    const/4 p0, 0x1

    .line 1752
    invoke-static {p5, p3, p4, p0}, Lcom/android/server/am/Pageboost$IoRecord;->fillBitmap([BIIZ)V

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    return-object p5
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1711
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1712
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 1713
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1714
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 1711
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 1715
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getApp()Lcom/android/server/am/Pageboost$PageboostAppInfo;
    .locals 0

    .line 1722
    iget-object p0, p0, Lcom/android/server/am/Pageboost$IoRecord;->mApp:Lcom/android/server/am/Pageboost$PageboostAppInfo;

    return-object p0
.end method

.method public getResultFromKernel()J
    .locals 8

    .line 1922
    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$IoRecord;->isCorrect()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    .line 1931
    :cond_0
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IoRecord pid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/am/Pageboost$IoRecord;->mPid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/Pageboost$IoRecord;->mPid:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "io_record_control"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "3"

    .line 1935
    invoke-static {v0, v3}, Lcom/android/server/am/Pageboost$IoRecord;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1936
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StopRecording Failed"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_1
    const-string v3, "4"

    .line 1941
    invoke-static {v0, v3}, Lcom/android/server/am/Pageboost$IoRecord;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1942
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PostRecording Failed"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_2
    const/4 v3, 0x0

    :try_start_0
    new-array v5, v3, [Ljava/lang/String;

    .line 1948
    invoke-static {v0, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    invoke-static {v5}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v5

    .line 1949
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/Pageboost$IoRecord;->mPid:I

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", result_size : "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v5

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    invoke-virtual {p0, v5}, Lcom/android/server/am/Pageboost$IoRecord;->parsingResult([B)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "1"

    .line 1957
    invoke-static {v0, v6}, Lcom/android/server/am/Pageboost$IoRecord;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1958
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "iorecord re-init Failed"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_3
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    const/4 v6, 0x1

    if-ltz v0, :cond_4

    move v3, v6

    :cond_4
    if-eqz v3, :cond_5

    .line 1968
    iput-boolean v6, p0, Lcom/android/server/am/Pageboost$IoRecord;->mRecordDone:Z

    return-wide v4

    :cond_5
    return-wide v1

    .line 1952
    :catch_0
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CatRecordedData Failed"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1
.end method

.method public isCorrect()Z
    .locals 0

    .line 1975
    iget-boolean p0, p0, Lcom/android/server/am/Pageboost$IoRecord;->mCorrectness:Z

    return p0
.end method

.method public final parsingResult([B)J
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1817
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/Pageboost$IoRecord;->isCorrect()Z

    move-result v2

    const-wide/16 v3, -0x1

    if-nez v2, :cond_0

    return-wide v3

    .line 1821
    :cond_0
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmFileDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/am/Pageboost$IoRecord;->mApp:Lcom/android/server/am/Pageboost$PageboostAppInfo;

    iget-object v5, v5, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1822
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmFileDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/am/Pageboost$IoRecord;->mApp:Lcom/android/server/am/Pageboost$PageboostAppInfo;

    iget-object v5, v5, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1824
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "db table failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v3

    .line 1828
    :cond_1
    iget-object v3, v0, Lcom/android/server/am/Pageboost$IoRecord;->mApp:Lcom/android/server/am/Pageboost$PageboostAppInfo;

    invoke-static {v3}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->-$$Nest$minitAalPrefetchList(Lcom/android/server/am/Pageboost$PageboostAppInfo;)V

    .line 1830
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "db insert start"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move v6, v3

    move v13, v6

    .line 1831
    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_c

    add-int/lit8 v7, v6, 0x4

    .line 1837
    invoke-static {v1, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 1838
    invoke-static {v6}, Lcom/android/server/am/Pageboost$IoRecord;->readInt([B)I

    move-result v12

    const/4 v11, -0x1

    if-ne v12, v11, :cond_2

    goto/16 :goto_7

    :cond_2
    add-int v6, v7, v12

    .line 1845
    invoke-static {v1, v7, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 1846
    new-instance v10, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v7, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1849
    iget-object v7, v0, Lcom/android/server/am/Pageboost$IoRecord;->mApp:Lcom/android/server/am/Pageboost$PageboostAppInfo;

    iget-object v7, v7, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    const/16 v20, 0x0

    if-eqz v7, :cond_3

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x2

    move/from16 v21, v7

    goto :goto_1

    :cond_3
    move/from16 v21, v3

    :goto_1
    move v9, v11

    move/from16 v16, v9

    move-object/from16 v15, v20

    :goto_2
    add-int/lit8 v7, v6, 0x4

    .line 1858
    invoke-static {v1, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 1859
    invoke-static {v6}, Lcom/android/server/am/Pageboost$IoRecord;->readInt([B)I

    move-result v8

    add-int/lit8 v14, v7, 0x4

    .line 1861
    invoke-static {v1, v7, v14}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 1862
    invoke-static {v6}, Lcom/android/server/am/Pageboost$IoRecord;->readInt([B)I

    move-result v7

    if-ne v8, v11, :cond_4

    if-ne v7, v11, :cond_4

    goto :goto_3

    .line 1871
    :cond_4
    iget-boolean v6, v0, Lcom/android/server/am/Pageboost$IoRecord;->is64bit:Z

    invoke-static {v10, v6}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->isRecordingTarget(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_5

    move v6, v14

    goto :goto_2

    :cond_5
    const-wide/16 v17, 0x1000

    move/from16 v22, v12

    int-to-long v11, v7

    mul-long v11, v11, v17

    add-long v23, v4, v11

    const-wide/32 v11, 0x19000000

    cmp-long v6, v23, v11

    const/4 v12, 0x1

    if-lez v6, :cond_8

    move v13, v12

    :goto_3
    if-eqz v15, :cond_6

    .line 1905
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmFileDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    array-length v11, v15

    move-object v7, v2

    move-object v8, v10

    move-object v10, v15

    move/from16 v12, v21

    invoke-static/range {v6 .. v12}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->insertTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I[BII)V

    :cond_6
    if-eqz v13, :cond_7

    goto/16 :goto_7

    :cond_7
    move v6, v14

    goto/16 :goto_0

    :cond_8
    move v4, v14

    if-eqz v15, :cond_9

    move-object v14, v15

    move-object v5, v15

    move v15, v9

    move/from16 v17, v8

    move/from16 v18, v7

    move/from16 v19, v22

    .line 1883
    invoke-static/range {v14 .. v19}, Lcom/android/server/am/Pageboost$IoRecord;->resizeBitmap([BIIIII)[B

    move-result-object v6

    goto :goto_4

    :cond_9
    move-object v5, v15

    move-object/from16 v6, v20

    :goto_4
    if-nez v6, :cond_b

    if-eqz v5, :cond_a

    .line 1890
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmFileDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    array-length v11, v5

    move v14, v7

    move-object v7, v2

    move v15, v8

    move-object v8, v10

    move-object/from16 v16, v10

    move-object v10, v5

    const/16 v17, -0x1

    move v5, v12

    move/from16 v18, v22

    move/from16 v12, v21

    invoke-static/range {v6 .. v12}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->insertTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I[BII)V

    goto :goto_5

    :cond_a
    move v14, v7

    move v15, v8

    move-object/from16 v16, v10

    move v5, v12

    move/from16 v18, v22

    const/16 v17, -0x1

    .line 1894
    :goto_5
    invoke-static {v14}, Lcom/android/server/am/Pageboost$IoRecord;->createBitmap(I)[B

    move-result-object v6

    .line 1895
    invoke-static {v6, v3, v14, v5}, Lcom/android/server/am/Pageboost$IoRecord;->fillBitmap([BIIZ)V

    move v9, v15

    move-object v15, v6

    goto :goto_6

    :cond_b
    move v14, v7

    move v15, v8

    move-object/from16 v16, v10

    move/from16 v18, v22

    const/16 v17, -0x1

    add-int v8, v15, v14

    sub-int/2addr v8, v9

    move-object v15, v6

    move v14, v8

    :goto_6
    move v6, v4

    move-object/from16 v10, v16

    move/from16 v11, v17

    move/from16 v12, v18

    move-wide/from16 v4, v23

    move/from16 v16, v14

    goto/16 :goto_2

    .line 1912
    :cond_c
    :goto_7
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db insert done, overLimit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    iput-wide v4, v0, Lcom/android/server/am/Pageboost$IoRecord;->mBytesRecorded:J

    return-wide v4
.end method
