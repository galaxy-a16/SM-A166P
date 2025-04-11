.class public Landroid/net/TrafficTimeStatsParcel$1;
.super Ljava/lang/Object;
.source "TrafficTimeStatsParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/TrafficTimeStatsParcel;
    .locals 0

    .line 25
    new-instance p0, Landroid/net/TrafficTimeStatsParcel;

    invoke-direct {p0}, Landroid/net/TrafficTimeStatsParcel;-><init>()V

    .line 26
    invoke-virtual {p0, p1}, Landroid/net/TrafficTimeStatsParcel;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Landroid/net/TrafficTimeStatsParcel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/TrafficTimeStatsParcel;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/TrafficTimeStatsParcel;
    .locals 0

    .line 31
    new-array p0, p1, [Landroid/net/TrafficTimeStatsParcel;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Landroid/net/TrafficTimeStatsParcel$1;->newArray(I)[Landroid/net/TrafficTimeStatsParcel;

    move-result-object p0

    return-object p0
.end method
