.class public Lcom/att/iqi/lib/metrics/ea/EA13;
.super Lcom/att/iqi/lib/Metric;
.source "EA13.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;


# instance fields
.field private final lSerialNumber:I

.field private final lServiceCategory:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string v1, "EA13"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/ea/EA13;->ID:Lcom/att/iqi/lib/Metric$ID;

    new-instance v0, Lcom/att/iqi/lib/metrics/ea/EA13$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/ea/EA13$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/ea/EA13;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    iput p1, p0, Lcom/att/iqi/lib/metrics/ea/EA13;->lServiceCategory:I

    iput p2, p0, Lcom/att/iqi/lib/metrics/ea/EA13;->lSerialNumber:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/ea/EA13;->lServiceCategory:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/att/iqi/lib/metrics/ea/EA13;->lSerialNumber:I

    return-void
.end method


# virtual methods
.method public serialize(Ljava/nio/ByteBuffer;)I
    .locals 1

    iget v0, p0, Lcom/att/iqi/lib/metrics/ea/EA13;->lServiceCategory:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget p0, p0, Lcom/att/iqi/lib/metrics/ea/EA13;->lSerialNumber:I

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lcom/att/iqi/lib/metrics/ea/EA13;->lServiceCategory:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/att/iqi/lib/metrics/ea/EA13;->lSerialNumber:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
