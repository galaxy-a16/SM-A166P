.class public Landroid/net/ResolverParamsParcel$1;
.super Ljava/lang/Object;
.source "ResolverParamsParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/ResolverParamsParcel;
    .locals 0

    .line 27
    new-instance p0, Landroid/net/ResolverParamsParcel;

    invoke-direct {p0}, Landroid/net/ResolverParamsParcel;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Landroid/net/ResolverParamsParcel;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Landroid/net/ResolverParamsParcel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/ResolverParamsParcel;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/ResolverParamsParcel;
    .locals 0

    .line 33
    new-array p0, p1, [Landroid/net/ResolverParamsParcel;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Landroid/net/ResolverParamsParcel$1;->newArray(I)[Landroid/net/ResolverParamsParcel;

    move-result-object p0

    return-object p0
.end method
