.class public Landroid/net/UidRangeParcel$1;
.super Ljava/lang/Object;
.source "UidRangeParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/UidRangeParcel;
    .locals 0

    .line 33
    invoke-static {p1}, Landroid/net/UidRangeParcel;->-$$Nest$sminternalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/UidRangeParcel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Landroid/net/UidRangeParcel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/UidRangeParcel;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/UidRangeParcel;
    .locals 0

    .line 37
    new-array p0, p1, [Landroid/net/UidRangeParcel;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Landroid/net/UidRangeParcel$1;->newArray(I)[Landroid/net/UidRangeParcel;

    move-result-object p0

    return-object p0
.end method
