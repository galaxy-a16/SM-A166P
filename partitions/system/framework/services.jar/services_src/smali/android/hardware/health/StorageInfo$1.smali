.class public Landroid/hardware/health/StorageInfo$1;
.super Ljava/lang/Object;
.source "StorageInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/health/StorageInfo;
    .locals 0

    .line 16
    new-instance p0, Landroid/hardware/health/StorageInfo;

    invoke-direct {p0}, Landroid/hardware/health/StorageInfo;-><init>()V

    .line 17
    invoke-virtual {p0, p1}, Landroid/hardware/health/StorageInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Landroid/hardware/health/StorageInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/health/StorageInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/health/StorageInfo;
    .locals 0

    .line 22
    new-array p0, p1, [Landroid/hardware/health/StorageInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Landroid/hardware/health/StorageInfo$1;->newArray(I)[Landroid/hardware/health/StorageInfo;

    move-result-object p0

    return-object p0
.end method
