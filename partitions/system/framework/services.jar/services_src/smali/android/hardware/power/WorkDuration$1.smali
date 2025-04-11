.class public Landroid/hardware/power/WorkDuration$1;
.super Ljava/lang/Object;
.source "WorkDuration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/power/WorkDuration;
    .locals 0

    new-instance p0, Landroid/hardware/power/WorkDuration;

    invoke-direct {p0}, Landroid/hardware/power/WorkDuration;-><init>()V

    invoke-virtual {p0, p1}, Landroid/hardware/power/WorkDuration;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/power/WorkDuration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/power/WorkDuration;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/power/WorkDuration;
    .locals 0

    new-array p0, p1, [Landroid/hardware/power/WorkDuration;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/power/WorkDuration$1;->newArray(I)[Landroid/hardware/power/WorkDuration;

    move-result-object p0

    return-object p0
.end method
