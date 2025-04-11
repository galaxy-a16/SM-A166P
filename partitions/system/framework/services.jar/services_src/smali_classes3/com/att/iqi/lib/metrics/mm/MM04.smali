.class public Lcom/att/iqi/lib/metrics/mm/MM04;
.super Lcom/att/iqi/lib/Metric;
.source "MM04.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;


# instance fields
.field private m_szCallId:Ljava/lang/String;

.field private m_szDialedString:Ljava/lang/String;

.field private m_szOriginatingUri:Ljava/lang/String;

.field private m_szTerminatingUri:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string v1, "MM04"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/mm/MM04;->ID:Lcom/att/iqi/lib/Metric$ID;

    .line 186
    new-instance v0, Lcom/att/iqi/lib/metrics/mm/MM04$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/mm/MM04$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/mm/MM04;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    .line 56
    invoke-virtual {p0}, Lcom/att/iqi/lib/metrics/mm/MM04;->reset()V

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szDialedString:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szCallId:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szOriginatingUri:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szTerminatingUri:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCallId()Ljava/lang/String;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szCallId:Ljava/lang/String;

    return-object p0
.end method

.method public getDialedString()Ljava/lang/String;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szDialedString:Ljava/lang/String;

    return-object p0
.end method

.method public getOriginatingUri()Ljava/lang/String;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szOriginatingUri:Ljava/lang/String;

    return-object p0
.end method

.method public getTerminatingUri()Ljava/lang/String;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szTerminatingUri:Ljava/lang/String;

    return-object p0
.end method

.method public reset()V
    .locals 1

    const-string v0, ""

    .line 63
    iput-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szDialedString:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szCallId:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szOriginatingUri:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szTerminatingUri:Ljava/lang/String;

    return-void
.end method

.method public serialize(Ljava/nio/ByteBuffer;)I
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szDialedString:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/att/iqi/lib/Metric;->stringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szCallId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/att/iqi/lib/Metric;->stringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szOriginatingUri:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/att/iqi/lib/Metric;->stringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szTerminatingUri:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/att/iqi/lib/Metric;->stringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    return p0
.end method

.method public setCallId(Ljava/lang/String;)Lcom/att/iqi/lib/metrics/mm/MM04;
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szCallId:Ljava/lang/String;

    return-object p0
.end method

.method public setDialedString(Ljava/lang/String;)Lcom/att/iqi/lib/metrics/mm/MM04;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szDialedString:Ljava/lang/String;

    return-object p0
.end method

.method public setOriginatingUri(Ljava/lang/String;)Lcom/att/iqi/lib/metrics/mm/MM04;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szOriginatingUri:Ljava/lang/String;

    return-object p0
.end method

.method public setTerminatingUri(Ljava/lang/String;)Lcom/att/iqi/lib/metrics/mm/MM04;
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szTerminatingUri:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 177
    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    .line 180
    iget-object p2, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szDialedString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object p2, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szCallId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object p2, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szOriginatingUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szTerminatingUri:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
