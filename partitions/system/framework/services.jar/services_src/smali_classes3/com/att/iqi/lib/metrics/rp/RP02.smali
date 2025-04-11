.class public Lcom/att/iqi/lib/metrics/rp/RP02;
.super Lcom/att/iqi/lib/Metric;
.source "RP02.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;

.field public static final IQ_RTP_BADSSRC:B = 0x4t

.field public static final IQ_RTP_DROP:B = 0x2t

.field public static final IQ_RTP_LATE:B = 0x1t

.field public static final IQ_RTP_OK:B = 0x0t

.field public static final IQ_RTP_RESETSEQ:B = 0x3t


# instance fields
.field private m_dwSourceId:I

.field private m_dwTimestamp:I

.field private m_ucFlags:B

.field private m_ucPayloadType:B

.field private m_ucPktStatus:B

.field private m_wByteCount:S

.field private m_wDstPort:S

.field private m_wSequenceNum:S


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string v1, "RP02"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/rp/RP02;->ID:Lcom/att/iqi/lib/Metric$ID;

    .line 287
    new-instance v0, Lcom/att/iqi/lib/metrics/rp/RP02$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/rp/RP02$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/rp/RP02;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    .line 63
    invoke-virtual {p0}, Lcom/att/iqi/lib/metrics/rp/RP02;->reset()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 83
    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_wByteCount:S

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_wDstPort:S

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_ucPktStatus:B

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_ucFlags:B

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_ucPayloadType:B

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_wSequenceNum:S

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_dwTimestamp:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_dwSourceId:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getByteCount()S
    .locals 0

    .line 114
    iget-short p0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_wByteCount:S

    return p0
.end method

.method public getDstPort()S
    .locals 0

    .line 133
    iget-short p0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_wDstPort:S

    return p0
.end method

.method public getFlags()B
    .locals 0

    .line 171
    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_ucFlags:B

    return p0
.end method

.method public getPayloadType()B
    .locals 0

    .line 191
    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_ucPayloadType:B

    return p0
.end method

.method public getPktStatus()B
    .locals 0

    .line 152
    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_ucPktStatus:B

    return p0
.end method

.method public getSequenceNum()S
    .locals 0

    .line 213
    iget-short p0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_wSequenceNum:S

    return p0
.end method

.method public getSourceId()I
    .locals 0

    .line 256
    iget p0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_dwSourceId:I

    return p0
.end method

.method public getTimestamp()I
    .locals 0

    .line 235
    iget p0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_dwTimestamp:I

    return p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 71
    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_wByteCount:S

    .line 72
    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_wDstPort:S

    .line 73
    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_ucPktStatus:B

    .line 74
    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_ucFlags:B

    .line 75
    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_ucPayloadType:B

    .line 76
    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_wSequenceNum:S

    .line 77
    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_dwTimestamp:I

    .line 78
    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_dwSourceId:I

    return-void
.end method

.method public serialize(Ljava/nio/ByteBuffer;)I
    .locals 1

    .line 261
    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_wByteCount:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 262
    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_wDstPort:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 263
    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_ucPktStatus:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 264
    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_ucFlags:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 265
    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_ucPayloadType:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 266
    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_wSequenceNum:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 267
    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_dwTimestamp:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 268
    iget p0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_dwSourceId:I

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 269
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    return p0
.end method

.method public setByteCount(S)Lcom/att/iqi/lib/metrics/rp/RP02;
    .locals 0

    .line 105
    iput-short p1, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_wByteCount:S

    return-object p0
.end method

.method public setDstPort(S)Lcom/att/iqi/lib/metrics/rp/RP02;
    .locals 0

    .line 124
    iput-short p1, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_wDstPort:S

    return-object p0
.end method

.method public setFlags(B)Lcom/att/iqi/lib/metrics/rp/RP02;
    .locals 0

    .line 162
    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_ucFlags:B

    return-object p0
.end method

.method public setPayloadType(B)Lcom/att/iqi/lib/metrics/rp/RP02;
    .locals 0

    .line 182
    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_ucPayloadType:B

    return-object p0
.end method

.method public setPktStatus(B)Lcom/att/iqi/lib/metrics/rp/RP02;
    .locals 0

    .line 143
    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_ucPktStatus:B

    return-object p0
.end method

.method public setSequenceNum(S)Lcom/att/iqi/lib/metrics/rp/RP02;
    .locals 0

    .line 204
    iput-short p1, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_wSequenceNum:S

    return-object p0
.end method

.method public setSourceId(I)Lcom/att/iqi/lib/metrics/rp/RP02;
    .locals 0

    .line 247
    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_dwSourceId:I

    return-object p0
.end method

.method public setTimestamp(I)Lcom/att/iqi/lib/metrics/rp/RP02;
    .locals 0

    .line 226
    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_dwTimestamp:I

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 274
    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    .line 277
    iget-short p2, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_wByteCount:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    iget-short p2, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_wDstPort:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_ucPktStatus:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 280
    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_ucFlags:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 281
    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_ucPayloadType:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 282
    iget-short p2, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_wSequenceNum:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget p2, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_dwTimestamp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    iget p0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_dwSourceId:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
