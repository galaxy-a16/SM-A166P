.class public Lcom/android/server/am/CrashDexOpt$CrashDexOptThread;
.super Ljava/lang/Thread;
.source "CrashDexOpt.java"


# instance fields
.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public final maxOccurredCount:I

.field public final synthetic this$0:Lcom/android/server/am/CrashDexOpt;


# direct methods
.method public constructor <init>(Lcom/android/server/am/CrashDexOpt;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/CrashDexOpt$CrashKind;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/server/am/CrashDexOpt$CrashDexOptThread;->this$0:Lcom/android/server/am/CrashDexOpt;

    const-string p1, "CrashDexOpt"

    .line 80
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 81
    iput-object p2, p0, Lcom/android/server/am/CrashDexOpt$CrashDexOptThread;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 83
    sget-object p1, Lcom/android/server/am/CrashDexOpt$CrashKind;->JAVA:Lcom/android/server/am/CrashDexOpt$CrashKind;

    if-ne p3, p1, :cond_0

    const/4 p1, 0x2

    .line 84
    iput p1, p0, Lcom/android/server/am/CrashDexOpt$CrashDexOptThread;->maxOccurredCount:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 86
    iput p1, p0, Lcom/android/server/am/CrashDexOpt$CrashDexOptThread;->maxOccurredCount:I

    :goto_0
    return-void
.end method


# virtual methods
.method public final doForceDexOpt(Ljava/lang/String;)V
    .locals 10

    .line 96
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->useArtService()Z

    move-result p0

    const-string v0, "dexopt fail: "

    const-string v1, "Try to re-complie: "

    const-string v2, "CRASH_DEXOPT"

    if-eqz p0, :cond_2

    .line 97
    const-class p0, Lcom/android/server/pm/PackageManagerLocal;

    .line 98
    invoke-static {p0}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageManagerLocal;

    .line 104
    new-instance v9, Lcom/android/server/pm/dex/DexoptOptions;

    const/16 v5, 0x18

    const-string/jumbo v6, "speed-profile"

    const/4 v7, 0x0

    const/16 v8, 0x407

    move-object v3, v9

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 109
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object p0

    .line 110
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 112
    invoke-virtual {v9, v1}, Lcom/android/server/pm/dex/DexoptOptions;->convertToDexoptParams(I)Lcom/android/server/art/model/DexoptParams;

    move-result-object v1

    .line 113
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    move-result-object v3

    invoke-virtual {v3, p0, p1, v1}, Lcom/android/server/art/ArtManagerLocal;->dexoptPackage(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;Lcom/android/server/art/model/DexoptParams;)Lcom/android/server/art/model/DexoptResult;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Lcom/android/server/art/model/DexoptResult;->getFinalStatus()I

    move-result v1

    const/16 v3, 0x1e

    if-ne v1, v3, :cond_0

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz p0, :cond_3

    .line 118
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 108
    :try_start_1
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1

    .line 120
    :cond_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 124
    :try_start_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    const-string/jumbo v6, "speed-profile"

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, p1

    .line 125
    invoke-interface/range {v3 .. v9}, Landroid/content/pm/IPackageManager;->performDexOptMode(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 129
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 132
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final makeCrashPackageList()V
    .locals 14

    .line 139
    invoke-static {}, Lcom/android/server/am/CrashDexOpt;->-$$Nest$sfgetlock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 141
    :try_start_0
    invoke-static {}, Lcom/android/server/am/CrashDexOpt;->-$$Nest$sfgetmCrashPackage()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 142
    invoke-static {}, Lcom/android/server/am/CrashDexOpt;->-$$Nest$sfgetmDexOptedPackage()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 154
    iget-object v3, p0, Lcom/android/server/am/CrashDexOpt$CrashDexOptThread;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-lez v1, :cond_a

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 158
    invoke-static {}, Lcom/android/server/am/CrashDexOpt;->-$$Nest$sfgetmCrashPackage()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v5

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/CrashDexOpt$CrashPackage;

    .line 159
    iget-object v11, v10, Lcom/android/server/am/CrashDexOpt$CrashPackage;->pkg:Ljava/lang/String;

    if-eqz v11, :cond_7

    .line 160
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    goto :goto_2

    .line 166
    :cond_0
    iget-wide v12, v10, Lcom/android/server/am/CrashDexOpt$CrashPackage;->mTimeStamp:J

    sub-long/2addr v6, v12

    long-to-double v6, v6

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v12

    double-to-long v6, v6

    const-wide/16 v12, 0xf0

    cmp-long v6, v6, v12

    const/4 v7, 0x1

    if-gez v6, :cond_6

    .line 169
    invoke-virtual {v10}, Lcom/android/server/am/CrashDexOpt$CrashPackage;->increaseCount()I

    move-result v6

    iget v8, p0, Lcom/android/server/am/CrashDexOpt$CrashDexOptThread;->maxOccurredCount:I

    if-ge v6, v8, :cond_1

    goto :goto_3

    .line 174
    :cond_1
    invoke-static {}, Lcom/android/server/am/CrashDexOpt;->-$$Nest$sfgetmDexOptedPackage()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 175
    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v6, v7

    goto :goto_1

    :cond_3
    move v6, v5

    :goto_1
    if-nez v6, :cond_5

    .line 182
    invoke-virtual {p0, v11}, Lcom/android/server/am/CrashDexOpt$CrashDexOptThread;->doForceDexOpt(Ljava/lang/String;)V

    const/4 p0, 0x4

    if-lt v2, p0, :cond_4

    .line 184
    invoke-static {}, Lcom/android/server/am/CrashDexOpt;->-$$Nest$sfgetmDexOptedPackage()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 186
    :cond_4
    invoke-static {}, Lcom/android/server/am/CrashDexOpt;->-$$Nest$sfgetmDexOptedPackage()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_5
    invoke-static {}, Lcom/android/server/am/CrashDexOpt;->-$$Nest$sfgetmCrashPackage()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 192
    :cond_6
    invoke-static {}, Lcom/android/server/am/CrashDexOpt;->-$$Nest$sfgetmCrashPackage()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_8
    move v7, v5

    :goto_3
    if-nez v7, :cond_9

    if-ne v1, v4, :cond_9

    .line 199
    invoke-static {}, Lcom/android/server/am/CrashDexOpt;->-$$Nest$sfgetmCrashPackage()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_9
    move v5, v7

    :cond_a
    if-nez v5, :cond_b

    .line 203
    invoke-static {}, Lcom/android/server/am/CrashDexOpt;->-$$Nest$sfgetmCrashPackage()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge p0, v4, :cond_b

    .line 204
    new-instance p0, Lcom/android/server/am/CrashDexOpt$CrashPackage;

    invoke-direct {p0}, Lcom/android/server/am/CrashDexOpt$CrashPackage;-><init>()V

    .line 205
    invoke-virtual {p0, v3}, Lcom/android/server/am/CrashDexOpt$CrashPackage;->setCrashPackageData(Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/android/server/am/CrashDexOpt;->-$$Nest$sfgetmCrashPackage()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_b
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public run()V
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/android/server/am/CrashDexOpt$CrashDexOptThread;->makeCrashPackageList()V

    return-void
.end method
