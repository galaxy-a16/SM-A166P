.class public Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mDeviceId:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "deviceId"
    .end annotation
.end field

.field mDeviceName:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "deviceName"
    .end annotation
.end field

.field mLatestUpdatedTime:J
    .annotation runtime Lr5/b;
        value = "latestUpdatedTime"
    .end annotation
.end field

.field mModelCode:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "modelCode"
    .end annotation
.end field

.field mVerifierType:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "verifierType"
    .end annotation
.end field

.field mVersion:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "version"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceInfo;->mDeviceId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceInfo;->mVerifierType:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceInfo;->mModelCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceInfo;->mDeviceName:Ljava/lang/String;

    iput-wide p5, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceInfo;->mLatestUpdatedTime:J

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceInfo;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceInfo;->mDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public getLatestUpdatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceInfo;->mLatestUpdatedTime:J

    return-wide v0
.end method

.method public getModelCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceInfo;->mModelCode:Ljava/lang/String;

    return-object p0
.end method

.method public getVerifierType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceInfo;->mVerifierType:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceInfo;->mVersion:Ljava/lang/String;

    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceInfo;->mVersion:Ljava/lang/String;

    return-void
.end method
