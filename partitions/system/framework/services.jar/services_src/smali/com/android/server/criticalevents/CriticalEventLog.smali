.class public Lcom/android/server/criticalevents/CriticalEventLog;
.super Ljava/lang/Object;
.source "CriticalEventLog.java"


# static fields
.field static final FILENAME:Ljava/lang/String; = "critical_event_log.pb"

.field public static final TAG:Ljava/lang/String; = "CriticalEventLog"

.field public static sInstance:Lcom/android/server/criticalevents/CriticalEventLog;


# instance fields
.field public final mEvents:Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;

.field public final mHandler:Landroid/os/Handler;

.field public mLastSaveAttemptMs:J

.field public final mLoadAndSaveImmediately:Z

.field public final mLogFile:Ljava/io/File;

.field public final mMinTimeBetweenSavesMs:J

.field public final mSaveRunnable:Ljava/lang/Runnable;

.field public final mWindowMs:I


# direct methods
.method public static synthetic $r8$lambda$8jCWPuC9ORHivUcrfsuYZ4VTEfY(Lcom/android/server/criticalevents/CriticalEventLog;Lcom/android/server/criticalevents/CriticalEventLog$ILogLoader;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/criticalevents/CriticalEventLog;->lambda$new$0(Lcom/android/server/criticalevents/CriticalEventLog$ILogLoader;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/criticalevents/CriticalEventLog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const-string v1, "/data/misc/critical-events"

    const/16 v2, 0x14

    const-wide/16 v3, 0x5

    .line 114
    invoke-static {v3, v4}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3

    long-to-int v3, v3

    const-wide/16 v4, 0x2

    .line 115
    invoke-static {v4, v5}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    new-instance v7, Lcom/android/server/criticalevents/CriticalEventLog$LogLoader;

    invoke-direct {v7}, Lcom/android/server/criticalevents/CriticalEventLog$LogLoader;-><init>()V

    move-object v0, p0

    .line 111
    invoke-direct/range {v0 .. v7}, Lcom/android/server/criticalevents/CriticalEventLog;-><init>(Ljava/lang/String;IIJZLcom/android/server/criticalevents/CriticalEventLog$ILogLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJZLcom/android/server/criticalevents/CriticalEventLog$ILogLoader;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 66
    iput-wide v0, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mLastSaveAttemptMs:J

    .line 85
    new-instance v0, Lcom/android/server/criticalevents/CriticalEventLog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/criticalevents/CriticalEventLog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/criticalevents/CriticalEventLog;)V

    iput-object v0, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mSaveRunnable:Ljava/lang/Runnable;

    const-string v0, "critical_event_log.pb"

    .line 90
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mLogFile:Ljava/io/File;

    .line 91
    iput p3, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mWindowMs:I

    .line 92
    iput-wide p4, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mMinTimeBetweenSavesMs:J

    .line 93
    iput-boolean p6, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mLoadAndSaveImmediately:Z

    .line 95
    new-instance p1, Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;

    const-class p3, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-direct {p1, p3, p2}, Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object p1, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mEvents:Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;

    .line 97
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "CriticalEventLogIO"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 99
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mHandler:Landroid/os/Handler;

    .line 101
    new-instance p1, Lcom/android/server/criticalevents/CriticalEventLog$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p7}, Lcom/android/server/criticalevents/CriticalEventLog$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/criticalevents/CriticalEventLog;Lcom/android/server/criticalevents/CriticalEventLog$ILogLoader;)V

    if-nez p6, :cond_0

    .line 103
    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 105
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/android/server/criticalevents/CriticalEventLog;
    .locals 1

    .line 122
    sget-object v0, Lcom/android/server/criticalevents/CriticalEventLog;->sInstance:Lcom/android/server/criticalevents/CriticalEventLog;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/android/server/criticalevents/CriticalEventLog;

    invoke-direct {v0}, Lcom/android/server/criticalevents/CriticalEventLog;-><init>()V

    sput-object v0, Lcom/android/server/criticalevents/CriticalEventLog;->sInstance:Lcom/android/server/criticalevents/CriticalEventLog;

    .line 125
    :cond_0
    sget-object v0, Lcom/android/server/criticalevents/CriticalEventLog;->sInstance:Lcom/android/server/criticalevents/CriticalEventLog;

    return-object v0
.end method

.method public static init()V
    .locals 0

    .line 136
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/android/server/criticalevents/CriticalEventLog$ILogLoader;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mLogFile:Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mEvents:Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;

    invoke-interface {p1, v0, p0}, Lcom/android/server/criticalevents/CriticalEventLog$ILogLoader;->load(Ljava/io/File;Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;)V

    return-void
.end method


# virtual methods
.method public appendAndSave(Lcom/android/server/criticalevents/nano/CriticalEventProto;)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mEvents:Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;

    invoke-virtual {v0, p1}, Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;->append(Ljava/lang/Object;)V

    .line 235
    invoke-virtual {p0}, Lcom/android/server/criticalevents/CriticalEventLog;->saveLogToFile()V

    return-void
.end method

.method public getOutputLogProto(ILjava/lang/String;I)Lcom/android/server/criticalevents/nano/CriticalEventLogProto;
    .locals 5

    .line 281
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;-><init>()V

    .line 282
    invoke-virtual {p0}, Lcom/android/server/criticalevents/CriticalEventLog;->getWallTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->timestampMs:J

    .line 283
    iget v1, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mWindowMs:I

    iput v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->windowMs:I

    .line 284
    iget-object v1, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mEvents:Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;

    invoke-virtual {v1}, Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;->capacity()I

    move-result v1

    iput v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->capacity:I

    .line 286
    iget-wide v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->timestampMs:J

    iget v3, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mWindowMs:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/criticalevents/CriticalEventLog;->recentEventsWithMinTimestamp(J)[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    move-result-object p0

    .line 287
    new-instance v1, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;-><init>(ILjava/lang/String;I)V

    const/4 p1, 0x0

    .line 289
    :goto_0
    array-length p2, p0

    if-ge p1, p2, :cond_0

    .line 290
    aget-object p2, p0, p1

    invoke-virtual {v1, p2}, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->process(Lcom/android/server/criticalevents/nano/CriticalEventProto;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    move-result-object p2

    aput-object p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 292
    :cond_0
    iput-object p0, v0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->events:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    return-object v0
.end method

.method public getWallTimeMillis()J
    .locals 2

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final log(Lcom/android/server/criticalevents/nano/CriticalEventProto;)V
    .locals 2

    .line 228
    invoke-virtual {p0}, Lcom/android/server/criticalevents/CriticalEventLog;->getWallTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    .line 229
    invoke-virtual {p0, p1}, Lcom/android/server/criticalevents/CriticalEventLog;->appendAndSave(Lcom/android/server/criticalevents/nano/CriticalEventProto;)V

    return-void
.end method

.method public logAnr(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 1

    .line 173
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;-><init>()V

    .line 174
    iput-object p1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->subject:Ljava/lang/String;

    .line 175
    iput p2, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->processClass:I

    .line 176
    iput-object p3, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->process:Ljava/lang/String;

    .line 177
    iput p4, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->uid:I

    .line 178
    iput p5, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->pid:I

    .line 179
    new-instance p1, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-direct {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    .line 180
    invoke-virtual {p1, v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setAnr(Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 181
    invoke-virtual {p0, p1}, Lcom/android/server/criticalevents/CriticalEventLog;->log(Lcom/android/server/criticalevents/nano/CriticalEventProto;)V

    return-void
.end method

.method public logHalfWatchdog(Ljava/lang/String;)V
    .locals 1

    .line 156
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;-><init>()V

    .line 157
    iput-object p1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;->subject:Ljava/lang/String;

    .line 158
    new-instance p1, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-direct {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    .line 159
    invoke-virtual {p1, v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setHalfWatchdog(Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/server/criticalevents/CriticalEventLog;->log(Lcom/android/server/criticalevents/nano/CriticalEventProto;)V

    return-void
.end method

.method public logJavaCrash(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 1

    .line 196
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;-><init>()V

    .line 197
    iput-object p1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->exceptionClass:Ljava/lang/String;

    .line 198
    iput p2, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->processClass:I

    .line 199
    iput-object p3, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->process:Ljava/lang/String;

    .line 200
    iput p4, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->uid:I

    .line 201
    iput p5, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->pid:I

    .line 202
    new-instance p1, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-direct {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    .line 203
    invoke-virtual {p1, v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setJavaCrash(Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 204
    invoke-virtual {p0, p1}, Lcom/android/server/criticalevents/CriticalEventLog;->log(Lcom/android/server/criticalevents/nano/CriticalEventProto;)V

    return-void
.end method

.method public logLinesForSystemServerTraceFile()Ljava/lang/String;
    .locals 3

    const-string v0, "AID_SYSTEM"

    const/16 v1, 0x3e8

    const/4 v2, 0x3

    .line 245
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/criticalevents/CriticalEventLog;->logLinesForTraceFile(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public logLinesForTraceFile(ILjava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 265
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/criticalevents/CriticalEventLog;->getOutputLogProto(ILjava/lang/String;I)Lcom/android/server/criticalevents/nano/CriticalEventLogProto;

    move-result-object p0

    .line 267
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "--- CriticalEventLog ---\n"

    .line 268
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/MessageNanoPrinter;->print(Lcom/android/framework/protobuf/nano/MessageNano;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    .line 270
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public logNativeCrash(ILjava/lang/String;II)V
    .locals 1

    .line 217
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;-><init>()V

    .line 218
    iput p1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->processClass:I

    .line 219
    iput-object p2, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->process:Ljava/lang/String;

    .line 220
    iput p3, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->uid:I

    .line 221
    iput p4, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->pid:I

    .line 222
    new-instance p1, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-direct {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    .line 223
    invoke-virtual {p1, v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setNativeCrash(Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 224
    invoke-virtual {p0, p1}, Lcom/android/server/criticalevents/CriticalEventLog;->log(Lcom/android/server/criticalevents/nano/CriticalEventProto;)V

    return-void
.end method

.method public logWatchdog(Ljava/lang/String;Ljava/util/UUID;)V
    .locals 1

    .line 146
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;-><init>()V

    .line 147
    iput-object p1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->subject:Ljava/lang/String;

    .line 148
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->uuid:Ljava/lang/String;

    .line 149
    new-instance p1, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-direct {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    .line 150
    invoke-virtual {p1, v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setWatchdog(Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/criticalevents/CriticalEventLog;->log(Lcom/android/server/criticalevents/nano/CriticalEventProto;)V

    return-void
.end method

.method public final recentEventsWithMinTimestamp(J)[Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .locals 4

    .line 310
    iget-object p0, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mEvents:Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;

    invoke-virtual {p0}, Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/server/criticalevents/nano/CriticalEventProto;

    const/4 v0, 0x0

    move v1, v0

    .line 311
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 312
    aget-object v2, p0, v1

    iget-wide v2, v2, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    cmp-long v2, v2, p1

    if-ltz v2, :cond_0

    .line 313
    array-length p1, p0

    invoke-static {p0, v1, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/server/criticalevents/nano/CriticalEventProto;

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-array p0, v0, [Lcom/android/server/criticalevents/nano/CriticalEventProto;

    return-object p0
.end method

.method public saveDelayMs()J
    .locals 6

    .line 345
    invoke-virtual {p0}, Lcom/android/server/criticalevents/CriticalEventLog;->getWallTimeMillis()J

    move-result-wide v0

    .line 346
    iget-wide v2, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mLastSaveAttemptMs:J

    iget-wide v4, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mMinTimeBetweenSavesMs:J

    add-long/2addr v2, v4

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final saveLogToFile()V
    .locals 4

    .line 320
    iget-boolean v0, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mLoadAndSaveImmediately:Z

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/android/server/criticalevents/CriticalEventLog;->saveLogToFileNow()V

    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mSaveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mSaveRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/server/criticalevents/CriticalEventLog;->saveDelayMs()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    if-nez p0, :cond_2

    .line 330
    sget-object p0, Lcom/android/server/criticalevents/CriticalEventLog;->TAG:Ljava/lang/String;

    const-string v0, "Error scheduling save"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public saveLogToFileNow()V
    .locals 3

    .line 352
    invoke-virtual {p0}, Lcom/android/server/criticalevents/CriticalEventLog;->getWallTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mLastSaveAttemptMs:J

    .line 354
    iget-object v0, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 355
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 356
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    .line 357
    sget-object p0, Lcom/android/server/criticalevents/CriticalEventLog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error creating log directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 366
    sget-object v0, Lcom/android/server/criticalevents/CriticalEventLog;->TAG:Ljava/lang/String;

    const-string v1, "Error creating log file"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 371
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;-><init>()V

    .line 372
    iget-object v1, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mEvents:Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;

    invoke-virtual {v1}, Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/criticalevents/nano/CriticalEventProto;

    iput-object v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;->events:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 374
    invoke-static {v0}, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v0

    .line 375
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object p0, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mLogFile:Ljava/io/File;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 376
    :try_start_2
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 377
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 375
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception p0

    .line 378
    sget-object v0, Lcom/android/server/criticalevents/CriticalEventLog;->TAG:Ljava/lang/String;

    const-string v1, "Error saving log to disk."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method
