.class public Landroid/os/CreateAppDataArgs$1;
.super Ljava/lang/Object;
.source "CreateAppDataArgs.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/CreateAppDataArgs;
    .locals 0

    .line 19
    new-instance p0, Landroid/os/CreateAppDataArgs;

    invoke-direct {p0}, Landroid/os/CreateAppDataArgs;-><init>()V

    .line 20
    invoke-virtual {p0, p1}, Landroid/os/CreateAppDataArgs;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Landroid/os/CreateAppDataArgs$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/CreateAppDataArgs;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/os/CreateAppDataArgs;
    .locals 0

    .line 25
    new-array p0, p1, [Landroid/os/CreateAppDataArgs;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Landroid/os/CreateAppDataArgs$1;->newArray(I)[Landroid/os/CreateAppDataArgs;

    move-result-object p0

    return-object p0
.end method
