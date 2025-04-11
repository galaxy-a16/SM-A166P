.class Lcom/att/iqi/lib/metrics/rp/RP11$1;
.super Ljava/lang/Object;
.source "RP11.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/att/iqi/lib/metrics/rp/RP11;
    .locals 0

    .line 321
    new-instance p0, Lcom/att/iqi/lib/metrics/rp/RP11;

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/metrics/rp/RP11;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 318
    invoke-virtual {p0, p1}, Lcom/att/iqi/lib/metrics/rp/RP11$1;->createFromParcel(Landroid/os/Parcel;)Lcom/att/iqi/lib/metrics/rp/RP11;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/att/iqi/lib/metrics/rp/RP11;
    .locals 0

    .line 326
    new-array p0, p1, [Lcom/att/iqi/lib/metrics/rp/RP11;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 318
    invoke-virtual {p0, p1}, Lcom/att/iqi/lib/metrics/rp/RP11$1;->newArray(I)[Lcom/att/iqi/lib/metrics/rp/RP11;

    move-result-object p0

    return-object p0
.end method
