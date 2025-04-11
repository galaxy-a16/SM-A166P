.class public Lvendor/samsung/hardware/health/SehHealthInfo$1;
.super Ljava/lang/Object;
.source "SehHealthInfo.java"

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

    .line 20
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/health/SehHealthInfo$1;->createFromParcel(Landroid/os/Parcel;)Lvendor/samsung/hardware/health/SehHealthInfo;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lvendor/samsung/hardware/health/SehHealthInfo;
    .locals 0

    .line 23
    new-instance p0, Lvendor/samsung/hardware/health/SehHealthInfo;

    invoke-direct {p0}, Lvendor/samsung/hardware/health/SehHealthInfo;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/health/SehHealthInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/health/SehHealthInfo$1;->newArray(I)[Lvendor/samsung/hardware/health/SehHealthInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lvendor/samsung/hardware/health/SehHealthInfo;
    .locals 0

    .line 29
    new-array p0, p1, [Lvendor/samsung/hardware/health/SehHealthInfo;

    return-object p0
.end method
