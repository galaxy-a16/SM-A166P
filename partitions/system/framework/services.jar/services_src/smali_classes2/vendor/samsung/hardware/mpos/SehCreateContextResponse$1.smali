.class public Lvendor/samsung/hardware/mpos/SehCreateContextResponse$1;
.super Ljava/lang/Object;
.source "SehCreateContextResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/mpos/SehCreateContextResponse$1;->createFromParcel(Landroid/os/Parcel;)Lvendor/samsung/hardware/mpos/SehCreateContextResponse;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lvendor/samsung/hardware/mpos/SehCreateContextResponse;
    .locals 0

    .line 16
    new-instance p0, Lvendor/samsung/hardware/mpos/SehCreateContextResponse;

    invoke-direct {p0}, Lvendor/samsung/hardware/mpos/SehCreateContextResponse;-><init>()V

    .line 17
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/mpos/SehCreateContextResponse;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/mpos/SehCreateContextResponse$1;->newArray(I)[Lvendor/samsung/hardware/mpos/SehCreateContextResponse;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lvendor/samsung/hardware/mpos/SehCreateContextResponse;
    .locals 0

    .line 22
    new-array p0, p1, [Lvendor/samsung/hardware/mpos/SehCreateContextResponse;

    return-object p0
.end method
