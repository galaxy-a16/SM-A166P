.class public Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;
.super Ljava/lang/Object;
.source "CameraServiceProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mEventList:Ljava/util/ArrayList;

.field public final synthetic this$0:Lcom/android/server/camera/CameraServiceProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/camera/CameraServiceProxy;Ljava/util/ArrayList;)V
    .locals 0

    .line 837
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 838
    iput-object p2, p0, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;->mEventList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final logCameraUsageEvent(Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;)V
    .locals 39

    move-object/from16 v0, p1

    .line 860
    iget v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraFacing:I

    const-string v2, "CameraService_proxy"

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_0

    .line 871
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown camera facing: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraFacing:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v6

    goto :goto_0

    :cond_0
    move v12, v3

    goto :goto_0

    :cond_1
    move v12, v4

    goto :goto_0

    :cond_2
    move v12, v5

    .line 876
    :goto_0
    iget-object v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    const/4 v15, 0x4

    const/4 v7, -0x1

    if-eqz v1, :cond_8

    .line 877
    iget v1, v1, Landroid/hardware/CameraExtensionSessionStats;->type:I

    if-eqz v1, :cond_7

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_5

    if-eq v1, v3, :cond_4

    if-eq v1, v15, :cond_3

    .line 899
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown extension type: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    iget v8, v8, Landroid/hardware/CameraExtensionSessionStats;->type:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move v7, v15

    goto :goto_1

    :cond_4
    move v7, v3

    goto :goto_1

    :cond_5
    move v7, v4

    goto :goto_1

    :cond_6
    move v7, v5

    goto :goto_1

    :cond_7
    move v7, v6

    .line 901
    :goto_1
    iget-object v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    iget-boolean v1, v1, Landroid/hardware/CameraExtensionSessionStats;->isAdvanced:Z

    move/from16 v36, v1

    goto :goto_2

    :cond_8
    move/from16 v36, v6

    :goto_2
    move/from16 v35, v7

    .line 905
    iget-object v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mStreamStats:Ljava/util/List;

    if-eqz v1, :cond_9

    .line 906
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_3

    :cond_9
    move v1, v6

    :goto_3
    const/4 v2, 0x5

    new-array v14, v2, [Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    move v7, v6

    :goto_4
    if-ge v7, v2, :cond_b

    .line 933
    new-instance v8, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    invoke-direct {v8}, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;-><init>()V

    aput-object v8, v14, v7

    if-ge v7, v1, :cond_a

    .line 935
    iget-object v8, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mStreamStats:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/CameraStreamStats;

    .line 936
    aget-object v9, v14, v7

    invoke-virtual {v8}, Landroid/hardware/CameraStreamStats;->getWidth()I

    move-result v10

    iput v10, v9, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->width:I

    .line 937
    aget-object v9, v14, v7

    invoke-virtual {v8}, Landroid/hardware/CameraStreamStats;->getHeight()I

    move-result v10

    iput v10, v9, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->height:I

    .line 938
    aget-object v9, v14, v7

    invoke-virtual {v8}, Landroid/hardware/CameraStreamStats;->getFormat()I

    move-result v10

    iput v10, v9, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->format:I

    .line 939
    aget-object v9, v14, v7

    invoke-virtual {v8}, Landroid/hardware/CameraStreamStats;->getDataSpace()I

    move-result v10

    iput v10, v9, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dataSpace:I

    .line 940
    aget-object v9, v14, v7

    invoke-virtual {v8}, Landroid/hardware/CameraStreamStats;->getUsage()J

    move-result-wide v10

    iput-wide v10, v9, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->usage:J

    .line 941
    aget-object v9, v14, v7

    invoke-virtual {v8}, Landroid/hardware/CameraStreamStats;->getRequestCount()J

    move-result-wide v10

    iput-wide v10, v9, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->requestCount:J

    .line 942
    aget-object v9, v14, v7

    invoke-virtual {v8}, Landroid/hardware/CameraStreamStats;->getErrorCount()J

    move-result-wide v10

    iput-wide v10, v9, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->errorCount:J

    .line 943
    aget-object v9, v14, v7

    invoke-virtual {v8}, Landroid/hardware/CameraStreamStats;->getStartLatencyMs()I

    move-result v10

    iput v10, v9, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->firstCaptureLatencyMillis:I

    .line 944
    aget-object v9, v14, v7

    invoke-virtual {v8}, Landroid/hardware/CameraStreamStats;->getMaxHalBuffers()I

    move-result v10

    iput v10, v9, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxHalBuffers:I

    .line 945
    aget-object v9, v14, v7

    invoke-virtual {v8}, Landroid/hardware/CameraStreamStats;->getMaxAppBuffers()I

    move-result v10

    iput v10, v9, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxAppBuffers:I

    .line 946
    aget-object v9, v14, v7

    invoke-virtual {v8}, Landroid/hardware/CameraStreamStats;->getHistogramType()I

    move-result v10

    iput v10, v9, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramType:I

    .line 947
    aget-object v9, v14, v7

    invoke-virtual {v8}, Landroid/hardware/CameraStreamStats;->getHistogramBins()[F

    move-result-object v10

    iput-object v10, v9, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    .line 948
    aget-object v9, v14, v7

    invoke-virtual {v8}, Landroid/hardware/CameraStreamStats;->getHistogramCounts()[J

    move-result-object v10

    iput-object v10, v9, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    .line 949
    aget-object v9, v14, v7

    invoke-virtual {v8}, Landroid/hardware/CameraStreamStats;->getDynamicRangeProfile()J

    move-result-wide v10

    iput-wide v10, v9, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dynamicRangeProfile:J

    .line 950
    aget-object v9, v14, v7

    invoke-virtual {v8}, Landroid/hardware/CameraStreamStats;->getStreamUseCase()J

    move-result-wide v10

    iput-wide v10, v9, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->streamUseCase:J

    .line 951
    aget-object v9, v14, v7

    invoke-virtual {v8}, Landroid/hardware/CameraStreamStats;->getColorSpace()I

    move-result v8

    iput v8, v9, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->colorSpace:I

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    :cond_b
    const/16 v7, 0xe3

    .line 979
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->getDuration()J

    move-result-wide v8

    iget v10, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAPILevel:I

    iget-object v11, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    iget-object v13, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraId:Ljava/lang/String;

    iget v2, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAction:I

    move-object/from16 v24, v14

    move v14, v2

    iget-boolean v2, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mIsNdk:Z

    move/from16 v29, v15

    move v15, v2

    iget v2, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mLatencyMs:I

    move/from16 v16, v2

    iget v2, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mOperatingMode:I

    move/from16 v17, v2

    iget v2, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mInternalReconfigure:I

    move/from16 v18, v2

    move-wide/from16 v37, v8

    iget-wide v7, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mRequestCount:J

    move-wide/from16 v19, v7

    iget-wide v7, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mResultErrorCount:J

    move-wide/from16 v21, v7

    iget-boolean v2, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDeviceError:Z

    move/from16 v23, v2

    aget-object v2, v24, v6

    .line 983
    invoke-static {v2}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v25

    aget-object v2, v24, v5

    .line 984
    invoke-static {v2}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v26

    aget-object v2, v24, v4

    .line 985
    invoke-static {v2}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v27

    aget-object v2, v24, v3

    .line 986
    invoke-static {v2}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v28

    aget-object v2, v24, v29

    .line 987
    invoke-static {v2}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v29

    iget-object v2, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mUserTag:Ljava/lang/String;

    move-object/from16 v30, v2

    iget v2, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mVideoStabilizationMode:I

    move/from16 v31, v2

    iget-wide v2, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mLogId:J

    move-wide/from16 v32, v2

    iget v0, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mSessionIndex:I

    move/from16 v34, v0

    move/from16 v24, v1

    move-wide/from16 v8, v37

    const/16 v7, 0xe3

    .line 979
    invoke-static/range {v7 .. v36}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJILjava/lang/String;ILjava/lang/String;IZIIIJJZI[B[B[B[B[BLjava/lang/String;IJIIZ)V

    return-void
.end method

.method public run()V
    .locals 3

    .line 843
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;->mEventList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 844
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    .line 845
    invoke-virtual {p0, v1}, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;->logCameraUsageEvent(Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;)V

    const-wide/16 v1, 0x64

    .line 847
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 850
    :cond_0
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method
