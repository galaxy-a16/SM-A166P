.class public Landroid/hardware/broadcastradio/ProgramFilter$1;
.super Ljava/lang/Object;
.source "ProgramFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/broadcastradio/ProgramFilter;
    .locals 0

    .line 16
    new-instance p0, Landroid/hardware/broadcastradio/ProgramFilter;

    invoke-direct {p0}, Landroid/hardware/broadcastradio/ProgramFilter;-><init>()V

    .line 17
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/ProgramFilter;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/ProgramFilter$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/broadcastradio/ProgramFilter;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/broadcastradio/ProgramFilter;
    .locals 0

    .line 22
    new-array p0, p1, [Landroid/hardware/broadcastradio/ProgramFilter;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/ProgramFilter$1;->newArray(I)[Landroid/hardware/broadcastradio/ProgramFilter;

    move-result-object p0

    return-object p0
.end method
