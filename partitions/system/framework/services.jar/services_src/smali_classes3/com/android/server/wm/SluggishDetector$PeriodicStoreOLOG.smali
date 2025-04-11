.class public abstract Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# static fields
.field public static Diff_OlogLength:J

.field public static Origin_OlogLength:J

.field public static STORE_FLAG_FOR_ADD:Z

.field public static final TAG:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$sminit()V
    .locals 0

    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->init()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smstep()V
    .locals 0

    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->step()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smstoreOLOG(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->storeOLOG(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->STORE_FLAG_FOR_ADD:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->Origin_OlogLength:J

    sput-wide v0, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->Diff_OlogLength:J

    return-void
.end method

.method public static check()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static clear()V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->check()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->init()V

    :cond_0
    return-void
.end method

.method public static init()V
    .locals 1

    sget-object v0, Lcom/android/server/wm/SluggishDetector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static makestoreOLOG()V
    .locals 0

    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->sendPeriodicReportToHandler()V

    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->clear()V

    return-void
.end method

.method public static sendPeriodicReportToHandler()V
    .locals 3

    const/16 v0, 0x15

    const-wide/32 v1, 0x493e0

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->-$$Nest$smsendMessageToHandlerDelayed(IJ)V

    return-void
.end method

.method public static step()V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->check()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->init()V

    :cond_0
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->makestoreOLOG()V

    return-void
.end method

.method public static storeOLOG(Ljava/lang/String;)Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->-$$Nest$sfgetBefore_Store_time()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-lez v2, :cond_0

    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->-$$Nest$sfgetBefore_Store_time()J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/32 v4, 0xdbba00

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    return v3

    :cond_0
    const/16 v0, 0x800

    new-array v0, v0, [B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/kperfmon"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result p0

    if-lez p0, :cond_1

    invoke-virtual {v1, v0, v3, p0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    invoke-static {v2, v3}, Lcom/android/server/wm/SluggishDetector;->-$$Nest$sfputBefore_Store_time(J)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object p0, v4

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, p0

    goto :goto_3

    :catch_0
    move-object v1, p0

    :catch_1
    move-object p0, v4

    goto :goto_5

    :catch_2
    move-object v1, p0

    :catch_3
    move-object p0, v4

    goto :goto_6

    :catch_4
    move-object v1, p0

    :catch_5
    move-object p0, v4

    goto :goto_7

    :cond_2
    move-object v1, p0

    :goto_1
    if-eqz p0, :cond_3

    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :catch_6
    :cond_3
    if-eqz v1, :cond_9

    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_f

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v1, p0

    move-object v4, v1

    :goto_3
    move-object p0, v0

    :goto_4
    if-eqz v4, :cond_4

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    :catch_7
    :cond_4
    if-eqz v1, :cond_5

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    :catch_8
    :cond_5
    throw p0

    :catch_9
    move-object v1, p0

    :goto_5
    if-eqz p0, :cond_6

    :try_start_7
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    :catch_a
    :cond_6
    if-eqz v1, :cond_9

    goto :goto_2

    :catch_b
    move-object v1, p0

    :goto_6
    if-eqz p0, :cond_7

    :try_start_8
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c

    :catch_c
    :cond_7
    if-eqz v1, :cond_9

    goto :goto_2

    :catch_d
    move-object v1, p0

    :goto_7
    if-eqz p0, :cond_8

    :try_start_9
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_e

    :catch_e
    :cond_8
    if-eqz v1, :cond_9

    goto :goto_2

    :catch_f
    :cond_9
    :goto_8
    const/4 p0, 0x1

    return p0
.end method
