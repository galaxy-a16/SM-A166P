.class public final Lcom/android/server/timedetector/GnssTimeUpdateService;
.super Landroid/os/Binder;
.source "GnssTimeUpdateService.java"


# static fields
.field public static final D:Z

.field public static final GNSS_TIME_UPDATE_ALARM_INTERVAL:Ljava/time/Duration;


# instance fields
.field public mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mContext:Landroid/content/Context;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mHandler:Landroid/os/Handler;

.field public volatile mLastSuggestedGnssTime:Landroid/app/time/UnixEpochTime;

.field public final mLocalLog:Landroid/util/LocalLog;

.field public mLocationListener:Landroid/location/LocationListener;

.field public final mLocationManager:Landroid/location/LocationManager;

.field public final mLocationManagerInternal:Landroid/location/LocationManagerInternal;

.field public final mLock:Ljava/lang/Object;

.field public final mTimeDetectorInternal:Lcom/android/server/timedetector/TimeDetectorInternal;


# direct methods
.method public static synthetic $r8$lambda$Wb3kWiysUfOv2xIleB3ThCX50Mw(Lcom/android/server/timedetector/GnssTimeUpdateService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->handleAlarmFired()V

    return-void
.end method

.method public static synthetic $r8$lambda$p0HEUUClXIRFUADEFn4PSYJV9i0(Lcom/android/server/timedetector/GnssTimeUpdateService;Landroid/location/Location;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/timedetector/GnssTimeUpdateService;->lambda$startGnssListeningLocked$0(Landroid/location/Location;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "GnssTimeUpdateService"

    const/4 v1, 0x3

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/timedetector/GnssTimeUpdateService;->D:Z

    const-wide/16 v0, 0x4

    .line 101
    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/timedetector/GnssTimeUpdateService;->GNSS_TIME_UPDATE_ALARM_INTERVAL:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;Landroid/location/LocationManager;Landroid/location/LocationManagerInternal;Lcom/android/server/timedetector/TimeDetectorInternal;)V
    .locals 3

    .line 131
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 108
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/LocalLog;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocalLog:Landroid/util/LocalLog;

    .line 110
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mExecutor:Ljava/util/concurrent/Executor;

    .line 112
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mHandler:Landroid/os/Handler;

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLock:Ljava/lang/Object;

    .line 132
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mContext:Landroid/content/Context;

    .line 133
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p2, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 134
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p3

    check-cast p1, Landroid/location/LocationManager;

    iput-object p3, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationManager:Landroid/location/LocationManager;

    .line 135
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p4

    check-cast p1, Landroid/location/LocationManagerInternal;

    iput-object p4, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    .line 136
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p5, Lcom/android/server/timedetector/TimeDetectorInternal;

    iput-object p5, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mTimeDetectorInternal:Lcom/android/server/timedetector/TimeDetectorInternal;

    return-void
.end method

.method private synthetic lambda$startGnssListeningLocked$0(Landroid/location/Location;)V
    .locals 0

    .line 197
    invoke-virtual {p0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->handleLocationAvailable()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 275
    iget-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mContext:Landroid/content/Context;

    const-string p3, "GnssTimeUpdateService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 276
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mLastSuggestedGnssTime: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLastSuggestedGnssTime:Landroid/app/time/UnixEpochTime;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    iget-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    const-string/jumbo p3, "state: "

    .line 278
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    iget-object p3, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationListener:Landroid/location/LocationListener;

    if-eqz p3, :cond_1

    const-string/jumbo p3, "time updates enabled"

    .line 280
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p3, "alarm enabled"

    .line 282
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "Log:"

    .line 285
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    iget-object p0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {p0, p2}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    return-void

    :catchall_0
    move-exception p0

    .line 284
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final handleAlarmFired()V
    .locals 2

    const-string v0, "handleAlarmFired()"

    .line 249
    invoke-virtual {p0, v0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->logDebug(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 252
    :try_start_0
    iput-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 253
    invoke-virtual {p0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->startGnssListeningLocked()V

    .line 254
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleLocationAvailable()V
    .locals 12

    const-string v0, "handleLocationAvailable()"

    .line 208
    invoke-virtual {p0, v0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->logDebug(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    invoke-virtual {v0}, Landroid/location/LocationManagerInternal;->getGnssTimeMillis()Landroid/location/LocationTime;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Passive location time received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-virtual {p0, v1}, Lcom/android/server/timedetector/GnssTimeUpdateService;->logDebug(Ljava/lang/String;)V

    .line 216
    iget-object v2, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0, v0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->suggestGnssTime(Landroid/location/LocationTime;)V

    goto :goto_0

    :cond_0
    const-string v0, "getGnssTimeMillis() returned null"

    .line 219
    invoke-virtual {p0, v0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->logDebug(Ljava/lang/String;)V

    .line 222
    :goto_0
    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationListener:Landroid/location/LocationListener;

    if-nez v1, :cond_1

    const-string v1, "mLocationListener unexpectedly null"

    .line 224
    invoke-virtual {p0, v1}, Lcom/android/server/timedetector/GnssTimeUpdateService;->logWarning(Ljava/lang/String;)V

    goto :goto_1

    .line 226
    :cond_1
    iget-object v2, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v1, 0x0

    .line 227
    iput-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationListener:Landroid/location/LocationListener;

    .line 230
    :goto_1
    iget-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    if-eqz v1, :cond_2

    const-string v1, "mAlarmListener was unexpectedly non-null"

    .line 231
    invoke-virtual {p0, v1}, Lcom/android/server/timedetector/GnssTimeUpdateService;->logWarning(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 236
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-object v3, Lcom/android/server/timedetector/GnssTimeUpdateService;->GNSS_TIME_UPDATE_ALARM_INTERVAL:Ljava/time/Duration;

    .line 237
    invoke-virtual {v3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3

    add-long v7, v1, v3

    .line 238
    new-instance v10, Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda1;

    invoke-direct {v10, p0}, Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timedetector/GnssTimeUpdateService;)V

    iput-object v10, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 239
    iget-object v5, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v6, 0x2

    const-string v9, "GnssTimeUpdateService"

    iget-object v11, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v5 .. v11}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 245
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final logDebug(Ljava/lang/String;)V
    .locals 0

    .line 307
    sget-boolean p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->D:Z

    if-eqz p0, :cond_0

    const-string p0, "GnssTimeUpdateService"

    .line 308
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final logError(Ljava/lang/String;)V
    .locals 1

    const-string v0, "GnssTimeUpdateService"

    .line 297
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object p0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final logWarning(Ljava/lang/String;)V
    .locals 1

    const-string v0, "GnssTimeUpdateService"

    .line 302
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object p0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 292
    new-instance v0, Lcom/android/server/timedetector/GnssTimeUpdateServiceShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/timedetector/GnssTimeUpdateServiceShellCommand;-><init>(Lcom/android/server/timedetector/GnssTimeUpdateService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public startGnssListening()Z
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SET_TIME"

    const-string v2, "Start GNSS listening"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocalLog:Landroid/util/LocalLog;

    const-string/jumbo v1, "startGnssListening() called"

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 149
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 151
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->startGnssListeningInternal()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 154
    throw p0
.end method

.method public startGnssListeningInternal()Z
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->hasProvider(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GPS provider does not exist on this device"

    .line 169
    invoke-virtual {p0, v0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->logError(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationListener:Landroid/location/LocationListener;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-string v1, "Already listening for GNSS updates"

    .line 175
    invoke-virtual {p0, v1}, Lcom/android/server/timedetector/GnssTimeUpdateService;->logDebug(Ljava/lang/String;)V

    .line 176
    monitor-exit v0

    return v2

    .line 181
    :cond_1
    iget-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    if-eqz v1, :cond_2

    .line 182
    iget-object v3, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v3, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    const/4 v1, 0x0

    .line 183
    iput-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 186
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->startGnssListeningLocked()V

    .line 187
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    .line 188
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final startGnssListeningLocked()V
    .locals 4

    const-string/jumbo v0, "startGnssListeningLocked()"

    .line 193
    invoke-virtual {p0, v0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->logDebug(Ljava/lang/String;)V

    .line 197
    new-instance v0, Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timedetector/GnssTimeUpdateService;)V

    iput-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationListener:Landroid/location/LocationListener;

    .line 198
    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationManager:Landroid/location/LocationManager;

    new-instance v1, Landroid/location/LocationRequest$Builder;

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v1, v2, v3}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    const-wide/16 v2, 0x0

    .line 201
    invoke-virtual {v1, v2, v3}, Landroid/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationListener:Landroid/location/LocationListener;

    const-string v3, "gps"

    .line 198
    invoke-virtual {v0, v3, v1, v2, p0}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    return-void
.end method

.method public final suggestGnssTime(Landroid/location/LocationTime;)V
    .locals 6

    const-string/jumbo v0, "suggestGnssTime()"

    .line 261
    invoke-virtual {p0, v0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->logDebug(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p1}, Landroid/location/LocationTime;->getUnixEpochTimeMillis()J

    move-result-wide v0

    .line 264
    invoke-virtual {p1}, Landroid/location/LocationTime;->getElapsedRealtimeNanos()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    .line 266
    new-instance p1, Landroid/app/time/UnixEpochTime;

    invoke-direct {p1, v2, v3, v0, v1}, Landroid/app/time/UnixEpochTime;-><init>(JJ)V

    .line 267
    iput-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLastSuggestedGnssTime:Landroid/app/time/UnixEpochTime;

    .line 269
    new-instance v0, Lcom/android/server/timedetector/GnssTimeSuggestion;

    invoke-direct {v0, p1}, Lcom/android/server/timedetector/GnssTimeSuggestion;-><init>(Landroid/app/time/UnixEpochTime;)V

    .line 270
    iget-object p0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mTimeDetectorInternal:Lcom/android/server/timedetector/TimeDetectorInternal;

    invoke-interface {p0, v0}, Lcom/android/server/timedetector/TimeDetectorInternal;->suggestGnssTime(Lcom/android/server/timedetector/GnssTimeSuggestion;)V

    return-void
.end method
