.class public Lcom/android/server/chimera/psitracker/PSITrackerCollector;
.super Ljava/lang/Object;
.source "PSITrackerCollector.java"


# static fields
.field public static DEBUG:Z = true

.field public static availableMemSaveCount:I = 0x0

.field public static availableMemUpdateFlag:Z = false


# instance fields
.field public final mAvailableMemRecords:Ljava/util/List;

.field public mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-boolean v0, Lcom/android/server/chimera/psitracker/PSITracker;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->DEBUG:Z

    .line 33
    iput-object p1, p0, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->mContext:Landroid/content/Context;

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->mAvailableMemRecords:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public generateAvailableMemRecord(JJJJ)Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;
    .locals 0

    .line 38
    new-instance p0, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;

    invoke-direct {p0}, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;-><init>()V

    .line 39
    iput-wide p1, p0, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->availMem:J

    .line 40
    iput-wide p3, p0, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->running:J

    .line 41
    iput-wide p5, p0, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->cached:J

    .line 42
    iput-wide p7, p0, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->checkTime:J

    return-object p0
.end method

.method public isAvailableMemRecordsSizeMax()Z
    .locals 1

    .line 66
    iget-object p0, p0, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->mAvailableMemRecords:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 67
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public saveAvailableMemRecord(Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;)V
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->mAvailableMemRecords:Ljava/util/List;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-boolean v1, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "PSITrackerCollector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "save PSIAvailableMemRecord...\n ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    iget-object p0, p0, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->mAvailableMemRecords:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final saveAvailableMemRecord2db(Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;)V
    .locals 5

    .line 75
    invoke-static {}, Lcom/android/server/chimera/psitracker/PSIDBManager;->getInstance()Lcom/android/server/chimera/psitracker/PSIDBManager;

    move-result-object p0

    .line 76
    invoke-virtual {p0}, Lcom/android/server/chimera/psitracker/PSIDBManager;->isDBClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "PSITrackerCollector"

    const-string/jumbo p1, "save PSIEntryAppRecord failed! db is closed!"

    .line 77
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 81
    :cond_0
    sget-boolean v0, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->availableMemUpdateFlag:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    sget v0, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->availableMemSaveCount:I

    const/16 v2, 0x2f80

    rem-int/2addr v0, v2

    if-nez v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/android/server/chimera/psitracker/PSIDBManager;->mAvailMemTable:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/chimera/psitracker/PSIDBManager;->getRecordsCount(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->availableMemUpdateFlag:Z

    .line 84
    :cond_2
    sget-boolean v0, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->availableMemUpdateFlag:Z

    if-nez v0, :cond_3

    sget v0, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->availableMemSaveCount:I

    add-int/2addr v0, v1

    sput v0, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->availableMemSaveCount:I

    .line 86
    :cond_3
    sget-object v0, Lcom/android/server/chimera/psitracker/PSIDBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_0
    sget-boolean v1, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->availableMemUpdateFlag:Z

    if-nez v1, :cond_5

    .line 88
    invoke-virtual {p0}, Lcom/android/server/chimera/psitracker/PSIDBManager;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 90
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "availMem"

    .line 91
    iget-wide v3, p1, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->availMem:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "cached"

    .line 92
    iget-wide v3, p1, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->cached:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v2, "running"

    .line 93
    iget-wide v3, p1, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->running:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "checkTime"

    .line 94
    iget-wide v3, p1, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->checkTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 96
    iget-object p1, p0, Lcom/android/server/chimera/psitracker/PSIDBManager;->mAvailMemTable:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/chimera/psitracker/PSIDBManager;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 97
    invoke-virtual {p0}, Lcom/android/server/chimera/psitracker/PSIDBManager;->setTransactionSuccessful()V

    .line 98
    sget-boolean p1, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->DEBUG:Z

    if-eqz p1, :cond_4

    const-string p1, "PSITrackerCollector"

    const-string/jumbo v1, "save one PSIAvailableMemRecord successfully!"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :cond_4
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/chimera/psitracker/PSIDBManager;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_3
    const-string v1, "PSITrackerCollector"

    .line 100
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 102
    :goto_2
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/chimera/psitracker/PSIDBManager;->endTransaction()V

    .line 103
    throw p1

    .line 105
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/chimera/psitracker/PSIDBManager;->beginTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 108
    :try_start_5
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "availMem"

    .line 109
    iget-wide v3, p1, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->availMem:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "cached"

    .line 110
    iget-wide v3, p1, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->cached:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v2, "running"

    .line 111
    iget-wide v3, p1, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->running:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "checkTime"

    .line 112
    iget-wide v3, p1, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->checkTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 114
    iget-object p1, p0, Lcom/android/server/chimera/psitracker/PSIDBManager;->mAvailMemTable:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkTime=(select min(checkTime) from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/chimera/psitracker/PSIDBManager;->mAvailMemTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/chimera/psitracker/PSIDBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v1

    .line 116
    invoke-virtual {p0}, Lcom/android/server/chimera/psitracker/PSIDBManager;->setTransactionSuccessful()V

    .line 117
    sget-boolean p1, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->DEBUG:Z

    if-eqz p1, :cond_6

    const-string p1, "PSITrackerCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update one PSIAvailableMemRecord successfully!, num="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 121
    :cond_6
    :goto_3
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/chimera/psitracker/PSIDBManager;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    :try_start_7
    const-string v1, "PSITrackerCollector"

    .line 119
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 124
    :goto_4
    :try_start_8
    monitor-exit v0

    return-void

    .line 121
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/chimera/psitracker/PSIDBManager;->endTransaction()V

    .line 122
    throw p1

    :catchall_2
    move-exception p0

    .line 124
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p0
.end method

.method public saveAvailableMemRecords()V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->mAvailableMemRecords:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    .line 57
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->mAvailableMemRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 58
    iget-object v2, p0, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->mAvailableMemRecords:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;

    invoke-virtual {p0, v2}, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->saveAvailableMemRecord2db(Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :cond_0
    iget-object p0, p0, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->mAvailableMemRecords:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 61
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    sget-boolean p0, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "PSITrackerCollector"

    const-string v0, "finish save PSIAvailableMemRecords successfully!"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 61
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
