.class public abstract Lcom/android/server/am/Pageboost$BigDataProxy;
.super Ljava/lang/Object;
.source "Pageboost.java"


# static fields
.field public static CNT_INFO:I = 0xa

.field public static ENABLED:Z = false

.field public static mSemHqmManager:Landroid/os/SemHqmManager;

.field public static final sLock:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetENABLED()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/am/Pageboost$BigDataProxy;->ENABLED:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$smmakeString()Ljava/lang/String;
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/am/Pageboost$BigDataProxy;->makeString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 2768
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/Pageboost$BigDataProxy;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public static initBigDataProxy()V
    .locals 5

    .line 2773
    sget-object v0, Lcom/android/server/am/Pageboost$BigDataProxy;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2782
    :try_start_0
    sget-boolean v1, Lcom/android/server/am/Pageboost$BigDataProxy;->ENABLED:Z

    if-eqz v1, :cond_1

    .line 2783
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bigdata init started"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2785
    :try_start_1
    new-instance v1, Ljava/lang/String;

    const-string v2, "/data/misc/pageboost/last_bigdata_string"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    const-string v2, " "

    .line 2786
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2788
    array-length v2, v2

    sget v3, Lcom/android/server/am/Pageboost$BigDataProxy;->CNT_INFO:I

    if-gt v2, v3, :cond_0

    .line 2789
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bigdata str: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2791
    :cond_0
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "invalid bigdata file data"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2794
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bigdata File is not found.."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static keepLastData()V
    .locals 7

    .line 2801
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/Pageboost$BigDataProxy;->ENABLED:Z

    if-nez v0, :cond_0

    goto :goto_4

    .line 2805
    :cond_0
    sget-object v0, Lcom/android/server/am/Pageboost$BigDataProxy;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2806
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/data/misc/pageboost/last_bigdata_string"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 2807
    :try_start_1
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string v3, " "

    .line 2809
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "write : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2810
    invoke-virtual {v2, v3}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2811
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_2

    :catchall_0
    move-exception v3

    .line 2806
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    .line 2812
    :try_start_9
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "invalid bigdata file data"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2813
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2815
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v1

    :cond_1
    :goto_4
    return-void
.end method

.method public static makeString()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, " "

    return-object v0
.end method

.method public static sendData()V
    .locals 11

    .line 2820
    sget-boolean v0, Lcom/android/server/am/Pageboost$BigDataProxy;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 2824
    :cond_0
    invoke-static {}, Lcom/android/server/am/Pageboost$BigDataProxy;->makeString()Ljava/lang/String;

    move-result-object v9

    .line 2826
    sget-object v1, Lcom/android/server/am/Pageboost$BigDataProxy;->mSemHqmManager:Landroid/os/SemHqmManager;

    const/4 v2, 0x0

    const-string v3, "Sluggish"

    const-string v4, "VRDK"

    const-string/jumbo v5, "ph"

    const-string v6, "0.0"

    const-string/jumbo v7, "sec"

    const-string v8, ""

    const-string v10, ""

    invoke-virtual/range {v1 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
