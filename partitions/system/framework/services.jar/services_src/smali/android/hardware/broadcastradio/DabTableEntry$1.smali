.class public Landroid/hardware/broadcastradio/DabTableEntry$1;
.super Ljava/lang/Object;
.source "DabTableEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/broadcastradio/DabTableEntry;
    .locals 0

    .line 14
    new-instance p0, Landroid/hardware/broadcastradio/DabTableEntry;

    invoke-direct {p0}, Landroid/hardware/broadcastradio/DabTableEntry;-><init>()V

    .line 15
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/DabTableEntry;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/DabTableEntry$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/broadcastradio/DabTableEntry;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/broadcastradio/DabTableEntry;
    .locals 0

    .line 20
    new-array p0, p1, [Landroid/hardware/broadcastradio/DabTableEntry;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/DabTableEntry$1;->newArray(I)[Landroid/hardware/broadcastradio/DabTableEntry;

    move-result-object p0

    return-object p0
.end method
