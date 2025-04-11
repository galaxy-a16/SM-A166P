.class public final Lcom/android/server/am/Pageboost$FileMapInfo;
.super Ljava/lang/Object;
.source "Pageboost.java"


# instance fields
.field public mCorrectness:Z

.field public mPid:I


# direct methods
.method public static bridge synthetic -$$Nest$mgetFileMapInfo(Lcom/android/server/am/Pageboost$FileMapInfo;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)[J
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/Pageboost$FileMapInfo;->getFileMapInfo(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)[J

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1602
    iput v0, p0, Lcom/android/server/am/Pageboost$FileMapInfo;->mPid:I

    .line 1603
    iput-boolean v0, p0, Lcom/android/server/am/Pageboost$FileMapInfo;->mCorrectness:Z

    if-gtz p1, :cond_0

    return-void

    .line 1609
    :cond_0
    iput p1, p0, Lcom/android/server/am/Pageboost$FileMapInfo;->mPid:I

    const/4 p1, 0x1

    .line 1610
    iput-boolean p1, p0, Lcom/android/server/am/Pageboost$FileMapInfo;->mCorrectness:Z

    return-void
.end method


# virtual methods
.method public final getFileMapInfo(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)[J
    .locals 20

    move-object/from16 v0, p0

    .line 1619
    iget-boolean v1, v0, Lcom/android/server/am/Pageboost$FileMapInfo;->mCorrectness:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1623
    :cond_0
    iget v0, v0, Lcom/android/server/am/Pageboost$FileMapInfo;->mPid:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "filemap_info"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    .line 1626
    :try_start_0
    new-instance v6, Ljava/io/FileWriter;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v7, p1

    .line 1627
    :try_start_1
    invoke-virtual {v6, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    new-array v8, v2, [Ljava/lang/String;

    .line 1630
    invoke-static {v0, v8}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0

    if-eqz p2, :cond_1

    .line 1632
    array-length v8, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    int-to-long v8, v8

    move-wide v15, v8

    goto :goto_0

    :cond_1
    move-wide v15, v4

    :goto_0
    move v8, v2

    move v9, v8

    .line 1634
    :goto_1
    :try_start_2
    array-length v10, v0

    if-ge v8, v10, :cond_6

    .line 1635
    aget-byte v10, v0, v8

    const/16 v11, 0xa

    if-ne v10, v11, :cond_5

    .line 1636
    invoke-static {v0, v9, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    .line 1637
    new-instance v10, Ljava/lang/String;

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v9, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v9, " "

    .line 1638
    invoke-virtual {v10, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1639
    array-length v10, v9

    if-ne v10, v1, :cond_4

    .line 1640
    aget-object v10, v9, v2

    const-string/jumbo v11, "mapped"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1641
    aget-object v9, v9, v3

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v11, 0x1000

    mul-long/2addr v9, v11

    add-long/2addr v4, v9

    add-int/lit8 v9, v8, 0x1

    goto :goto_3

    .line 1645
    :cond_2
    aget-object v10, v9, v2

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1646
    aget-object v9, v9, v3

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v9, v8, 0x1

    add-int/2addr v8, v13

    add-int/lit8 v14, v8, 0x1

    .line 1647
    invoke-static {v0, v9, v14}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    add-int/lit8 v17, v14, 0x1

    if-eqz p2, :cond_3

    .line 1653
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmFileDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const/16 v18, 0x0

    move-object/from16 v9, p3

    move-object/from16 v10, p1

    move/from16 v19, v14

    move/from16 v14, v18

    invoke-static/range {v8 .. v14}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->insertTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I[BII)V

    goto :goto_2

    :cond_3
    move/from16 v19, v14

    :goto_2
    move/from16 v9, v17

    move/from16 v8, v19

    goto :goto_3

    .line 1657
    :cond_4
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "unknown error during parsing of filemap_info"

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :cond_5
    :goto_3
    add-int/2addr v8, v3

    goto :goto_1

    .line 1662
    :cond_6
    :goto_4
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v7, v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v7, v0

    move-wide v15, v4

    .line 1626
    :goto_5
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v6, v0

    :try_start_5
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-wide v15, v4

    .line 1663
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    new-array v0, v1, [J

    aput-wide v4, v0, v2

    aput-wide v15, v0, v3

    return-object v0
.end method

.method public isCorrect()Z
    .locals 0

    .line 1670
    iget-boolean p0, p0, Lcom/android/server/am/Pageboost$FileMapInfo;->mCorrectness:Z

    return p0
.end method
