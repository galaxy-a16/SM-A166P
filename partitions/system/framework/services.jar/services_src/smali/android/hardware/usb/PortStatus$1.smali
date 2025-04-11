.class public Landroid/hardware/usb/PortStatus$1;
.super Ljava/lang/Object;
.source "PortStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/PortStatus;
    .locals 0

    .line 32
    new-instance p0, Landroid/hardware/usb/PortStatus;

    invoke-direct {p0}, Landroid/hardware/usb/PortStatus;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Landroid/hardware/usb/PortStatus;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Landroid/hardware/usb/PortStatus$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/PortStatus;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/usb/PortStatus;
    .locals 0

    .line 38
    new-array p0, p1, [Landroid/hardware/usb/PortStatus;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Landroid/hardware/usb/PortStatus$1;->newArray(I)[Landroid/hardware/usb/PortStatus;

    move-result-object p0

    return-object p0
.end method
