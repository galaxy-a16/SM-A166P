.class public Landroid/hardware/power/stats/EnergyConsumerAttribution$1;
.super Ljava/lang/Object;
.source "EnergyConsumerAttribution.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/power/stats/EnergyConsumerAttribution;
    .locals 0

    .line 14
    new-instance p0, Landroid/hardware/power/stats/EnergyConsumerAttribution;

    invoke-direct {p0}, Landroid/hardware/power/stats/EnergyConsumerAttribution;-><init>()V

    .line 15
    invoke-virtual {p0, p1}, Landroid/hardware/power/stats/EnergyConsumerAttribution;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Landroid/hardware/power/stats/EnergyConsumerAttribution$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/power/stats/EnergyConsumerAttribution;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/power/stats/EnergyConsumerAttribution;
    .locals 0

    .line 20
    new-array p0, p1, [Landroid/hardware/power/stats/EnergyConsumerAttribution;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Landroid/hardware/power/stats/EnergyConsumerAttribution$1;->newArray(I)[Landroid/hardware/power/stats/EnergyConsumerAttribution;

    move-result-object p0

    return-object p0
.end method
