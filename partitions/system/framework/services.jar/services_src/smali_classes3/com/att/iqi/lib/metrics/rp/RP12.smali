.class public Lcom/att/iqi/lib/metrics/rp/RP12;
.super Lcom/att/iqi/lib/Metric;
.source "RP12.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;


# instance fields
.field private m_dwByteCount:I

.field private m_dwDuration:I

.field private m_dwPktCount:I

.field private m_dwPktLoss:I

.field private m_dwSsrc:I

.field private m_strIpSrcAddr:[B

.field private m_ucIpVersion:B

.field private m_ucMediaType:B

.field private m_wCumAvgPktSize:S

.field private m_wDstPort:S

.field private m_wMaxDelta:S

.field private m_wMaxJitter:S

.field private m_wMeanJitter:S


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string v1, "RP12"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/rp/RP12;->ID:Lcom/att/iqi/lib/Metric$ID;

    .line 424
    new-instance v0, Lcom/att/iqi/lib/metrics/rp/RP12$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/rp/RP12$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/rp/RP12;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    .line 72
    invoke-virtual {p0}, Lcom/att/iqi/lib/metrics/rp/RP12;->reset()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 98
    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwSsrc:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwDuration:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwPktCount:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwPktLoss:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwByteCount:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wDstPort:S

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMeanJitter:S

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMaxJitter:S

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMaxDelta:S

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wCumAvgPktSize:S

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_ucMediaType:B

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_ucIpVersion:B

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    .line 116
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_strIpSrcAddr:[B

    .line 117
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getByteCount()I
    .locals 0

    .line 218
    iget p0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwByteCount:I

    return p0
.end method

.method public getCumAvgPktSize()S
    .locals 0

    .line 319
    iget-short p0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wCumAvgPktSize:S

    return p0
.end method

.method public getDstPort()S
    .locals 0

    .line 237
    iget-short p0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wDstPort:S

    return p0
.end method

.method public getDuration()I
    .locals 0

    .line 160
    iget p0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwDuration:I

    return p0
.end method

.method public getIpSrcAddr()[B
    .locals 0

    .line 375
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_strIpSrcAddr:[B

    return-object p0
.end method

.method public getIpVersion()B
    .locals 0

    .line 356
    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_ucIpVersion:B

    return p0
.end method

.method public getMaxDelta()S
    .locals 0

    .line 299
    iget-short p0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMaxDelta:S

    return p0
.end method

.method public getMaxJitter()S
    .locals 0

    .line 279
    iget-short p0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMaxJitter:S

    return p0
.end method

.method public getMeanJitter()S
    .locals 0

    .line 258
    iget-short p0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMeanJitter:S

    return p0
.end method

.method public getMediaType()B
    .locals 0

    .line 337
    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_ucMediaType:B

    return p0
.end method

.method public getPktCount()I
    .locals 0

    .line 179
    iget p0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwPktCount:I

    return p0
.end method

.method public getPktLoss()I
    .locals 0

    .line 199
    iget p0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwPktLoss:I

    return p0
.end method

.method public getSsrc()I
    .locals 0

    .line 140
    iget p0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwSsrc:I

    return p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwSsrc:I

    .line 82
    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwDuration:I

    .line 83
    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwPktCount:I

    .line 84
    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwPktLoss:I

    .line 85
    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwByteCount:I

    .line 86
    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wDstPort:S

    .line 87
    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMeanJitter:S

    .line 88
    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMaxJitter:S

    .line 89
    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMaxDelta:S

    .line 90
    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wCumAvgPktSize:S

    .line 91
    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_ucMediaType:B

    .line 92
    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_ucIpVersion:B

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_strIpSrcAddr:[B

    return-void
.end method

.method public serialize(Ljava/nio/ByteBuffer;)I
    .locals 1

    .line 380
    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwSsrc:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 381
    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwDuration:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 382
    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwPktCount:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 383
    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwPktLoss:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 384
    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwByteCount:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 385
    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wDstPort:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 386
    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMeanJitter:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 387
    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMaxJitter:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 388
    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMaxDelta:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 389
    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wCumAvgPktSize:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 390
    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_ucMediaType:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 391
    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_ucIpVersion:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 392
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_strIpSrcAddr:[B

    if-eqz p0, :cond_0

    .line 393
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 395
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    return p0
.end method

.method public setByteCount(I)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 0

    .line 209
    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwByteCount:I

    return-object p0
.end method

.method public setCumAvgPktSize(S)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 0

    .line 310
    iput-short p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wCumAvgPktSize:S

    return-object p0
.end method

.method public setDstPort(S)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 0

    .line 228
    iput-short p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wDstPort:S

    return-object p0
.end method

.method public setDuration(I)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 0

    .line 151
    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwDuration:I

    return-object p0
.end method

.method public setIpSrcAddr([B)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_strIpSrcAddr:[B

    return-object p0
.end method

.method public setIpVersion(B)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 0

    .line 347
    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_ucIpVersion:B

    return-object p0
.end method

.method public setMaxDelta(S)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 0

    .line 290
    iput-short p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMaxDelta:S

    return-object p0
.end method

.method public setMaxJitter(S)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 0

    .line 270
    iput-short p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMaxJitter:S

    return-object p0
.end method

.method public setMeanJitter(S)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 0

    .line 249
    iput-short p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMeanJitter:S

    return-object p0
.end method

.method public setMediaType(B)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 0

    .line 328
    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_ucMediaType:B

    return-object p0
.end method

.method public setPktCount(I)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 0

    .line 170
    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwPktCount:I

    return-object p0
.end method

.method public setPktLoss(I)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 0

    .line 190
    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwPktLoss:I

    return-object p0
.end method

.method public setSsrc(I)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 0

    .line 131
    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwSsrc:I

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 400
    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    .line 403
    iget p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwSsrc:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    iget p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwDuration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    iget p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwPktCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    iget p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwPktLoss:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    iget p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwByteCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    iget-short p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wDstPort:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    iget-short p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMeanJitter:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    iget-short p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMaxJitter:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    iget-short p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMaxDelta:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    iget-short p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wCumAvgPktSize:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_ucMediaType:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 414
    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_ucIpVersion:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 415
    iget-object p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_strIpSrcAddr:[B

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    array-length p2, p2

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-lez p2, :cond_1

    .line 417
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_strIpSrcAddr:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1

    .line 420
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return-void
.end method
