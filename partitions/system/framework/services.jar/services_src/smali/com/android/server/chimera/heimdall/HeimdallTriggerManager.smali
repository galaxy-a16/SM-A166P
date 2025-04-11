.class public Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;
.super Ljava/lang/Object;
.source "HeimdallTriggerManager.java"


# instance fields
.field public ENABLE_GLOBAL_KILL:Z

.field public ENABLE_SPEC_KILL:Z

.field public mGlobalKillIgnoreSet:Ljava/util/HashSet;

.field public mGlobalKillThresholdKb:I

.field public mSpecKillIgnoreSet:Ljava/util/HashSet;

.field public mSpecMap:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->ENABLE_GLOBAL_KILL:Z

    iput-boolean v0, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->ENABLE_SPEC_KILL:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mSpecMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mSpecKillIgnoreSet:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mGlobalKillIgnoreSet:Ljava/util/HashSet;

    const-string/jumbo v0, "ro.boot.debug_level"

    const-string v1, "0x4f4c"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "ro.build.type"

    const-string v2, "eng"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->loadSpec()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->ENABLE_SPEC_KILL:Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->loadGlobal()Z

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v2, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->ENABLE_GLOBAL_KILL:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public dumpInfo(Ljava/io/PrintWriter;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total spec count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mSpecMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mSpecMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "* "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " KB"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getSpecKb(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->isSamsungProcess(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x40000

    :try_start_0
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mSpecMap:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    :try_start_1
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mSpecMap:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return v0
.end method

.method public final isSamsungProcess(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)Z
    .locals 1

    iget-object p0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    const-string v0, "com.sec.android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    const-string p1, "com.samsung.android"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isTriggered(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->currentPhase()I

    move-result p0

    const/16 v0, 0x20

    const/4 v1, 0x0

    if-ne p0, v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isGlobalKill()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isSpecKill()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->currentPhase()I

    move-result p0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_3

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->shouldKill()Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public final loadGlobal()Z
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mGlobalKillThresholdKb:I

    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->getTotalMemorySizeKb()J

    move-result-wide v1

    long-to-int v1, v1

    const/high16 v2, 0xc00000

    const/high16 v3, 0x800000

    if-le v1, v2, :cond_0

    iput v3, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mGlobalKillThresholdKb:I

    goto :goto_0

    :cond_0
    const/high16 v2, 0x600000

    if-le v1, v3, :cond_1

    iput v2, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mGlobalKillThresholdKb:I

    goto :goto_0

    :cond_1
    const/high16 v3, 0x400000

    if-le v1, v2, :cond_2

    iput v3, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mGlobalKillThresholdKb:I

    goto :goto_0

    :cond_2
    if-le v1, v3, :cond_3

    const/high16 v1, 0x300000

    iput v1, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mGlobalKillThresholdKb:I

    :cond_3
    :goto_0
    iget p0, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mGlobalKillThresholdKb:I

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public final loadSpec()Z
    .locals 11

    const-string v0, "1"

    const-string v1, "Failed to close /system/heimdallddata/spec.txt"

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/system/heimdallddata/spec.txt"

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v7, v3

    const/4 v8, 0x4

    if-lt v7, v8, :cond_0

    aget-object v7, v3, v2

    aget-object v8, v3, v6

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x2

    aget-object v9, v3, v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v10, 0x3

    :try_start_3
    aget-object v3, v3, v10

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-gtz v10, :cond_1

    goto :goto_2

    :cond_1
    move v6, v8

    :goto_2
    if-eqz v6, :cond_2

    iget-object v3, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mSpecKillIgnoreSet:Ljava/util/HashSet;

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    iget-object v6, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mSpecMap:Ljava/util/HashMap;

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    if-eqz v9, :cond_0

    iget-object v3, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mGlobalKillIgnoreSet:Ljava/util/HashSet;

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_3
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move v2, v6

    goto :goto_5

    :catch_1
    invoke-static {v1}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    goto :goto_5

    :catchall_0
    move-exception p0

    move-object v3, v5

    goto :goto_6

    :catch_2
    move-exception p0

    move-object v3, v5

    goto :goto_4

    :catch_3
    move-exception p0

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v4, v3

    goto :goto_6

    :catch_4
    move-exception p0

    move-object v4, v3

    :goto_4
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read spec from /system/heimdallddata/spec.txt, exception: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v3, :cond_4

    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :cond_5
    :goto_5
    return v2

    :catchall_2
    move-exception p0

    :goto_6
    if-eqz v3, :cond_6

    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_7

    :catch_5
    invoke-static {v1}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    :cond_7
    :goto_7
    throw p0
.end method

.method public trigger(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->triggerGlobalKill(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->triggerSpecKill(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    return-void
.end method

.method public final triggerGlobalKill(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->ENABLE_GLOBAL_KILL:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isSpecKill()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mGlobalKillIgnoreSet:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->currentPhase()I

    move-result v0

    const/16 v1, 0x20

    const-string v2, ") "

    const-string v3, "KB SCAN_VERSION="

    const-string v4, "KB Threshold="

    if-ne v0, v1, :cond_2

    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->anonBeforeGc:I

    iget v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->graphicsBeforeGc:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mGlobalKillThresholdKb:I

    if-le v0, p0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->setGlobalKill()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trigger Global kill before GC. (Usage="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/android/server/chimera/heimdall/Heimdall;->SCAN_VERSION:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->toDumpString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->clearGlobalKill()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->currentPhase()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->anonAfterGc:I

    iget v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->graphicsAfterGc:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mGlobalKillThresholdKb:I

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isGlobalKill()Z

    move-result v1

    if-eqz v1, :cond_3

    if-le v0, p0, :cond_3

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->setShouldKill()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trigger Global kill after GC. (Usage="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/android/server/chimera/heimdall/Heimdall;->SCAN_VERSION:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->toDumpString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->clearShouldKill()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final triggerSpecKill(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->ENABLE_SPEC_KILL:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isGlobalKill()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mSpecKillIgnoreSet:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->currentPhase()I

    move-result v0

    const/16 v1, 0x20

    const-string v2, ") "

    const-string v3, "KB Threshold="

    if-ne v0, v1, :cond_4

    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->anonBeforeGc:I

    iget v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->graphicsBeforeGc:I

    add-int/2addr v0, v1

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->getSpecKb(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)I

    move-result p0

    const v1, 0x7fffffff

    if-eq p0, v1, :cond_2

    mul-int/lit8 p0, p0, 0x6

    div-int/lit8 p0, p0, 0x5

    :cond_2
    if-le v0, p0, :cond_3

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->setSpecKill()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trigger Spec kill before GC. (Usage="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "KB(x1.2) SCAN_VERSION="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/android/server/chimera/heimdall/Heimdall;->SCAN_VERSION:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->toDumpString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->clearSpecKill()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->currentPhase()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->anonAfterGc:I

    iget v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->graphicsAfterGc:I

    add-int/2addr v0, v1

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->getSpecKb(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)I

    move-result p0

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isSpecKill()Z

    move-result v1

    if-eqz v1, :cond_5

    if-le v0, p0, :cond_5

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->setShouldKill()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trigger Spec kill after GC. (Usage="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "KB SCAN_VERSION="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/android/server/chimera/heimdall/Heimdall;->SCAN_VERSION:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->toDumpString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->clearShouldKill()V

    :cond_6
    :goto_0
    return-void
.end method
