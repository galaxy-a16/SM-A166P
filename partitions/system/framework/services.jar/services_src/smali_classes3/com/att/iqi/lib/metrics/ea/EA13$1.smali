.class Lcom/att/iqi/lib/metrics/ea/EA13$1;
.super Ljava/lang/Object;
.source "EA13.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/att/iqi/lib/metrics/ea/EA13;
    .locals 0

    new-instance p0, Lcom/att/iqi/lib/metrics/ea/EA13;

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/metrics/ea/EA13;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/att/iqi/lib/metrics/ea/EA13$1;->createFromParcel(Landroid/os/Parcel;)Lcom/att/iqi/lib/metrics/ea/EA13;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/att/iqi/lib/metrics/ea/EA13;
    .locals 0

    new-array p0, p1, [Lcom/att/iqi/lib/metrics/ea/EA13;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/att/iqi/lib/metrics/ea/EA13$1;->newArray(I)[Lcom/att/iqi/lib/metrics/ea/EA13;

    move-result-object p0

    return-object p0
.end method
