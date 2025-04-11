.class public Lcom/att/iqi/lib/metrics/rp/RP11;
.super Lcom/att/iqi/lib/Metric;
.source "RP11.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;


# instance fields
.field private m_dwByteCount:I

.field private m_dwDuration:I

.field private m_dwPktCount:I

.field private m_dwSsrc:I

.field private m_strIpDstAddr:[B

.field private m_ucIpVersion:B

.field private m_ucMediaType:B

.field private m_wDstPort:S

.field private m_wMeanJitter:S


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string v1, "RP11"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/rp/RP11;->ID:Lcom/att/iqi/lib/Metric$ID;

    .line 318
    new-instance v0, Lcom/att/iqi/lib/metrics/rp/RP11$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/rp/RP11$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/rp/RP11;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    .line 63
    invoke-virtual {p0}, Lcom/att/iqi/lib/metrics/rp/RP11;->reset()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 85
    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_dwSsrc:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_dwDuration:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_dwPktCount:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_dwByteCount:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_wDstPort:S

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_wMeanJitter:S

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_ucMediaType:B

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_ucIpVersion:B

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    .line 99
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_strIpDstAddr:[B

    .line 100
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getByteCount()I
    .locals 0

    .line 181
    iget p0, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_dwByteCount:I

    return p0
.end method

.method public getDstPort()S
    .locals 0

    .line 200
    iget-short p0, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_wDstPort:S

    return p0
.end method

.method public getDuration()I
    .locals 0

    .line 143
    iget p0, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_dwDuration:I

    return p0
.end method

.method public getIpDstAddr()[B
    .locals 0

    .line 277
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_strIpDstAddr:[B

    return-object p0
.end method

.method public getIpVersion()B
    .locals 0

    .line 258
    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_ucIpVersion:B

    return p0
.end method

.method public getMeanJitter()S
    .locals 0

    .line 221
    iget-short p0, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_wMeanJitter:S

    return p0
.end method

.method public getMediaType()B
    .locals 0

    .line 239
    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_ucMediaType:B

    return p0
.end method

.method public getPktCount()I
    .locals 0

    .line 162
    iget p0, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_dwPktCount:I

    return p0
.end method

.method public getSsrc()I
    .locals 0

    .line 123
    iget p0, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_dwSsrc:I

    return p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_dwSsrc:I

    .line 73
    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_dwDuration:I

    .line 74
    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_dwPktCount:I

    .line 75
    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_dwByteCount:I

    .line 76
    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_wDstPort:S

    .line 77
    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_wMeanJitter:S

    .line 78
    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_ucMediaType:B

    .line 79
    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_ucIpVersion:B

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_strIpDstAddr:[B

    return-void
.end method

.method public serialize(Ljava/nio/ByteBuffer;)I
    .locals 1

    .line 282
    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_dwSsrc:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 283
    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_dwDuration:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 284
    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_dwPktCount:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 285
    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_dwByteCount:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 286
    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_wDstPort:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 287
    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_wMeanJitter:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 288
    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_ucMediaType:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 289
    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_ucIpVersion:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 290
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_strIpDstAddr:[B

    if-eqz p0, :cond_0

    .line 291
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 293
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    return p0
.end method

.method public setByteCount(I)Lcom/att/iqi/lib/metrics/rp/RP11;
    .locals 0

    .line 172
    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_dwByteCount:I

    return-object p0
.end method

.method public setDstPort(S)Lcom/att/iqi/lib/metrics/rp/RP11;
    .locals 0

    .line 191
    iput-short p1, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_wDstPort:S

    return-object p0
.end method

.method public setDuration(I)Lcom/att/iqi/lib/metrics/rp/RP11;
    .locals 0

    .line 134
    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_dwDuration:I

    return-object p0
.end method

.method public setIpDstAddr([B)Lcom/att/iqi/lib/metrics/rp/RP11;
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_strIpDstAddr:[B

    return-object p0
.end method

.method public setIpVersion(B)Lcom/att/iqi/lib/metrics/rp/RP11;
    .locals 0

    .line 249
    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_ucIpVersion:B

    return-object p0
.end method

.method public setMeanJitter(S)Lcom/att/iqi/lib/metrics/rp/RP11;
    .locals 0

    .line 212
    iput-short p1, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_wMeanJitter:S

    return-object p0
.end method

.method public setMediaType(B)Lcom/att/iqi/lib/metrics/rp/RP11;
    .locals 0

    .line 230
    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_ucMediaType:B

    return-object p0
.end method

.method public setPktCount(I)Lcom/att/iqi/lib/metrics/rp/RP11;
    .locals 0

    .line 153
    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_dwPktCount:I

    return-object p0
.end method

.method public setSsrc(I)Lcom/att/iqi/lib/metrics/rp/RP11;
    .locals 0

    .line 114
    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_dwSsrc:I

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 298
    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    .line 301
    iget p2, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_dwSsrc:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    iget p2, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_dwDuration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget p2, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_dwPktCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget p2, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_dwByteCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget-short p2, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_wDstPort:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    iget-short p2, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_wMeanJitter:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_ucMediaType:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 308
    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_ucIpVersion:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 309
    iget-object p2, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_strIpDstAddr:[B

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    array-length p2, p2

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-lez p2, :cond_1

    .line 311
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/rp/RP11;->m_strIpDstAddr:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1

    .line 314
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return-void
.end method
