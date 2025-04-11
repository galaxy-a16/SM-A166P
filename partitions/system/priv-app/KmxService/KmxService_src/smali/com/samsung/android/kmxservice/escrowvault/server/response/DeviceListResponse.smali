.class public Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceListResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mBackOffTime:J
    .annotation runtime Lr5/b;
        value = "backOffTime"
    .end annotation
.end field

.field mDeviceInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr5/b;
        value = "devices"
    .end annotation
.end field

.field mFailureCount:I
    .annotation runtime Lr5/b;
        value = "failureCount"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceInfo;",
            ">;IJ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceListResponse;->mDeviceInfoList:Ljava/util/List;

    iput p2, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceListResponse;->mFailureCount:I

    iput-wide p3, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceListResponse;->mBackOffTime:J

    return-void
.end method


# virtual methods
.method public getBackOffTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceListResponse;->mBackOffTime:J

    return-wide v0
.end method

.method public getDeviceInfoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceListResponse;->mDeviceInfoList:Ljava/util/List;

    return-object p0
.end method

.method public getFailureCount()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceListResponse;->mFailureCount:I

    return p0
.end method
