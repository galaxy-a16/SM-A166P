.class public Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest$1;
.super Ljava/lang/Object;
.source "AddMslAltitudeToLocationRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;
    .locals 0

    new-instance p0, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;

    invoke-direct {p0}, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;-><init>()V

    invoke-virtual {p0, p1}, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;
    .locals 0

    new-array p0, p1, [Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest$1;->newArray(I)[Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;

    move-result-object p0

    return-object p0
.end method
