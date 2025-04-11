.class public Lcom/android/server/powerstats/PowerStatsDataStorage;
.super Ljava/lang/Object;
.source "PowerStatsDataStorage.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PowerStatsDataStorage"


# instance fields
.field public final mDataStorageDir:Ljava/io/File;

.field public final mDataStorageFilename:Ljava/lang/String;

.field public final mFileRotator:Lcom/android/internal/util/FileRotator;

.field public final mLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 7

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 167
    iput-object p2, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageDir:Ljava/io/File;

    .line 168
    iput-object p3, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageFilename:Ljava/lang/String;

    .line 170
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_0

    .line 171
    sget-object p1, Lcom/android/server/powerstats/PowerStatsDataStorage;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mDataStorageDir does not exist: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 172
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mFileRotator:Lcom/android/internal/util/FileRotator;

    goto :goto_1

    .line 176
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const/4 p2, 0x0

    move p3, p2

    .line 177
    :goto_0
    array-length v0, p1

    if-ge p3, v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageFilename:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 195
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageFilename:Ljava/lang/String;

    invoke-virtual {v1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 197
    aget-object v1, p1, p3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    aget-object v0, p1, p3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    aget-object v0, p1, p3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 205
    :cond_2
    new-instance p1, Lcom/android/internal/util/FileRotator;

    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageDir:Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageFilename:Ljava/lang/String;

    const-wide/32 v3, 0xdbba00

    const-wide/32 v5, 0xa4cb800

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/util/FileRotator;-><init>(Ljava/io/File;Ljava/lang/String;JJ)V

    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mFileRotator:Lcom/android/internal/util/FileRotator;

    :goto_1
    return-void
.end method


# virtual methods
.method public deleteLogs()V
    .locals 5

    .line 254
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 257
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 258
    iget-object v3, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageFilename:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 259
    iget-object v4, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageFilename:Ljava/lang/String;

    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 261
    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 266
    :cond_1
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 267
    throw v0
.end method

.method public read(Lcom/android/server/powerstats/PowerStatsDataStorage$DataElementReadCallback;)V
    .locals 7

    .line 242
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mFileRotator:Lcom/android/internal/util/FileRotator;

    new-instance v2, Lcom/android/server/powerstats/PowerStatsDataStorage$DataReader;

    invoke-direct {v2, p1}, Lcom/android/server/powerstats/PowerStatsDataStorage$DataReader;-><init>(Lcom/android/server/powerstats/PowerStatsDataStorage$DataElementReadCallback;)V

    const-wide/high16 v3, -0x8000000000000000L

    const-wide v5, 0x7fffffffffffffffL

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/util/FileRotator;->readMatching(Lcom/android/internal/util/FileRotator$Reader;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 247
    throw p1
.end method

.method public write([B)V
    .locals 4

    if-eqz p1, :cond_0

    .line 221
    array-length v0, p1

    if-lez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 224
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 225
    new-instance v2, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;-><init>([BLcom/android/server/powerstats/PowerStatsDataStorage$DataElement-IA;)V

    .line 226
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mFileRotator:Lcom/android/internal/util/FileRotator;

    new-instance v3, Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;

    invoke-static {v2}, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;->-$$Nest$mtoByteArray(Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;)[B

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;-><init>([B)V

    invoke-virtual {p1, v3, v0, v1}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    .line 228
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mFileRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 230
    :try_start_1
    sget-object v0, Lcom/android/server/powerstats/PowerStatsDataStorage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to write to on-device storage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    :goto_0
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :goto_1
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 233
    throw p1

    :cond_0
    :goto_2
    return-void
.end method
