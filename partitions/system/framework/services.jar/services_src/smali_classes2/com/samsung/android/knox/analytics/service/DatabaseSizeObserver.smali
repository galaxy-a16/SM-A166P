.class public Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;
.super Ljava/lang/Object;
.source "DatabaseSizeObserver.java"


# static fields
.field public static final COMPRESSED_RESULT_KEY:Ljava/lang/String; = "performCompressedEventsTransaction"

.field public static final DB_CLEAN_EVENT_COUNT:Ljava/lang/String; = "rev"

.field public static final DB_CLEAN_EVENT_EVENT_NAME:Ljava/lang/String; = "databaseCleaned"

.field public static final DB_CLEAN_EVENT_FEATURE:Ljava/lang/String; = "KNOX_ANALYTICS"

.field public static final DB_CLEAN_EVENT_SCHEMA_VERSION:I = 0x1

.field public static final DB_CLEAN_EVENT_SIZE_PARAMETER:Ljava/lang/String; = "rsz"

.field public static final DB_MAX_MAX_SIZE_BYTES:I = 0x500000

.field public static final FACTOR_ALERT:D = 0.9

.field public static final FACTOR_CLEANUP:D = 0.85

.field public static final HT_NAME:Ljava/lang/String; = "KnoxAnalyticsDatabaseSizeObserver"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDatabaseSizeContentObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;

.field public mDbAlertSizeInBytes:J

.field public mDbMaxSizeInBytes:J

.field public mDbTargetSizeInBytes:J

.field public mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

.field public mFailure:I

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mHasAlertedUploader:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDbAlertSizeInBytes(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbAlertSizeInBytes:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmDbMaxSizeInBytes(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbMaxSizeInBytes:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmHasAlertedUploader(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mHasAlertedUploader:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmHasAlertedUploader(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mHasAlertedUploader:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartCompression(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->startCompression()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/analytics/service/EventQueue;)V
    .locals 2

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mFailure:I

    .line 57
    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mHasAlertedUploader:Z

    .line 130
    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    const-string v1, "DatabaseSizeObserver()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mContext:Landroid/content/Context;

    .line 132
    iput-object p2, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->calculateDbMaxDbSize()V

    return-void
.end method


# virtual methods
.method public final calculateDbMaxDbSize()V
    .locals 6

    const-wide/32 v0, 0x500000

    .line 161
    iput-wide v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbMaxSizeInBytes:J

    long-to-double v2, v0

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-long v2, v2

    .line 163
    iput-wide v2, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbAlertSizeInBytes:J

    long-to-double v0, v0

    const-wide v2, 0x3feb333333333333L    # 0.85

    mul-double/2addr v0, v2

    double-to-int v0, v0

    int-to-long v0, v0

    .line 164
    iput-wide v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbTargetSizeInBytes:J

    .line 165
    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateDbMaxDbSize(): dbMaxSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbMaxSizeInBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " , dbAlertSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbAlertSizeInBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mDbTargetSizeInBytes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbTargetSizeInBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final createDatabaseCleanEvent(JJ)V
    .locals 4

    .line 175
    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    .line 176
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "createDatabaseCleanEvent(lastDeletedSize=%d, lastDeletedEventsCount=%d"

    .line 175
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const/4 v1, 0x1

    const-string v2, "databaseCleaned"

    const-string v3, "KNOX_ANALYTICS"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v1, "rsz"

    .line 181
    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;J)V

    const-string/jumbo p1, "rev"

    .line 182
    invoke-virtual {v0, p1, p3, p4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;J)V

    .line 183
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->postMessage(ILcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    return-void
.end method

.method public final createDatabaseCleanEvent(Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;)V
    .locals 4

    .line 171
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;->getDeletedSizeBytes()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;->getDeletedEventsCount()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->createDatabaseCleanEvent(JJ)V

    return-void
.end method

.method public final getFailureCount()I
    .locals 0

    .line 116
    iget p0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mFailure:I

    return p0
.end method

.method public final increaseFailureCount()V
    .locals 1

    .line 120
    iget v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mFailure:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mFailure:I

    return-void
.end method

.method public final resetFailureCount()V
    .locals 1

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mFailure:I

    return-void
.end method

.method public start()V
    .locals 4

    .line 137
    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KnoxAnalyticsDatabaseSizeObserver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mHandlerThread:Landroid/os/HandlerThread;

    .line 139
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 140
    new-instance v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;-><init>(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDatabaseSizeContentObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;

    .line 141
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/Contract;->CONTENT_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDatabaseSizeContentObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final startCleanDatabase()V
    .locals 3

    .line 124
    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCleanDatabase()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbTargetSizeInBytes:J

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->callDatabaseClean(Landroid/content/Context;J)Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;

    move-result-object v0

    .line 126
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->createDatabaseCleanEvent(Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;)V

    return-void
.end method

.method public final startCompression()V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getEventCount(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->getFailureCount()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    goto :goto_2

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->queryEventChunk(Landroid/content/Context;)Lcom/samsung/android/knox/analytics/model/EventList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 97
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/model/EventList;->length()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_1

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->performCompressedEventsTransaction(Landroid/content/Context;Lcom/samsung/android/knox/analytics/model/EventList;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v1, "performCompressedEventsTransaction"

    .line 102
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->resetFailureCount()V

    .line 108
    sget-object p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startCompression(): Data was compressed successfully."

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 103
    :cond_3
    :goto_0
    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCompression(): Some error occurred when adding compressed data."

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->increaseFailureCount()V

    return-void

    .line 98
    :cond_4
    :goto_1
    sget-object p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startCompression(): There is no data in Events table"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 91
    :cond_5
    :goto_2
    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCompression(): Database is full and there is no sufficient data to compress"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->resetFailureCount()V

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->startCleanDatabase()V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 149
    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDatabaseSizeContentObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDatabaseSizeContentObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDatabaseSizeContentObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;

    .line 154
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 155
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 157
    :cond_1
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mHandlerThread:Landroid/os/HandlerThread;

    return-void
.end method
