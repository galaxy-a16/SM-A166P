.class public Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$KswapdReclaimer;
.super Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;
.source "UnifiedMemoryReclaimer.java"


# static fields
.field public static KSWAPD_MODE_SUPPORT:Z = false

.field public static KSWAPD_MODE_SUPPORT_CHECKED:Z = false

.field public static kswapdModePath:Ljava/lang/String; = "/sys/kernel/mm/vmscan/mem_boost_mode_kswapd"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string/jumbo v0, "kswapd"

    const/4 v1, 0x0

    .line 1199
    invoke-direct {p0, v0, v1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final kswapdModeSupported()Z
    .locals 3

    .line 1213
    sget-boolean p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$KswapdReclaimer;->KSWAPD_MODE_SUPPORT_CHECKED:Z

    if-nez p0, :cond_1

    const/4 p0, 0x1

    .line 1214
    sput-boolean p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$KswapdReclaimer;->KSWAPD_MODE_SUPPORT_CHECKED:Z

    .line 1215
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 1216
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$KswapdReclaimer;->kswapdModePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1217
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1218
    sput-boolean p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$KswapdReclaimer;->KSWAPD_MODE_SUPPORT:Z

    .line 1220
    :cond_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1222
    :cond_1
    sget-boolean p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$KswapdReclaimer;->KSWAPD_MODE_SUPPORT:Z

    return p0
.end method

.method public onSuppressBegin()V
    .locals 1

    const-string v0, "KswapdReclaimer: suppress begin"

    .line 1203
    invoke-static {v0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1204
    invoke-virtual {p0, v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$KswapdReclaimer;->writeKswapdMode(I)V

    return-void
.end method

.method public onSuppressEnd()V
    .locals 1

    const-string v0, "KswapdReclaimer: suppress end"

    .line 1208
    invoke-static {v0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 1209
    invoke-virtual {p0, v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$KswapdReclaimer;->writeKswapdMode(I)V

    return-void
.end method

.method public final writeKswapdMode(I)V
    .locals 4

    .line 1226
    invoke-virtual {p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$KswapdReclaimer;->kswapdModeSupported()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1229
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p0

    const/4 v0, 0x0

    .line 1232
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v3, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$KswapdReclaimer;->kswapdModePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1233
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1239
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
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p1

    .line 1235
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    .line 1239
    :try_start_4
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1244
    :catch_2
    :cond_1
    :goto_1
    invoke-static {p0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :goto_2
    if-eqz v0, :cond_2

    .line 1239
    :try_start_5
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1243
    :catch_3
    :cond_2
    throw p0
.end method
