.class public Lvendor/samsung/hardware/light/SehHwLight$1;
.super Ljava/lang/Object;
.source "SehHwLight.java"

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

    .line 12
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/light/SehHwLight$1;->createFromParcel(Landroid/os/Parcel;)Lvendor/samsung/hardware/light/SehHwLight;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lvendor/samsung/hardware/light/SehHwLight;
    .locals 0

    .line 15
    new-instance p0, Lvendor/samsung/hardware/light/SehHwLight;

    invoke-direct {p0}, Lvendor/samsung/hardware/light/SehHwLight;-><init>()V

    .line 16
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/light/SehHwLight;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/light/SehHwLight$1;->newArray(I)[Lvendor/samsung/hardware/light/SehHwLight;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lvendor/samsung/hardware/light/SehHwLight;
    .locals 0

    .line 21
    new-array p0, p1, [Lvendor/samsung/hardware/light/SehHwLight;

    return-object p0
.end method
