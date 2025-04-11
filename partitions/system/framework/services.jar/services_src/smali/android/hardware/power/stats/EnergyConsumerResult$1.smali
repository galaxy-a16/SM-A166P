.class public Landroid/hardware/power/stats/EnergyConsumerResult$1;
.super Ljava/lang/Object;
.source "EnergyConsumerResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/power/stats/EnergyConsumerResult;
    .locals 0

    .line 16
    new-instance p0, Landroid/hardware/power/stats/EnergyConsumerResult;

    invoke-direct {p0}, Landroid/hardware/power/stats/EnergyConsumerResult;-><init>()V

    .line 17
    invoke-virtual {p0, p1}, Landroid/hardware/power/stats/EnergyConsumerResult;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Landroid/hardware/power/stats/EnergyConsumerResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/power/stats/EnergyConsumerResult;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/power/stats/EnergyConsumerResult;
    .locals 0

    .line 22
    new-array p0, p1, [Landroid/hardware/power/stats/EnergyConsumerResult;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Landroid/hardware/power/stats/EnergyConsumerResult$1;->newArray(I)[Landroid/hardware/power/stats/EnergyConsumerResult;

    move-result-object p0

    return-object p0
.end method
