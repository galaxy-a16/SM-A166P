.class public final Lcom/android/server/powerstats/PowerStatsLogger;
.super Landroid/os/Handler;
.source "PowerStatsLogger.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mDataStoragePath:Ljava/io/File;

.field public mDeleteMeterDataOnBoot:Z

.field public mDeleteModelDataOnBoot:Z

.field public mDeleteResidencyDataOnBoot:Z

.field public final mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

.field public final mPowerStatsMeterStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

.field public final mPowerStatsModelStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

.field public final mPowerStatsResidencyStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

.field public final mStartWallTime:J


# direct methods
.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/powerstats/PowerStatsLogger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 62
    const-class v0, Lcom/android/server/powerstats/PowerStatsLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/powerstats/PowerStatsLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;)V
    .locals 4

    .line 320
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mStartWallTime:J

    .line 323
    iput-object p10, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    .line 324
    iput-object p3, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    .line 326
    new-instance p2, Lcom/android/server/powerstats/PowerStatsDataStorage;

    iget-object p3, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    invoke-direct {p2, p1, p3, p4}, Lcom/android/server/powerstats/PowerStatsDataStorage;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsMeterStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    .line 328
    new-instance p3, Lcom/android/server/powerstats/PowerStatsDataStorage;

    iget-object p4, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    invoke-direct {p3, p1, p4, p6}, Lcom/android/server/powerstats/PowerStatsDataStorage;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsModelStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    .line 330
    new-instance p4, Lcom/android/server/powerstats/PowerStatsDataStorage;

    iget-object p6, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    invoke-direct {p4, p1, p6, p8}, Lcom/android/server/powerstats/PowerStatsDataStorage;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsResidencyStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    .line 333
    invoke-interface {p10}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    move-result-object p1

    .line 334
    invoke-static {p1}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->getProtoBytes([Landroid/hardware/power/stats/Channel;)[B

    move-result-object p1

    .line 335
    invoke-virtual {p0, p5, p1}, Lcom/android/server/powerstats/PowerStatsLogger;->dataChanged(Ljava/lang/String;[B)Z

    move-result p6

    iput-boolean p6, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDeleteMeterDataOnBoot:Z

    if-eqz p6, :cond_0

    .line 337
    invoke-virtual {p2}, Lcom/android/server/powerstats/PowerStatsDataStorage;->deleteLogs()V

    .line 338
    invoke-virtual {p0, p5, p1}, Lcom/android/server/powerstats/PowerStatsLogger;->updateCacheFile(Ljava/lang/String;[B)V

    .line 341
    :cond_0
    invoke-interface {p10}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object p1

    .line 342
    invoke-static {p1}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerUtils;->getProtoBytes([Landroid/hardware/power/stats/EnergyConsumer;)[B

    move-result-object p1

    .line 343
    invoke-virtual {p0, p7, p1}, Lcom/android/server/powerstats/PowerStatsLogger;->dataChanged(Ljava/lang/String;[B)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDeleteModelDataOnBoot:Z

    if-eqz p2, :cond_1

    .line 345
    invoke-virtual {p3}, Lcom/android/server/powerstats/PowerStatsDataStorage;->deleteLogs()V

    .line 346
    invoke-virtual {p0, p7, p1}, Lcom/android/server/powerstats/PowerStatsLogger;->updateCacheFile(Ljava/lang/String;[B)V

    .line 349
    :cond_1
    invoke-interface {p10}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    move-result-object p1

    .line 350
    invoke-static {p1}, Lcom/android/server/powerstats/ProtoStreamUtils$PowerEntityUtils;->getProtoBytes([Landroid/hardware/power/stats/PowerEntity;)[B

    move-result-object p1

    .line 351
    invoke-virtual {p0, p9, p1}, Lcom/android/server/powerstats/PowerStatsLogger;->dataChanged(Ljava/lang/String;[B)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDeleteResidencyDataOnBoot:Z

    if-eqz p2, :cond_2

    .line 353
    invoke-virtual {p4}, Lcom/android/server/powerstats/PowerStatsDataStorage;->deleteLogs()V

    .line 354
    invoke-virtual {p0, p9, p1}, Lcom/android/server/powerstats/PowerStatsLogger;->updateCacheFile(Ljava/lang/String;[B)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final dataChanged(Ljava/lang/String;[B)Z
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_2

    .line 259
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_2

    .line 263
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int p0, v1

    new-array p0, p0, [B

    .line 267
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v1, p0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 270
    sget-object v1, Lcom/android/server/powerstats/PowerStatsLogger;->TAG:Ljava/lang/String;

    const-string v2, "Failed to read cached data from file"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    :goto_1
    invoke-static {p0, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    xor-int/2addr p0, p1

    goto :goto_2

    :cond_2
    move p0, p1

    :goto_2
    return p0
.end method

.method public getDeleteMeterDataOnBoot()Z
    .locals 0

    .line 299
    iget-boolean p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDeleteMeterDataOnBoot:Z

    return p0
.end method

.method public getDeleteModelDataOnBoot()Z
    .locals 0

    .line 303
    iget-boolean p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDeleteModelDataOnBoot:Z

    return p0
.end method

.method public getDeleteResidencyDataOnBoot()Z
    .locals 0

    .line 307
    iget-boolean p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDeleteResidencyDataOnBoot:Z

    return p0
.end method

.method public getStartWallTime()J
    .locals 2

    .line 312
    iget-wide v0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mStartWallTime:J

    return-wide v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 81
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    new-array v1, v0, [I

    .line 87
    invoke-interface {p1, v1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->readEnergyMeter([I)[Landroid/hardware/power/stats/EnergyMeasurement;

    move-result-object p1

    .line 88
    iget-wide v1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mStartWallTime:J

    invoke-static {p1, v1, v2}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyMeasurementUtils;->adjustTimeSinceBootToEpoch([Landroid/hardware/power/stats/EnergyMeasurement;J)V

    .line 90
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsMeterStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    .line 91
    invoke-static {p1}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyMeasurementUtils;->getProtoBytes([Landroid/hardware/power/stats/EnergyMeasurement;)[B

    move-result-object p1

    .line 90
    invoke-virtual {v1, p1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->write([B)V

    .line 95
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    new-array v1, v0, [I

    .line 96
    invoke-interface {p1, v1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumed([I)[Landroid/hardware/power/stats/EnergyConsumerResult;

    move-result-object p1

    .line 97
    iget-wide v1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mStartWallTime:J

    invoke-static {p1, v1, v2}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerResultUtils;->adjustTimeSinceBootToEpoch([Landroid/hardware/power/stats/EnergyConsumerResult;J)V

    .line 99
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsModelStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    .line 100
    invoke-static {p1, v0}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerResultUtils;->getProtoBytes([Landroid/hardware/power/stats/EnergyConsumerResult;Z)[B

    move-result-object p1

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->write([B)V

    goto :goto_0

    .line 108
    :cond_1
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    new-array v0, v0, [I

    .line 109
    invoke-interface {p1, v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumed([I)[Landroid/hardware/power/stats/EnergyConsumerResult;

    move-result-object p1

    .line 110
    iget-wide v2, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mStartWallTime:J

    invoke-static {p1, v2, v3}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerResultUtils;->adjustTimeSinceBootToEpoch([Landroid/hardware/power/stats/EnergyConsumerResult;J)V

    .line 112
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsModelStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    .line 113
    invoke-static {p1, v1}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerResultUtils;->getProtoBytes([Landroid/hardware/power/stats/EnergyConsumerResult;Z)[B

    move-result-object p1

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->write([B)V

    goto :goto_0

    .line 121
    :cond_2
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    new-array v0, v0, [I

    .line 122
    invoke-interface {p1, v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getStateResidency([I)[Landroid/hardware/power/stats/StateResidencyResult;

    move-result-object p1

    .line 123
    iget-wide v0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mStartWallTime:J

    invoke-static {p1, v0, v1}, Lcom/android/server/powerstats/ProtoStreamUtils$StateResidencyResultUtils;->adjustTimeSinceBootToEpoch([Landroid/hardware/power/stats/StateResidencyResult;J)V

    .line 125
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsResidencyStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    .line 126
    invoke-static {p1}, Lcom/android/server/powerstats/ProtoStreamUtils$StateResidencyResultUtils;->getProtoBytes([Landroid/hardware/power/stats/StateResidencyResult;)[B

    move-result-object p1

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->write([B)V

    :goto_0
    return-void
.end method

.method public final updateCacheFile(Ljava/lang/String;[B)V
    .locals 2

    .line 288
    :try_start_0
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 290
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object p0

    .line 291
    invoke-virtual {p0, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 292
    invoke-virtual {v0, p0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 294
    sget-object p1, Lcom/android/server/powerstats/PowerStatsLogger;->TAG:Ljava/lang/String;

    const-string p2, "Failed to write current data to cached file"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public writeMeterDataToFile(Ljava/io/FileDescriptor;)V
    .locals 2

    .line 141
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 144
    :try_start_0
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    invoke-interface {p1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    move-result-object p1

    .line 145
    invoke-static {p1, v0}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->packProtoMessage([Landroid/hardware/power/stats/Channel;Landroid/util/proto/ProtoOutputStream;)V

    .line 148
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsMeterStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    new-instance v1, Lcom/android/server/powerstats/PowerStatsLogger$1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/powerstats/PowerStatsLogger$1;-><init>(Lcom/android/server/powerstats/PowerStatsLogger;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {p1, v1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->read(Lcom/android/server/powerstats/PowerStatsDataStorage$DataElementReadCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 167
    sget-object p1, Lcom/android/server/powerstats/PowerStatsLogger;->TAG:Ljava/lang/String;

    const-string v1, "Failed to write energy meter info to incident report."

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public writeModelDataToFile(Ljava/io/FileDescriptor;)V
    .locals 2

    .line 182
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 185
    :try_start_0
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    invoke-interface {p1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object p1

    .line 186
    invoke-static {p1, v0}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerUtils;->packProtoMessage([Landroid/hardware/power/stats/EnergyConsumer;Landroid/util/proto/ProtoOutputStream;)V

    .line 189
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsModelStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    new-instance v1, Lcom/android/server/powerstats/PowerStatsLogger$2;

    invoke-direct {v1, p0, v0}, Lcom/android/server/powerstats/PowerStatsLogger$2;-><init>(Lcom/android/server/powerstats/PowerStatsLogger;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {p1, v1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->read(Lcom/android/server/powerstats/PowerStatsDataStorage$DataElementReadCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 208
    sget-object p1, Lcom/android/server/powerstats/PowerStatsLogger;->TAG:Ljava/lang/String;

    const-string v1, "Failed to write energy model info to incident report."

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public writeResidencyDataToFile(Ljava/io/FileDescriptor;)V
    .locals 2

    .line 223
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 226
    :try_start_0
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    invoke-interface {p1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    move-result-object p1

    .line 227
    invoke-static {p1, v0}, Lcom/android/server/powerstats/ProtoStreamUtils$PowerEntityUtils;->packProtoMessage([Landroid/hardware/power/stats/PowerEntity;Landroid/util/proto/ProtoOutputStream;)V

    .line 230
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsResidencyStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    new-instance v1, Lcom/android/server/powerstats/PowerStatsLogger$3;

    invoke-direct {v1, p0, v0}, Lcom/android/server/powerstats/PowerStatsLogger$3;-><init>(Lcom/android/server/powerstats/PowerStatsLogger;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {p1, v1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->read(Lcom/android/server/powerstats/PowerStatsDataStorage$DataElementReadCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 249
    sget-object p1, Lcom/android/server/powerstats/PowerStatsLogger;->TAG:Ljava/lang/String;

    const-string v1, "Failed to write residency data to incident report."

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method
