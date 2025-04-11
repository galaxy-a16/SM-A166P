.class public final Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;
.super Ljava/lang/Object;
.source "SehHealthInfo.java"


# instance fields
.field public batteryChargeType:I

.field public batteryCurrentEvent:I

.field public batteryCurrentNow:I

.field public batteryEvent:I

.field public batteryHighVoltageCharger:I

.field public batteryOnline:I

.field public batteryPowerSharingOnline:Z

.field public chargerOtgOnline:Z

.field public chargerPogoOnline:Z

.field public legacy:Landroid/hardware/health/V2_1/HealthInfo;

.field public wirelessPowerSharingTxEvent:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/hardware/health/V2_1/HealthInfo;

    invoke-direct {v0}, Landroid/hardware/health/V2_1/HealthInfo;-><init>()V

    iput-object v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentNow:I

    .line 31
    iput v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryOnline:I

    .line 39
    iput v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryChargeType:I

    .line 43
    iput-boolean v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryPowerSharingOnline:Z

    .line 47
    iput-boolean v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerPogoOnline:Z

    .line 56
    iput v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 84
    iput v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I

    .line 89
    iput v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentEvent:I

    .line 93
    iput-boolean v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerOtgOnline:Z

    .line 129
    iput v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 139
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    if-eq v2, v3, :cond_2

    return v1

    .line 142
    :cond_2
    check-cast p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    .line 143
    iget-object v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    iget-object v3, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 146
    :cond_3
    iget v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentNow:I

    iget v3, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentNow:I

    if-eq v2, v3, :cond_4

    return v1

    .line 149
    :cond_4
    iget v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryOnline:I

    iget v3, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryOnline:I

    if-eq v2, v3, :cond_5

    return v1

    .line 152
    :cond_5
    iget v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryChargeType:I

    iget v3, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryChargeType:I

    if-eq v2, v3, :cond_6

    return v1

    .line 155
    :cond_6
    iget-boolean v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryPowerSharingOnline:Z

    iget-boolean v3, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryPowerSharingOnline:Z

    if-eq v2, v3, :cond_7

    return v1

    .line 158
    :cond_7
    iget-boolean v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerPogoOnline:Z

    iget-boolean v3, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerPogoOnline:Z

    if-eq v2, v3, :cond_8

    return v1

    .line 161
    :cond_8
    iget v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryHighVoltageCharger:I

    iget v3, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryHighVoltageCharger:I

    if-eq v2, v3, :cond_9

    return v1

    .line 164
    :cond_9
    iget v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I

    iget v3, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I

    if-eq v2, v3, :cond_a

    return v1

    .line 167
    :cond_a
    iget v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentEvent:I

    iget v3, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentEvent:I

    if-eq v2, v3, :cond_b

    return v1

    .line 170
    :cond_b
    iget-boolean v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerOtgOnline:Z

    iget-boolean v3, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerOtgOnline:Z

    if-eq v2, v3, :cond_c

    return v1

    .line 173
    :cond_c
    iget p0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    iget p1, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    if-eq p0, p1, :cond_d

    return v1

    :cond_d
    return v0
.end method

.method public final hashCode()I
    .locals 12

    .line 181
    iget-object v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    .line 182
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentNow:I

    .line 183
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryOnline:I

    .line 184
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryChargeType:I

    .line 185
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryPowerSharingOnline:Z

    .line 186
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-boolean v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerPogoOnline:Z

    .line 187
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 188
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I

    .line 189
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentEvent:I

    .line 190
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-boolean v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerOtgOnline:Z

    .line 191
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget p0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    .line 192
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array/range {v1 .. v11}, [Ljava/lang/Object;

    move-result-object p0

    .line 181
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 3

    .line 253
    iget-object v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/health/V2_1/HealthInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0x88

    add-long/2addr v0, p3

    .line 254
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentNow:I

    const-wide/16 v0, 0x8c

    add-long/2addr v0, p3

    .line 255
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryOnline:I

    const-wide/16 v0, 0x90

    add-long/2addr v0, p3

    .line 256
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryChargeType:I

    const-wide/16 v0, 0x94

    add-long/2addr v0, p3

    .line 257
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryPowerSharingOnline:Z

    const-wide/16 v0, 0x95

    add-long/2addr v0, p3

    .line 258
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerPogoOnline:Z

    const-wide/16 v0, 0x98

    add-long/2addr v0, p3

    .line 259
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryHighVoltageCharger:I

    const-wide/16 v0, 0x9c

    add-long/2addr v0, p3

    .line 260
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I

    const-wide/16 v0, 0xa0

    add-long/2addr v0, p3

    .line 261
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentEvent:I

    const-wide/16 v0, 0xa4

    add-long/2addr v0, p3

    .line 262
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerOtgOnline:Z

    const-wide/16 v0, 0xa8

    add-long/2addr p3, v0

    .line 263
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0xb0

    .line 226
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 227
    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".legacy = "

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget-object v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryCurrentNow = "

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentNow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryOnline = "

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryOnline:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryChargeType = "

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryChargeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryPowerSharingOnline = "

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget-boolean v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryPowerSharingOnline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .chargerPogoOnline = "

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-boolean v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerPogoOnline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryHighVoltageCharger = "

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryHighVoltageCharger:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryEvent = "

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryCurrentEvent = "

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentEvent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .chargerOtgOnline = "

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget-boolean v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerOtgOnline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .wirelessPowerSharingTxEvent = "

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    iget p0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 221
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
