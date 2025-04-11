.class Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;
    .locals 1

    .line 1
    new-instance p0, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;-><init>(Landroid/os/Parcel;I)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;
    .locals 0

    .line 1
    new-array p0, p1, [Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData$1;->newArray(I)[Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;

    move-result-object p0

    return-object p0
.end method
