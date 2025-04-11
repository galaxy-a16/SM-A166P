.class public Landroid/net/NetworkTestResultParcelable$1;
.super Ljava/lang/Object;
.source "NetworkTestResultParcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkTestResultParcelable;
    .locals 0

    .line 15
    new-instance p0, Landroid/net/NetworkTestResultParcelable;

    invoke-direct {p0}, Landroid/net/NetworkTestResultParcelable;-><init>()V

    .line 16
    invoke-virtual {p0, p1}, Landroid/net/NetworkTestResultParcelable;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Landroid/net/NetworkTestResultParcelable$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkTestResultParcelable;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/NetworkTestResultParcelable;
    .locals 0

    .line 21
    new-array p0, p1, [Landroid/net/NetworkTestResultParcelable;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Landroid/net/NetworkTestResultParcelable$1;->newArray(I)[Landroid/net/NetworkTestResultParcelable;

    move-result-object p0

    return-object p0
.end method
