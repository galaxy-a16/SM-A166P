.class public Landroid/hardware/tv/hdmi/cec/CecMessage$1;
.super Ljava/lang/Object;
.source "CecMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/tv/hdmi/cec/CecMessage;
    .locals 0

    .line 15
    new-instance p0, Landroid/hardware/tv/hdmi/cec/CecMessage;

    invoke-direct {p0}, Landroid/hardware/tv/hdmi/cec/CecMessage;-><init>()V

    .line 16
    invoke-virtual {p0, p1}, Landroid/hardware/tv/hdmi/cec/CecMessage;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Landroid/hardware/tv/hdmi/cec/CecMessage$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/tv/hdmi/cec/CecMessage;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/tv/hdmi/cec/CecMessage;
    .locals 0

    .line 21
    new-array p0, p1, [Landroid/hardware/tv/hdmi/cec/CecMessage;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Landroid/hardware/tv/hdmi/cec/CecMessage$1;->newArray(I)[Landroid/hardware/tv/hdmi/cec/CecMessage;

    move-result-object p0

    return-object p0
.end method
