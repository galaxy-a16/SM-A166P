.class public Landroid/net/RouteInfoParcel$1;
.super Ljava/lang/Object;
.source "RouteInfoParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/RouteInfoParcel;
    .locals 0

    .line 14
    new-instance p0, Landroid/net/RouteInfoParcel;

    invoke-direct {p0}, Landroid/net/RouteInfoParcel;-><init>()V

    .line 15
    invoke-virtual {p0, p1}, Landroid/net/RouteInfoParcel;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Landroid/net/RouteInfoParcel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/RouteInfoParcel;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/RouteInfoParcel;
    .locals 0

    .line 20
    new-array p0, p1, [Landroid/net/RouteInfoParcel;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Landroid/net/RouteInfoParcel$1;->newArray(I)[Landroid/net/RouteInfoParcel;

    move-result-object p0

    return-object p0
.end method
