.class public abstract Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;
.super Ljava/lang/Object;
.source "KernelMemoryProxy.java"


# static fields
.field public static RECLAIMER_LOG_SUPPORT:Z = true

.field public static RECLAIMER_LOG_SUPPORT_CHECKED:Z = false

.field public static reclaimerLogPath:Ljava/lang/String; = "/proc/reclaimer_log"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public static reclaimerLogSupported()Z
    .locals 3

    .line 38
    sget-boolean v0, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->RECLAIMER_LOG_SUPPORT_CHECKED:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 39
    sput-boolean v0, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->RECLAIMER_LOG_SUPPORT_CHECKED:Z

    .line 40
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 41
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->reclaimerLogPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 43
    sput-boolean v1, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->RECLAIMER_LOG_SUPPORT:Z

    .line 45
    :cond_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 47
    :cond_1
    sget-boolean v0, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->RECLAIMER_LOG_SUPPORT:Z

    return v0
.end method

.method public static write(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 75
    invoke-static {p0, v0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    return-void
.end method

.method public static write(Ljava/lang/String;Z)V
    .locals 4

    if-eqz p1, :cond_0

    const-string p1, "UMR"

    .line 52
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    invoke-static {}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->reclaimerLogSupported()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 57
    :cond_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p1

    const/4 v0, 0x0

    .line 60
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v3, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->reclaimerLogPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 61
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UMR: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 63
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_2

    .line 67
    :try_start_4
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 72
    :catch_2
    :cond_2
    :goto_1
    invoke-static {p1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :goto_2
    if-eqz v0, :cond_3

    .line 67
    :try_start_5
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 71
    :catch_3
    :cond_3
    throw p0
.end method
