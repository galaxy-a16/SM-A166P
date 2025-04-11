.class public Lcom/android/server/location/nsflp/LocationRequestInfo$1;
.super Ljava/lang/Object;
.source "LocationRequestInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/server/location/nsflp/LocationRequestInfo;
    .locals 0

    .line 410
    new-instance p0, Lcom/android/server/location/nsflp/LocationRequestInfo;

    invoke-direct {p0, p1}, Lcom/android/server/location/nsflp/LocationRequestInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/server/location/nsflp/LocationRequestInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/server/location/nsflp/LocationRequestInfo;
    .locals 0

    .line 415
    new-array p0, p1, [Lcom/android/server/location/nsflp/LocationRequestInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$1;->newArray(I)[Lcom/android/server/location/nsflp/LocationRequestInfo;

    move-result-object p0

    return-object p0
.end method
