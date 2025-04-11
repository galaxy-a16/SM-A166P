.class public Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDeviceId:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mLatestUpdatedTime:J

.field private mMarketingName:Ljava/lang/String;

.field private mModelCode:Ljava/lang/String;

.field private mVerifierType:I

.field private mVersion:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData$1;

    invoke-direct {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->mDeviceId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->mVerifierType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->mModelCode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->mLatestUpdatedTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->mVersion:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->mDeviceId:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->mModelCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->mDeviceName:Ljava/lang/String;

    iput-wide p5, p0, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->mLatestUpdatedTime:J

    const-string p1, "PIN"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->mVerifierType:I

    goto :goto_1

    :cond_0
    const-string p1, "Pattern"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "Password"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->mDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public getLatestUpdatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->mLatestUpdatedTime:J

    return-wide v0
.end method

.method public getMarketingName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->mMarketingName:Ljava/lang/String;

    return-object p0
.end method

.method public getModelCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->mModelCode:Ljava/lang/String;

    return-object p0
.end method

.method public getVerifierType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->mVerifierType:I

    return p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->mVersion:Ljava/lang/String;

    return-object p0
.end method

.method public setMarketingName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->mMarketingName:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->mVersion:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->mDeviceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->mVerifierType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->mModelCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->mLatestUpdatedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
