.class public Lvendor/samsung/hardware/khdm/SehDeviceInfo$1;
.super Ljava/lang/Object;
.source "SehDeviceInfo.java"

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

    .line 14
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/khdm/SehDeviceInfo$1;->createFromParcel(Landroid/os/Parcel;)Lvendor/samsung/hardware/khdm/SehDeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lvendor/samsung/hardware/khdm/SehDeviceInfo;
    .locals 0

    .line 17
    new-instance p0, Lvendor/samsung/hardware/khdm/SehDeviceInfo;

    invoke-direct {p0}, Lvendor/samsung/hardware/khdm/SehDeviceInfo;-><init>()V

    .line 18
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/khdm/SehDeviceInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/khdm/SehDeviceInfo$1;->newArray(I)[Lvendor/samsung/hardware/khdm/SehDeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lvendor/samsung/hardware/khdm/SehDeviceInfo;
    .locals 0

    .line 23
    new-array p0, p1, [Lvendor/samsung/hardware/khdm/SehDeviceInfo;

    return-object p0
.end method
