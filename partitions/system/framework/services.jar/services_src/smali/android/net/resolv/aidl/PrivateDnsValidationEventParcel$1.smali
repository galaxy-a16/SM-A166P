.class public Landroid/net/resolv/aidl/PrivateDnsValidationEventParcel$1;
.super Ljava/lang/Object;
.source "PrivateDnsValidationEventParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/resolv/aidl/PrivateDnsValidationEventParcel;
    .locals 0

    .line 15
    new-instance p0, Landroid/net/resolv/aidl/PrivateDnsValidationEventParcel;

    invoke-direct {p0}, Landroid/net/resolv/aidl/PrivateDnsValidationEventParcel;-><init>()V

    .line 16
    invoke-virtual {p0, p1}, Landroid/net/resolv/aidl/PrivateDnsValidationEventParcel;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Landroid/net/resolv/aidl/PrivateDnsValidationEventParcel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/resolv/aidl/PrivateDnsValidationEventParcel;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/resolv/aidl/PrivateDnsValidationEventParcel;
    .locals 0

    .line 21
    new-array p0, p1, [Landroid/net/resolv/aidl/PrivateDnsValidationEventParcel;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Landroid/net/resolv/aidl/PrivateDnsValidationEventParcel$1;->newArray(I)[Landroid/net/resolv/aidl/PrivateDnsValidationEventParcel;

    move-result-object p0

    return-object p0
.end method
