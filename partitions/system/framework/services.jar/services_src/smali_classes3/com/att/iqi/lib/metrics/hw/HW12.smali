.class public Lcom/att/iqi/lib/metrics/hw/HW12;
.super Lcom/att/iqi/lib/Metric;
.source "HW12.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;


# instance fields
.field private ucCause:B

.field private ucProcessor:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string v1, "HW12"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/hw/HW12;->ID:Lcom/att/iqi/lib/Metric$ID;

    .line 107
    new-instance v0, Lcom/att/iqi/lib/metrics/hw/HW12$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/hw/HW12$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/hw/HW12;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 42
    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/hw/HW12;->ucCause:B

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/hw/HW12;->ucProcessor:B

    :cond_0
    return-void
.end method


# virtual methods
.method public getCause()S
    .locals 0

    .line 67
    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/hw/HW12;->ucCause:B

    int-to-short p0, p0

    return p0
.end method

.method public getProcessor()B
    .locals 0

    .line 88
    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/hw/HW12;->ucProcessor:B

    return p0
.end method

.method public serialize(Ljava/nio/ByteBuffer;)I
    .locals 1

    .line 93
    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/hw/HW12;->ucCause:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 94
    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/hw/HW12;->ucProcessor:B

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 95
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    return p0
.end method

.method public setCause(B)Lcom/att/iqi/lib/metrics/hw/HW12;
    .locals 0

    .line 57
    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/hw/HW12;->ucCause:B

    return-object p0
.end method

.method public setProcessor(B)Lcom/att/iqi/lib/metrics/hw/HW12;
    .locals 0

    .line 78
    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/hw/HW12;->ucProcessor:B

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 100
    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    .line 103
    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/hw/HW12;->ucCause:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 104
    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/hw/HW12;->ucProcessor:B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
