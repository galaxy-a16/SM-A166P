.class public final Landroid/hardware/soundtrigger/V2_3/Properties;
.super Ljava/lang/Object;
.source "Properties.java"


# instance fields
.field public audioCapabilities:I

.field public base:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

.field public supportedModelArch:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;-><init>()V

    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_3/Properties;->base:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    .line 10
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_3/Properties;->supportedModelArch:Ljava/lang/String;

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

    .line 25
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/soundtrigger/V2_3/Properties;

    if-eq v2, v3, :cond_2

    return v1

    .line 28
    :cond_2
    check-cast p1, Landroid/hardware/soundtrigger/V2_3/Properties;

    .line 29
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_3/Properties;->base:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    iget-object v3, p1, Landroid/hardware/soundtrigger/V2_3/Properties;->base:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 32
    :cond_3
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_3/Properties;->supportedModelArch:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/soundtrigger/V2_3/Properties;->supportedModelArch:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 35
    :cond_4
    iget p0, p0, Landroid/hardware/soundtrigger/V2_3/Properties;->audioCapabilities:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget p1, p1, Landroid/hardware/soundtrigger/V2_3/Properties;->audioCapabilities:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 43
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_3/Properties;->base:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    .line 44
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_3/Properties;->supportedModelArch:Ljava/lang/String;

    .line 45
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Landroid/hardware/soundtrigger/V2_3/Properties;->audioCapabilities:I

    .line 46
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 43
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    .line 91
    iget-object v2, v0, Landroid/hardware/soundtrigger/V2_3/Properties;->base:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    const-wide/16 v3, 0x0

    add-long v5, p3, v3

    move-object/from16 v7, p1

    invoke-virtual {v2, v7, v1, v5, v6}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v5, 0x58

    add-long v5, p3, v5

    .line 92
    invoke-virtual {v1, v5, v6}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/hardware/soundtrigger/V2_3/Properties;->supportedModelArch:Ljava/lang/String;

    .line 95
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v8, v2

    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v5, v3

    const/4 v14, 0x0

    .line 94
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v2, 0x68

    add-long v2, p3, v2

    .line 99
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Landroid/hardware/soundtrigger/V2_3/Properties;->audioCapabilities:I

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x70

    .line 64
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 65
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/soundtrigger/V2_3/Properties;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".base = "

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_3/Properties;->base:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .supportedModelArch = "

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_3/Properties;->supportedModelArch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .audioCapabilities = "

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget p0, p0, Landroid/hardware/soundtrigger/V2_3/Properties;->audioCapabilities:I

    invoke-static {p0}, Landroid/hardware/soundtrigger/V2_3/AudioCapabilities;->dumpBitfield(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    .line 127
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_3/Properties;->base:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0x58

    add-long/2addr v0, p2

    .line 128
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_3/Properties;->supportedModelArch:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v0, 0x68

    add-long/2addr p2, v0

    .line 129
    iget p0, p0, Landroid/hardware/soundtrigger/V2_3/Properties;->audioCapabilities:I

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt32(JI)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 103
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x70

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 104
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/soundtrigger/V2_3/Properties;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 105
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
