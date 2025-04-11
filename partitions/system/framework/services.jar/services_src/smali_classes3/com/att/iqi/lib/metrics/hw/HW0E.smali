.class public Lcom/att/iqi/lib/metrics/hw/HW0E;
.super Lcom/att/iqi/lib/Metric;
.source "HW0E.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;


# instance fields
.field private ucBatteryEvent:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string v1, "HW0E"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/hw/HW0E;->ID:Lcom/att/iqi/lib/Metric$ID;

    .line 84
    new-instance v0, Lcom/att/iqi/lib/metrics/hw/HW0E$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/hw/HW0E$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/hw/HW0E;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 43
    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/hw/HW0E;->ucBatteryEvent:B

    :cond_0
    return-void
.end method


# virtual methods
.method public getEvent()B
    .locals 0

    .line 67
    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/hw/HW0E;->ucBatteryEvent:B

    return p0
.end method

.method public serialize(Ljava/nio/ByteBuffer;)I
    .locals 0

    .line 72
    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/hw/HW0E;->ucBatteryEvent:B

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 73
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    return p0
.end method

.method public setEvent(B)Lcom/att/iqi/lib/metrics/hw/HW0E;
    .locals 0

    .line 57
    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/hw/HW0E;->ucBatteryEvent:B

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 78
    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    .line 81
    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/hw/HW0E;->ucBatteryEvent:B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
