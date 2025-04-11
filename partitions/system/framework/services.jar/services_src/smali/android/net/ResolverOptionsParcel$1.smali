.class public Landroid/net/ResolverOptionsParcel$1;
.super Ljava/lang/Object;
.source "ResolverOptionsParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/ResolverOptionsParcel;
    .locals 0

    .line 14
    new-instance p0, Landroid/net/ResolverOptionsParcel;

    invoke-direct {p0}, Landroid/net/ResolverOptionsParcel;-><init>()V

    .line 15
    invoke-virtual {p0, p1}, Landroid/net/ResolverOptionsParcel;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Landroid/net/ResolverOptionsParcel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/ResolverOptionsParcel;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/ResolverOptionsParcel;
    .locals 0

    .line 20
    new-array p0, p1, [Landroid/net/ResolverOptionsParcel;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Landroid/net/ResolverOptionsParcel$1;->newArray(I)[Landroid/net/ResolverOptionsParcel;

    move-result-object p0

    return-object p0
.end method
