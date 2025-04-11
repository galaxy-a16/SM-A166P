.class public Lcom/android/server/location/altitude/AltitudeService;
.super Landroid/frameworks/location/altitude/IAltitudeService$Stub;
.source "AltitudeService.java"


# instance fields
.field public final mAltitudeConverter:Landroid/location/altitude/AltitudeConverter;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/frameworks/location/altitude/IAltitudeService$Stub;-><init>()V

    new-instance v0, Landroid/location/altitude/AltitudeConverter;

    invoke-direct {v0}, Landroid/location/altitude/AltitudeConverter;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/altitude/AltitudeService;->mAltitudeConverter:Landroid/location/altitude/AltitudeConverter;

    iput-object p1, p0, Lcom/android/server/location/altitude/AltitudeService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addMslAltitudeToLocation(Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;)Landroid/frameworks/location/altitude/AddMslAltitudeToLocationResponse;
    .locals 3

    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iget-wide v1, p1, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;->latitudeDegrees:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    iget-wide v1, p1, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;->longitudeDegrees:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    iget-wide v1, p1, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;->altitudeMeters:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setAltitude(D)V

    iget p1, p1, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;->verticalAccuracyMeters:F

    invoke-virtual {v0, p1}, Landroid/location/Location;->setVerticalAccuracyMeters(F)V

    :try_start_0
    iget-object p1, p0, Lcom/android/server/location/altitude/AltitudeService;->mAltitudeConverter:Landroid/location/altitude/AltitudeConverter;

    iget-object p0, p0, Lcom/android/server/location/altitude/AltitudeService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Landroid/location/altitude/AltitudeConverter;->addMslAltitudeToLocation(Landroid/content/Context;Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p0, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationResponse;

    invoke-direct {p0}, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationResponse;-><init>()V

    invoke-virtual {v0}, Landroid/location/Location;->getMslAltitudeMeters()D

    move-result-wide v1

    iput-wide v1, p0, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationResponse;->mslAltitudeMeters:D

    invoke-virtual {v0}, Landroid/location/Location;->getMslAltitudeAccuracyMeters()F

    move-result p1

    iput p1, p0, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationResponse;->mslAltitudeAccuracyMeters:F

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1, p0}, Landroid/os/RemoteException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    const-string p0, "763e0415cde10c922c590396b90bf622636470b1"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
