.class public Lcom/att/iqi/lib/metrics/rp/RP01;
.super Lcom/att/iqi/lib/Metric;
.source "RP01.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;


# instance fields
.field private m_dwSourceId:I

.field private m_dwTimestamp:I

.field private m_ucFlags:B

.field private m_ucPayloadType:B

.field private m_wByteCount:S

.field private m_wDstPort:S

.field private m_wSequenceNum:S


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string v1, "RP01"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/rp/RP01;->ID:Lcom/att/iqi/lib/Metric$ID;

    .line 253
    new-instance v0, Lcom/att/iqi/lib/metrics/rp/RP01$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/rp/RP01$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/rp/RP01;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    .line 53
    invoke-virtual {p0}, Lcom/att/iqi/lib/metrics/rp/RP01;->reset()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 71
    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_wByteCount:S

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_wDstPort:S

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_ucFlags:B

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_ucPayloadType:B

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_wSequenceNum:S

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_dwTimestamp:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_dwSourceId:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getByteCount()S
    .locals 0

    .line 101
    iget-short p0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_wByteCount:S

    return p0
.end method

.method public getDstPort()S
    .locals 0

    .line 120
    iget-short p0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_wDstPort:S

    return p0
.end method

.method public getFlags()B
    .locals 0

    .line 139
    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_ucFlags:B

    return p0
.end method

.method public getPayloadType()B
    .locals 0

    .line 159
    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_ucPayloadType:B

    return p0
.end method

.method public getSequenceNum()S
    .locals 0

    .line 181
    iget-short p0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_wSequenceNum:S

    return p0
.end method

.method public getSourceId()I
    .locals 0

    .line 224
    iget p0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_dwSourceId:I

    return p0
.end method

.method public getTimestamp()I
    .locals 0

    .line 203
    iget p0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_dwTimestamp:I

    return p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 60
    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_wByteCount:S

    .line 61
    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_wDstPort:S

    .line 62
    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_ucFlags:B

    .line 63
    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_ucPayloadType:B

    .line 64
    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_wSequenceNum:S

    .line 65
    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_dwTimestamp:I

    .line 66
    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_dwSourceId:I

    return-void
.end method

.method public serialize(Ljava/nio/ByteBuffer;)I
    .locals 1

    .line 229
    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_wByteCount:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 230
    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_wDstPort:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 231
    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_ucFlags:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 232
    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_ucPayloadType:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 233
    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_wSequenceNum:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 234
    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_dwTimestamp:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 235
    iget p0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_dwSourceId:I

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 236
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    return p0
.end method

.method public setByteCount(S)Lcom/att/iqi/lib/metrics/rp/RP01;
    .locals 0

    .line 92
    iput-short p1, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_wByteCount:S

    return-object p0
.end method

.method public setDstPort(S)Lcom/att/iqi/lib/metrics/rp/RP01;
    .locals 0

    .line 111
    iput-short p1, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_wDstPort:S

    return-object p0
.end method

.method public setFlags(B)Lcom/att/iqi/lib/metrics/rp/RP01;
    .locals 0

    .line 130
    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_ucFlags:B

    return-object p0
.end method

.method public setPayloadType(B)Lcom/att/iqi/lib/metrics/rp/RP01;
    .locals 0

    .line 150
    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_ucPayloadType:B

    return-object p0
.end method

.method public setSequenceNum(S)Lcom/att/iqi/lib/metrics/rp/RP01;
    .locals 0

    .line 172
    iput-short p1, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_wSequenceNum:S

    return-object p0
.end method

.method public setSourceId(I)Lcom/att/iqi/lib/metrics/rp/RP01;
    .locals 0

    .line 215
    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_dwSourceId:I

    return-object p0
.end method

.method public setTimestamp(I)Lcom/att/iqi/lib/metrics/rp/RP01;
    .locals 0

    .line 194
    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_dwTimestamp:I

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 241
    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    .line 244
    iget-short p2, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_wByteCount:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget-short p2, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_wDstPort:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_ucFlags:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 247
    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_ucPayloadType:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 248
    iget-short p2, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_wSequenceNum:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    iget p2, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_dwTimestamp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget p0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_dwSourceId:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
