.class public Lcom/att/iqi/lib/metrics/ea/EA12;
.super Lcom/att/iqi/lib/Metric;
.source "EA12.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static final FLAG_CMAS:B = 0x2t

.field private static final FLAG_ETWS:B = 0x1t

.field private static final FLAG_HAS_GEO:B = -0x80t

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;


# instance fields
.field private final lCid:I

.field private lCmasCategory:I

.field private lCmasCertainty:I

.field private lCmasMessageClass:I

.field private lCmasResponseType:I

.field private lCmasSeverity:I

.field private lCmasUrgency:I

.field private lEtwsWarningType:I

.field private final lGeographicalScope:I

.field private final lLac:I

.field private final lSerialNumber:I

.field private final lServiceCategory:I

.field private llReceivedTimeMillis:J

.field private final szGeometries:Ljava/lang/String;

.field private final szLanguage:Ljava/lang/String;

.field private final szPlmn:Ljava/lang/String;

.field private final ucFlags:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string v1, "EA12"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/ea/EA12;->ID:Lcom/att/iqi/lib/Metric$ID;

    .line 216
    new-instance v0, Lcom/att/iqi/lib/metrics/ea/EA12$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/ea/EA12$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/ea/EA12;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 63
    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lGeographicalScope:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lSerialNumber:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lServiceCategory:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lLac:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCid:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->ucFlags:B

    .line 72
    invoke-direct {p0}, Lcom/att/iqi/lib/metrics/ea/EA12;->flagsWithoutGeo()B

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasMessageClass:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasCategory:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasResponseType:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasSeverity:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasUrgency:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasCertainty:I

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lEtwsWarningType:I

    .line 83
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->szPlmn:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->szLanguage:Ljava/lang/String;

    .line 85
    invoke-direct {p0}, Lcom/att/iqi/lib/metrics/ea/EA12;->hasGeo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->llReceivedTimeMillis:J

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->szGeometries:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string p1, ""

    .line 89
    iput-object p1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->szGeometries:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 6

    .line 93
    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    .line 94
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 95
    invoke-interface {p1, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 98
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 99
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 100
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lGeographicalScope:I

    .line 101
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lSerialNumber:I

    .line 103
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->szPlmn:Ljava/lang/String;

    .line 104
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lLac:I

    .line 105
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCid:I

    .line 107
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lServiceCategory:I

    .line 108
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->szLanguage:Ljava/lang/String;

    .line 109
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 110
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 111
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 113
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/16 v2, 0x43

    if-eq p1, v2, :cond_1

    const/16 v2, 0x45

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lEtwsWarningType:I

    .line 117
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 118
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 119
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 120
    invoke-virtual {v0}, Landroid/os/Parcel;->createByteArray()[B

    const/4 v1, 0x1

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasMessageClass:I

    .line 125
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasCategory:I

    .line 126
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasResponseType:I

    .line 127
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasSeverity:I

    .line 128
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasUrgency:I

    .line 129
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasCertainty:I

    const/4 v1, 0x2

    .line 134
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 135
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    or-int/lit8 v1, v1, -0x80

    int-to-byte v1, v1

    .line 138
    iput-wide v2, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->llReceivedTimeMillis:J

    .line 139
    iput-object p1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->szGeometries:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string p1, ""

    .line 141
    iput-object p1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->szGeometries:Ljava/lang/String;

    .line 143
    :goto_1
    iput-byte v1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->ucFlags:B

    .line 145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method private flagsWithoutGeo()B
    .locals 0

    .line 149
    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->ucFlags:B

    and-int/lit16 p0, p0, -0x81

    int-to-byte p0, p0

    return p0
.end method

.method private hasGeo()Z
    .locals 0

    .line 153
    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->ucFlags:B

    and-int/lit8 p0, p0, -0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public serialize(Ljava/nio/ByteBuffer;)I
    .locals 2

    .line 158
    iget v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lServiceCategory:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 159
    iget v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lSerialNumber:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 160
    iget v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lGeographicalScope:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 161
    iget v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lLac:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 162
    iget v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCid:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 163
    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->ucFlags:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 164
    invoke-direct {p0}, Lcom/att/iqi/lib/metrics/ea/EA12;->flagsWithoutGeo()B

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    iget v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasMessageClass:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 170
    iget v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasCategory:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 171
    iget v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasResponseType:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 172
    iget v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasSeverity:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 173
    iget v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasUrgency:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 174
    iget v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasCertainty:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 166
    :cond_1
    iget v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lEtwsWarningType:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->szPlmn:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/att/iqi/lib/Metric;->stringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->szLanguage:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/att/iqi/lib/Metric;->stringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 179
    invoke-direct {p0}, Lcom/att/iqi/lib/metrics/ea/EA12;->hasGeo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    iget-wide v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->llReceivedTimeMillis:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 181
    iget-object v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->szGeometries:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/att/iqi/lib/Metric;->stringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 183
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 188
    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    .line 189
    iget p2, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lGeographicalScope:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget p2, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lSerialNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget p2, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lServiceCategory:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget p2, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lLac:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget p2, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->ucFlags:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 195
    invoke-direct {p0}, Lcom/att/iqi/lib/metrics/ea/EA12;->flagsWithoutGeo()B

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    iget p2, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasMessageClass:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget p2, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasCategory:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget p2, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasResponseType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget p2, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasSeverity:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget p2, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasUrgency:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget p2, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasCertainty:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 197
    :cond_1
    iget p2, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lEtwsWarningType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    :goto_0
    iget-object p2, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->szPlmn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    iget-object p2, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->szLanguage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    invoke-direct {p0}, Lcom/att/iqi/lib/metrics/ea/EA12;->hasGeo()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 211
    iget-wide v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->llReceivedTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 212
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->szGeometries:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
