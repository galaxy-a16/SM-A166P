.class public Landroid/gsi/MappedImage$1;
.super Ljava/lang/Object;
.source "MappedImage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/gsi/MappedImage;
    .locals 0

    .line 13
    new-instance p0, Landroid/gsi/MappedImage;

    invoke-direct {p0}, Landroid/gsi/MappedImage;-><init>()V

    .line 14
    invoke-virtual {p0, p1}, Landroid/gsi/MappedImage;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Landroid/gsi/MappedImage$1;->createFromParcel(Landroid/os/Parcel;)Landroid/gsi/MappedImage;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/gsi/MappedImage;
    .locals 0

    .line 19
    new-array p0, p1, [Landroid/gsi/MappedImage;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Landroid/gsi/MappedImage$1;->newArray(I)[Landroid/gsi/MappedImage;

    move-result-object p0

    return-object p0
.end method
