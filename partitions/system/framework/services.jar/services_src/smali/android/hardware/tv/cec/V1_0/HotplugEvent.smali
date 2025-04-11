.class public final Landroid/hardware/tv/cec/V1_0/HotplugEvent;
.super Ljava/lang/Object;
.source "HotplugEvent.java"


# instance fields
.field public connected:Z

.field public portId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/hardware/tv/cec/V1_0/HotplugEvent;->connected:Z

    .line 6
    iput v0, p0, Landroid/hardware/tv/cec/V1_0/HotplugEvent;->portId:I

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

    .line 16
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/tv/cec/V1_0/HotplugEvent;

    if-eq v2, v3, :cond_2

    return v1

    .line 19
    :cond_2
    check-cast p1, Landroid/hardware/tv/cec/V1_0/HotplugEvent;

    .line 20
    iget-boolean v2, p0, Landroid/hardware/tv/cec/V1_0/HotplugEvent;->connected:Z

    iget-boolean v3, p1, Landroid/hardware/tv/cec/V1_0/HotplugEvent;->connected:Z

    if-eq v2, v3, :cond_3

    return v1

    .line 23
    :cond_3
    iget p0, p0, Landroid/hardware/tv/cec/V1_0/HotplugEvent;->portId:I

    iget p1, p1, Landroid/hardware/tv/cec/V1_0/HotplugEvent;->portId:I

    if-eq p0, p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 31
    iget-boolean v0, p0, Landroid/hardware/tv/cec/V1_0/HotplugEvent;->connected:Z

    .line 32
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Landroid/hardware/tv/cec/V1_0/HotplugEvent;->portId:I

    .line 33
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 31
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 2

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 76
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Landroid/hardware/tv/cec/V1_0/HotplugEvent;->connected:Z

    const-wide/16 v0, 0x4

    add-long/2addr p3, v0

    .line 77
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Landroid/hardware/tv/cec/V1_0/HotplugEvent;->portId:I

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x8

    .line 49
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 50
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/tv/cec/V1_0/HotplugEvent;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".connected = "

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-boolean v1, p0, Landroid/hardware/tv/cec/V1_0/HotplugEvent;->connected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .portId = "

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget p0, p0, Landroid/hardware/tv/cec/V1_0/HotplugEvent;->portId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
