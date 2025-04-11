.class public Lcom/android/server/BootReceiver$SaveLastkmsg;
.super Ljava/lang/Thread;
.source "BootReceiver.java"


# instance fields
.field public buffer:[B

.field public debughistoryDone:I

.field public fin:Ljava/io/FileInputStream;

.field public fout:Ljava/io/FileOutputStream;

.field public isSaveLastkmsgDone:Z

.field public final synthetic this$0:Lcom/android/server/BootReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/BootReceiver;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->this$0:Lcom/android/server/BootReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 348
    iput-object p1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 349
    iput-object p1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->fout:Ljava/io/FileOutputStream;

    const/16 p1, 0x800

    new-array p1, p1, [B

    .line 350
    iput-object p1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    const/4 p1, 0x0

    .line 352
    iput-boolean p1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->isSaveLastkmsgDone:Z

    .line 366
    iput p1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->debughistoryDone:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/BootReceiver;Lcom/android/server/BootReceiver$SaveLastkmsg-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/BootReceiver$SaveLastkmsg;-><init>(Lcom/android/server/BootReceiver;)V

    return-void
.end method


# virtual methods
.method public final logLastKmsg()V
    .locals 26

    move-object/from16 v1, p0

    const-string v2, "UTF-8"

    .line 411
    new-instance v3, Ljava/io/File;

    const-string v4, "/proc/last_kmsg"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 412
    new-instance v4, Ljava/io/File;

    const-string v5, "/proc/reset_summary"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 413
    new-instance v5, Ljava/io/File;

    const-string v6, "/proc/reset_klog"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 414
    new-instance v6, Ljava/io/File;

    const-string v7, "/proc/reset_tzlog"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 415
    new-instance v7, Ljava/io/File;

    const-string v8, "/proc/version"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 416
    new-instance v8, Ljava/io/File;

    const-string v9, "/proc/auto_comment"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 417
    new-instance v9, Ljava/io/File;

    const-string v10, "/proc/reset_rwc"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 418
    new-instance v10, Ljava/io/File;

    const-string v11, "/proc/reset_history"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 419
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/system/users/service/data/eRR.p"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 420
    new-instance v12, Ljava/io/File;

    const-string v13, "/data/log/dumpstate_debug_history.lst"

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 424
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    const-string/jumbo v14, "logLastKmsg - Start"

    const-string v15, "BootReceiver"

    .line 426
    invoke-static {v15, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {v13}, Landroid/text/format/Time;->setToNow()V

    const-string/jumbo v14, "ro.boot.hardware"

    move-object/from16 v16, v6

    const/4 v6, 0x0

    .line 430
    invoke-static {v14, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 432
    iget-object v6, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->this$0:Lcom/android/server/BootReceiver;

    invoke-static {v6}, Lcom/android/server/BootReceiver;->-$$Nest$mproc_reset_reason(Lcom/android/server/BootReceiver;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v18, v4

    const-string v4, "%Y%m%d_%H%M%S"

    .line 433
    invoke-virtual {v13, v4}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 436
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v19

    move-object/from16 v20, v10

    const-string/jumbo v10, "s5e"

    move-object/from16 v21, v8

    const-string v8, "exynos"

    move-object/from16 v22, v12

    const-string v12, ".log.gz"

    move-object/from16 v23, v11

    const-string v11, "/data/log/dumpstate_lastkmsg_"

    move-object/from16 v24, v5

    const-string v5, "_"

    if-eqz v19, :cond_2

    move-object/from16 v19, v3

    const/16 v3, 0x400

    move-object/from16 v25, v7

    const/4 v7, 0x0

    .line 438
    :try_start_0
    invoke-static {v9, v3, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 439
    invoke-virtual {v14, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v7, 0x1

    if-eq v9, v7, :cond_1

    invoke-virtual {v14, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-ne v9, v7, :cond_0

    goto :goto_0

    .line 442
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/BootReceiver;->-$$Nest$sfputlogFileKernel(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 440
    :cond_1
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/BootReceiver;->-$$Nest$sfputlogFileKernel(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 445
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "readTextFile error"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "Reset_RWC"

    invoke-static {v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/BootReceiver;->-$$Nest$sfputlogFileKernel(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object/from16 v19, v3

    move-object/from16 v25, v7

    .line 449
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/BootReceiver;->-$$Nest$sfputlogFileKernel(Ljava/lang/String;)V

    .line 451
    :goto_1
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/android/server/BootReceiver;->-$$Nest$sfgetlogFileKernel()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x1e

    .line 453
    invoke-virtual {v1, v4}, Lcom/android/server/BootReceiver$SaveLastkmsg;->waitUntildebughistoryDone(I)I

    move-result v5

    .line 454
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "We waited make debug_history Done for "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "s "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v5, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->this$0:Lcom/android/server/BootReceiver;

    invoke-static {v5, v4}, Lcom/android/server/BootReceiver;->-$$Nest$mwaitUntileRRpDone(Lcom/android/server/BootReceiver;I)V

    const/4 v4, 0x0

    :try_start_1
    const-string v5, "%Y-%m-%d %H:%M:%S"

    .line 461
    invoke-virtual {v13, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "========================================================\n"

    .line 464
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "== dumpstate lastkmsg : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 466
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "logLastKmsg - New filename is "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v15, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v9, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fout:Ljava/io/FileOutputStream;

    .line 469
    new-instance v9, Ljava/util/zip/ZipOutputStream;

    iget-object v11, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fout:Ljava/io/FileOutputStream;

    invoke-direct {v9, v11}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 471
    :try_start_2
    new-instance v11, Ljava/util/zip/ZipEntry;

    const-string v12, "dumpstate_lastkmsg.lst"

    invoke-direct {v11, v12}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 473
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 474
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 475
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/zip/ZipOutputStream;->write([B)V

    const-string v5, "\n[Kernel version]: "

    .line 478
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 480
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->isFile()Z

    move-result v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string/jumbo v11, "unknown"

    if-eqz v5, :cond_3

    .line 481
    :try_start_3
    new-instance v5, Ljava/io/FileInputStream;

    move-object/from16 v12, v25

    invoke-direct {v5, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 482
    :goto_2
    :try_start_4
    iget-object v12, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    invoke-virtual {v5, v12}, Ljava/io/FileInputStream;->read([B)I

    move-result v12

    if-lez v12, :cond_4

    .line 483
    iget-object v13, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    invoke-virtual {v9, v13, v4, v12}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v0

    goto/16 :goto_d

    .line 487
    :cond_3
    :try_start_5
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/zip/ZipOutputStream;->write([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v5, 0x0

    :cond_4
    :try_start_6
    const-string v12, "[Build Fingerprint]: "

    .line 491
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/zip/ZipOutputStream;->write([B)V

    const-string/jumbo v12, "ro.build.fingerprint"

    .line 493
    invoke-static {v12, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 494
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n\n"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 495
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 497
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 498
    iget-object v7, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->this$0:Lcom/android/server/BootReceiver;

    invoke-static {v7}, Lcom/android/server/BootReceiver;->-$$Nest$mis_store_lastkmsg(Lcom/android/server/BootReceiver;)I

    move-result v7

    const/4 v11, 0x1

    if-ne v7, v11, :cond_5

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 499
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v11, v24

    invoke-direct {v7, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v7, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    goto :goto_3

    .line 501
    :cond_5
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v11, v19

    invoke-direct {v7, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v7, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 503
    :goto_3
    iget-object v7, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    iget-object v11, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    invoke-virtual {v7, v11}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_6

    .line 504
    iget-object v11, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    invoke-virtual {v9, v11, v4, v7}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_3

    .line 506
    :cond_6
    iget-object v7, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    goto :goto_4

    :cond_7
    const-string v11, "== not found /proc/last_kmsg sysfs\n"

    .line 509
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 510
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 511
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 513
    :goto_4
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 515
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 516
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v11, v23

    invoke-direct {v7, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v7, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 517
    new-instance v7, Ljava/util/zip/ZipEntry;

    const-string v11, "eRR.p"

    invoke-direct {v7, v11}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 519
    :goto_5
    iget-object v7, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    iget-object v11, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    invoke-virtual {v7, v11}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_8

    .line 520
    iget-object v11, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    invoke-virtual {v9, v11, v4, v7}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_5

    .line 522
    :cond_8
    iget-object v7, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 523
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 526
    :cond_9
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 527
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v11, v22

    invoke-direct {v7, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v7, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 528
    new-instance v7, Ljava/util/zip/ZipEntry;

    const-string v11, "dumpstate_debug_history.lst"

    invoke-direct {v7, v11}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 531
    :goto_6
    iget-object v7, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    iget-object v11, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    invoke-virtual {v7, v11}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_a

    .line 532
    iget-object v11, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    invoke-virtual {v9, v11, v4, v7}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_6

    .line 534
    :cond_a
    iget-object v7, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 535
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 538
    :cond_b
    iget-object v7, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->this$0:Lcom/android/server/BootReceiver;

    invoke-static {v7}, Lcom/android/server/BootReceiver;->-$$Nest$mis_store_lastkmsg(Lcom/android/server/BootReceiver;)I

    move-result v7

    const/4 v11, 0x1

    if-ne v7, v11, :cond_17

    .line 540
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->isFile()Z

    move-result v7
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    const-string v11, "MP"

    if-eqz v7, :cond_d

    :try_start_7
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 541
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v12, v21

    invoke-direct {v7, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v7, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 542
    new-instance v7, Ljava/util/zip/ZipEntry;

    const-string v12, "dumpstate_auto_comment.lst"

    invoke-direct {v7, v12}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 545
    :goto_7
    iget-object v7, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    iget-object v12, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    invoke-virtual {v7, v12}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_c

    .line 546
    iget-object v12, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    invoke-virtual {v9, v12, v4, v7}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_7

    .line 549
    :cond_c
    iget-object v7, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 550
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 553
    :cond_d
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 554
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v12, v20

    invoke-direct {v7, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v7, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 555
    new-instance v7, Ljava/util/zip/ZipEntry;

    const-string v12, "history_of_auto_comment.txt"

    invoke-direct {v7, v12}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 558
    :goto_8
    iget-object v7, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    iget-object v12, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    invoke-virtual {v7, v12}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_e

    .line 559
    iget-object v12, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    invoke-virtual {v9, v12, v4, v7}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_8

    .line 561
    :cond_e
    iget-object v7, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 562
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 565
    :cond_f
    invoke-static {}, Lcom/android/server/BootReceiver;->-$$Nest$sfgetstoreExtraInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_10

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 566
    new-instance v7, Ljava/util/zip/ZipEntry;

    const-string/jumbo v12, "store_extra_info.lst"

    invoke-direct {v7, v12}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 567
    invoke-static {}, Lcom/android/server/BootReceiver;->-$$Nest$sfgetstoreExtraInfo()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 568
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    const-string v2, ""

    .line 569
    invoke-static {v2}, Lcom/android/server/BootReceiver;->-$$Nest$sfputstoreExtraInfo(Ljava/lang/String;)V

    .line 572
    :cond_10
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 573
    new-instance v2, Ljava/io/FileInputStream;

    move-object/from16 v6, v18

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v2, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 574
    new-instance v2, Ljava/util/zip/ZipEntry;

    const-string/jumbo v6, "reset_summary.html"

    invoke-direct {v2, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 577
    :goto_9
    iget-object v2, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    iget-object v6, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    invoke-virtual {v2, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_11

    .line 578
    iget-object v6, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    invoke-virtual {v9, v6, v4, v2}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_9

    .line 580
    :cond_11
    iget-object v2, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 581
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 584
    :cond_12
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 585
    new-instance v2, Ljava/io/FileInputStream;

    move-object/from16 v6, v16

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v2, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 586
    new-instance v2, Ljava/util/zip/ZipEntry;

    const-string/jumbo v6, "ocimem.lst"

    invoke-direct {v2, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 589
    :goto_a
    iget-object v2, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    iget-object v6, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    invoke-virtual {v2, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_13

    .line 590
    iget-object v6, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    invoke-virtual {v9, v6, v4, v2}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_a

    .line 592
    :cond_13
    iget-object v2, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 593
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 597
    :cond_14
    invoke-virtual {v14, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_15

    invoke-virtual {v14, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-ne v2, v6, :cond_17

    .line 598
    :cond_15
    iget-object v2, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->this$0:Lcom/android/server/BootReceiver;

    invoke-static {v2, v9}, Lcom/android/server/BootReceiver;->-$$Nest$mlogLastAboxMsg(Lcom/android/server/BootReceiver;Ljava/util/zip/ZipOutputStream;)V

    .line 600
    iget-object v2, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->this$0:Lcom/android/server/BootReceiver;

    invoke-static {v2}, Lcom/android/server/BootReceiver;->-$$Nest$fgetmAudioManager(Lcom/android/server/BootReceiver;)Landroid/media/AudioManager;

    move-result-object v2

    if-eqz v2, :cond_16

    const-string v2, "Send lastaboxmsg"

    .line 601
    invoke-static {v15, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v2, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->this$0:Lcom/android/server/BootReceiver;

    invoke-static {v2}, Lcom/android/server/BootReceiver;->-$$Nest$fgetmAudioManager(Lcom/android/server/BootReceiver;)Landroid/media/AudioManager;

    move-result-object v2

    const-string/jumbo v6, "lastaboxmsg=1"

    invoke-virtual {v2, v6}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_b

    :cond_16
    const-string/jumbo v2, "mAudioManager is NULL skip lastaboxmsg"

    .line 604
    invoke-static {v15, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 613
    :cond_17
    :goto_b
    :try_start_8
    iget-object v2, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    :cond_18
    if-eqz v5, :cond_19

    .line 614
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 615
    :catch_3
    :cond_19
    :try_start_a
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 616
    :catch_4
    :try_start_b
    iget-object v2, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fout:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_1d

    :goto_c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_e

    :catchall_0
    move-exception v0

    move-object v2, v0

    const/4 v6, 0x0

    goto/16 :goto_18

    :catch_5
    move-exception v0

    move-object v2, v0

    const/4 v5, 0x0

    goto :goto_d

    :catchall_1
    move-exception v0

    move-object v2, v0

    const/4 v6, 0x0

    const/4 v9, 0x0

    goto/16 :goto_18

    :catch_6
    move-exception v0

    move-object v2, v0

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 611
    :goto_d
    :try_start_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "logLastKmsg - File copy error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 613
    :try_start_d
    iget-object v2, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    :catch_7
    :cond_1a
    if-eqz v5, :cond_1b

    .line 614
    :try_start_e
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    :catch_8
    :cond_1b
    if-eqz v9, :cond_1c

    .line 615
    :try_start_f
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 616
    :catch_9
    :cond_1c
    :try_start_10
    iget-object v2, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fout:Ljava/io/FileOutputStream;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    if-eqz v2, :cond_1d

    goto :goto_c

    :catch_a
    :cond_1d
    :goto_e
    const/16 v2, 0x3ef

    const/16 v5, 0x3e8

    const/16 v6, 0x1a0

    .line 620
    :try_start_11
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    .line 622
    invoke-static {v7, v6, v5, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    goto :goto_f

    :catch_b
    move-exception v0

    move-object v7, v0

    .line 626
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dumpstate_lastkmsg - getCanonicalPath error"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :goto_f
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/log/dumpstate_latest_lastkmsg.log.gz"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 635
    :try_start_12
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_f
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 636
    :try_start_13
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 639
    :goto_10
    :try_start_14
    iget-object v9, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    const/16 v10, 0x800

    invoke-virtual {v8, v9, v4, v10}, Ljava/io/FileInputStream;->read([BII)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1e

    .line 640
    iget-object v10, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    invoke-virtual {v3, v10, v4, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    goto :goto_10

    .line 645
    :cond_1e
    :try_start_15
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_c

    .line 646
    :catch_c
    :try_start_16
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_11

    goto :goto_14

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object/from16 v17, v3

    goto :goto_16

    :catch_d
    move-exception v0

    move-object v1, v0

    move-object/from16 v17, v3

    goto :goto_13

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object v6, v8

    goto :goto_11

    :catch_e
    move-exception v0

    move-object v1, v0

    goto :goto_12

    :catchall_4
    move-exception v0

    move-object v1, v0

    const/4 v6, 0x0

    :goto_11
    const/16 v17, 0x0

    goto :goto_17

    :catch_f
    move-exception v0

    move-object v1, v0

    const/4 v8, 0x0

    :goto_12
    const/16 v17, 0x0

    .line 643
    :goto_13
    :try_start_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "latest LastKmsg - File copy error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    if-eqz v8, :cond_1f

    .line 645
    :try_start_18
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_10

    :catch_10
    :cond_1f
    if-eqz v17, :cond_20

    .line 646
    :try_start_19
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_11

    .line 650
    :catch_11
    :cond_20
    :goto_14
    :try_start_1a
    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 652
    invoke-static {v1, v6, v5, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_12

    goto :goto_15

    :catch_12
    move-exception v0

    move-object v1, v0

    .line 656
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpstate_latest_lastkmsg - getCanonicalPath error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    const-string/jumbo v1, "logLastKmsg - Save Complete"

    .line 659
    invoke-static {v15, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_5
    move-exception v0

    move-object v1, v0

    :goto_16
    move-object v6, v8

    :goto_17
    if-eqz v6, :cond_21

    .line 645
    :try_start_1b
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_13

    :catch_13
    :cond_21
    if-eqz v17, :cond_22

    .line 646
    :try_start_1c
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_14

    .line 647
    :catch_14
    :cond_22
    throw v1

    :catchall_6
    move-exception v0

    move-object v2, v0

    move-object v6, v5

    .line 613
    :goto_18
    :try_start_1d
    iget-object v3, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    if-eqz v3, :cond_23

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_15

    :catch_15
    :cond_23
    if-eqz v6, :cond_24

    .line 614
    :try_start_1e
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_16

    :catch_16
    :cond_24
    if-eqz v9, :cond_25

    .line 615
    :try_start_1f
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_17

    .line 616
    :catch_17
    :cond_25
    :try_start_20
    iget-object v1, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fout:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_18

    .line 617
    :catch_18
    :cond_26
    throw v2
.end method

.method public run()V
    .locals 1

    .line 664
    invoke-virtual {p0}, Lcom/android/server/BootReceiver$SaveLastkmsg;->trimDumps()V

    .line 665
    invoke-virtual {p0}, Lcom/android/server/BootReceiver$SaveLastkmsg;->logLastKmsg()V

    const/4 v0, 0x1

    .line 666
    iput-boolean v0, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->isSaveLastkmsgDone:Z

    return-void
.end method

.method public final trimDumps()V
    .locals 8

    .line 382
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 385
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "BootReceiver"

    if-nez v2, :cond_1

    .line 386
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "trimLastKmsg - logFolder mkdir failed"

    .line 387
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    if-nez v1, :cond_2

    return-void

    .line 397
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 398
    new-instance v2, Lcom/android/server/BootReceiver$Dump;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x5

    const-string/jumbo v6, "lastkmsg"

    invoke-direct {v2, v4, v5, v6}, Lcom/android/server/BootReceiver$Dump;-><init>(Ljava/util/List;ILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    new-instance v2, Lcom/android/server/BootReceiver$Dump;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x1

    const-string/jumbo v6, "latest_lastkmsg"

    invoke-direct {v2, v4, v5, v6}, Lcom/android/server/BootReceiver$Dump;-><init>(Ljava/util/List;ILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/BootReceiver$Dump;

    .line 403
    :try_start_0
    iget-object v4, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->this$0:Lcom/android/server/BootReceiver;

    invoke-virtual {v2}, Lcom/android/server/BootReceiver$Dump;->getFileList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/server/BootReceiver$Dump;->getListMax()I

    move-result v6

    invoke-virtual {v2}, Lcom/android/server/BootReceiver$Dump;->getDumpInFix()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v1, v5, v6, v7}, Lcom/android/server/BootReceiver;->-$$Nest$m_trimADumpFile(Lcom/android/server/BootReceiver;[Ljava/io/File;Ljava/util/List;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 405
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "trim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/BootReceiver$Dump;->getDumpInFix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    return-void
.end method

.method public waitUntilSaveLastkmsgDone(I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 356
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->isSaveLastkmsgDone:Z

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const-wide/16 v1, 0x3e8

    .line 358
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 361
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "waitUntilSaveLastkmsgDone error"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BootReceiver"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final waitUntildebughistoryDone(I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    :try_start_0
    const-string/jumbo v2, "sys.boot.debug_history"

    .line 370
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->debughistoryDone:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    return v1

    :cond_0
    const-wide/16 v2, 0x3e8

    .line 373
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 376
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "waitUntildebughistoryDone error"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BootReceiver"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method
