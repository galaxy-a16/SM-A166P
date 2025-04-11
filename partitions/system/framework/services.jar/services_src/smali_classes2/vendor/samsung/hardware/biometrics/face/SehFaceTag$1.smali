.class public Lvendor/samsung/hardware/biometrics/face/SehFaceTag$1;
.super Ljava/lang/Object;
.source "SehFaceTag.java"

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

    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/biometrics/face/SehFaceTag$1;->createFromParcel(Landroid/os/Parcel;)Lvendor/samsung/hardware/biometrics/face/SehFaceTag;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lvendor/samsung/hardware/biometrics/face/SehFaceTag;
    .locals 0

    new-instance p0, Lvendor/samsung/hardware/biometrics/face/SehFaceTag;

    invoke-direct {p0}, Lvendor/samsung/hardware/biometrics/face/SehFaceTag;-><init>()V

    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/biometrics/face/SehFaceTag;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/biometrics/face/SehFaceTag$1;->newArray(I)[Lvendor/samsung/hardware/biometrics/face/SehFaceTag;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lvendor/samsung/hardware/biometrics/face/SehFaceTag;
    .locals 0

    new-array p0, p1, [Lvendor/samsung/hardware/biometrics/face/SehFaceTag;

    return-object p0
.end method
