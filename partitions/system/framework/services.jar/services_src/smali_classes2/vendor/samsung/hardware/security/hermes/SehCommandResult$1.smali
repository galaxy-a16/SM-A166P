.class public Lvendor/samsung/hardware/security/hermes/SehCommandResult$1;
.super Ljava/lang/Object;
.source "SehCommandResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/security/hermes/SehCommandResult$1;->createFromParcel(Landroid/os/Parcel;)Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lvendor/samsung/hardware/security/hermes/SehCommandResult;
    .locals 0

    new-instance p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    invoke-direct {p0}, Lvendor/samsung/hardware/security/hermes/SehCommandResult;-><init>()V

    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/security/hermes/SehCommandResult$1;->newArray(I)[Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lvendor/samsung/hardware/security/hermes/SehCommandResult;
    .locals 0

    new-array p0, p1, [Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    return-object p0
.end method
