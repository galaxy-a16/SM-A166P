.class public abstract Landroid/hardware/health/Translate;
.super Ljava/lang/Object;
.source "Translate.java"


# direct methods
.method public static h2aTranslate(Landroid/hardware/health/V2_0/DiskStats;)Landroid/hardware/health/DiskStats;
    .locals 3

    .line 32
    new-instance v0, Landroid/hardware/health/DiskStats;

    invoke-direct {v0}, Landroid/hardware/health/DiskStats;-><init>()V

    .line 33
    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->reads:J

    iput-wide v1, v0, Landroid/hardware/health/DiskStats;->reads:J

    .line 34
    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->readMerges:J

    iput-wide v1, v0, Landroid/hardware/health/DiskStats;->readMerges:J

    .line 35
    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->readSectors:J

    iput-wide v1, v0, Landroid/hardware/health/DiskStats;->readSectors:J

    .line 36
    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->readTicks:J

    iput-wide v1, v0, Landroid/hardware/health/DiskStats;->readTicks:J

    .line 37
    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->writes:J

    iput-wide v1, v0, Landroid/hardware/health/DiskStats;->writes:J

    .line 38
    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->writeMerges:J

    iput-wide v1, v0, Landroid/hardware/health/DiskStats;->writeMerges:J

    .line 39
    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->writeSectors:J

    iput-wide v1, v0, Landroid/hardware/health/DiskStats;->writeSectors:J

    .line 40
    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->writeTicks:J

    iput-wide v1, v0, Landroid/hardware/health/DiskStats;->writeTicks:J

    .line 41
    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->ioInFlight:J

    iput-wide v1, v0, Landroid/hardware/health/DiskStats;->ioInFlight:J

    .line 42
    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->ioTicks:J

    iput-wide v1, v0, Landroid/hardware/health/DiskStats;->ioTicks:J

    .line 43
    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->ioInQueue:J

    iput-wide v1, v0, Landroid/hardware/health/DiskStats;->ioInQueue:J

    return-object v0
.end method

.method public static h2aTranslate(Landroid/hardware/health/V1_0/HealthInfo;)Landroid/hardware/health/HealthInfo;
    .locals 1

    .line 69
    new-instance v0, Landroid/hardware/health/HealthInfo;

    invoke-direct {v0}, Landroid/hardware/health/HealthInfo;-><init>()V

    .line 70
    invoke-static {v0, p0}, Landroid/hardware/health/Translate;->h2aTranslateInternal(Landroid/hardware/health/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V

    return-object v0
.end method

.method public static h2aTranslate(Landroid/hardware/health/V2_1/HealthInfo;)Landroid/hardware/health/HealthInfo;
    .locals 5

    .line 76
    new-instance v0, Landroid/hardware/health/HealthInfo;

    invoke-direct {v0}, Landroid/hardware/health/HealthInfo;-><init>()V

    .line 77
    iget-object v1, p0, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    iget-object v1, v1, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v0, v1}, Landroid/hardware/health/Translate;->h2aTranslateInternal(Landroid/hardware/health/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V

    .line 78
    iget-object v1, p0, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    iget v2, v1, Landroid/hardware/health/V2_0/HealthInfo;->batteryCurrentAverage:I

    iput v2, v0, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    .line 79
    iget-object v1, v1, Landroid/hardware/health/V2_0/HealthInfo;->diskStats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/health/DiskStats;

    iput-object v1, v0, Landroid/hardware/health/HealthInfo;->diskStats:[Landroid/hardware/health/DiskStats;

    const/4 v1, 0x0

    move v2, v1

    .line 80
    :goto_0
    iget-object v3, p0, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    iget-object v3, v3, Landroid/hardware/health/V2_0/HealthInfo;->diskStats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 81
    iget-object v3, v0, Landroid/hardware/health/HealthInfo;->diskStats:[Landroid/hardware/health/DiskStats;

    iget-object v4, p0, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    iget-object v4, v4, Landroid/hardware/health/V2_0/HealthInfo;->diskStats:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/health/V2_0/DiskStats;

    invoke-static {v4}, Landroid/hardware/health/Translate;->h2aTranslate(Landroid/hardware/health/V2_0/DiskStats;)Landroid/hardware/health/DiskStats;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_0
    iget-object v2, p0, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    iget-object v2, v2, Landroid/hardware/health/V2_0/HealthInfo;->storageInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/hardware/health/StorageInfo;

    iput-object v2, v0, Landroid/hardware/health/HealthInfo;->storageInfos:[Landroid/hardware/health/StorageInfo;

    .line 84
    :goto_1
    iget-object v2, p0, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    iget-object v2, v2, Landroid/hardware/health/V2_0/HealthInfo;->storageInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 85
    iget-object v2, v0, Landroid/hardware/health/HealthInfo;->storageInfos:[Landroid/hardware/health/StorageInfo;

    iget-object v3, p0, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    iget-object v3, v3, Landroid/hardware/health/V2_0/HealthInfo;->storageInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/health/V2_0/StorageInfo;

    invoke-static {v3}, Landroid/hardware/health/Translate;->h2aTranslate(Landroid/hardware/health/V2_0/StorageInfo;)Landroid/hardware/health/StorageInfo;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 87
    :cond_1
    iget v1, p0, Landroid/hardware/health/V2_1/HealthInfo;->batteryCapacityLevel:I

    iput v1, v0, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    .line 88
    iget-wide v1, p0, Landroid/hardware/health/V2_1/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    iput-wide v1, v0, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    .line 89
    iget p0, p0, Landroid/hardware/health/V2_1/HealthInfo;->batteryFullChargeDesignCapacityUah:I

    iput p0, v0, Landroid/hardware/health/HealthInfo;->batteryFullChargeDesignCapacityUah:I

    return-object v0
.end method

.method public static h2aTranslate(Landroid/hardware/health/V2_0/StorageInfo;)Landroid/hardware/health/StorageInfo;
    .locals 2

    .line 22
    new-instance v0, Landroid/hardware/health/StorageInfo;

    invoke-direct {v0}, Landroid/hardware/health/StorageInfo;-><init>()V

    .line 23
    iget-short v1, p0, Landroid/hardware/health/V2_0/StorageInfo;->eol:S

    iput v1, v0, Landroid/hardware/health/StorageInfo;->eol:I

    .line 24
    iget-short v1, p0, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeA:S

    iput v1, v0, Landroid/hardware/health/StorageInfo;->lifetimeA:I

    .line 25
    iget-short v1, p0, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeB:S

    iput v1, v0, Landroid/hardware/health/StorageInfo;->lifetimeB:I

    .line 26
    iget-object p0, p0, Landroid/hardware/health/V2_0/StorageInfo;->version:Ljava/lang/String;

    iput-object p0, v0, Landroid/hardware/health/StorageInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public static h2aTranslateInternal(Landroid/hardware/health/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V
    .locals 1

    .line 49
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    iput-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 50
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    iput-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 51
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    iput-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 52
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    .line 53
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    .line 54
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 55
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    .line 56
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    iput-boolean v0, p0, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 57
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 58
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 59
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 60
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    .line 61
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    .line 62
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    .line 63
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 64
    iget-object p1, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    iput-object p1, p0, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    return-void
.end method
