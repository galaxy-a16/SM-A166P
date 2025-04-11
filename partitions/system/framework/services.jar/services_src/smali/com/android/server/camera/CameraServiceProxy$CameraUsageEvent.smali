.class public Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
.super Ljava/lang/Object;
.source "CameraServiceProxy.java"


# instance fields
.field public final mAPILevel:I

.field public final mAction:I

.field public final mCameraFacing:I

.field public final mCameraId:Ljava/lang/String;

.field public final mClientName:Ljava/lang/String;

.field public mCompleted:Z

.field public mDeviceError:Z

.field public mDurationOrStartTimeMs:J

.field public mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

.field public mInternalReconfigure:I

.field public final mIsNdk:Z

.field public final mLatencyMs:I

.field public final mLogId:J

.field public final mOperatingMode:I

.field public mRequestCount:J

.field public mResultErrorCount:J

.field public final mSessionIndex:I

.field public mStreamStats:Ljava/util/List;

.field public mUserTag:Ljava/lang/String;

.field public mVideoStabilizationMode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;IZIIIZJI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraId:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraFacing:I

    iput-object p3, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAPILevel:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    iput-boolean p5, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mIsNdk:Z

    iput p6, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAction:I

    iput p7, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mLatencyMs:I

    iput p8, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mOperatingMode:I

    iput-boolean p9, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDeviceError:Z

    iput-wide p10, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mLogId:J

    iput p12, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mSessionIndex:I

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public markCompleted(IJJZLjava/util/List;Ljava/lang/String;ILandroid/hardware/CameraExtensionSessionStats;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    iput p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mInternalReconfigure:I

    iput-wide p2, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mRequestCount:J

    iput-wide p4, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mResultErrorCount:J

    iput-boolean p6, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDeviceError:Z

    iput-object p7, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mStreamStats:Ljava/util/List;

    iput-object p8, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mUserTag:Ljava/lang/String;

    iput p9, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mVideoStabilizationMode:I

    iput-object p10, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    return-void
.end method
