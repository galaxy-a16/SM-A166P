.class public final Lcom/android/server/autofill/FillResponseEventLogger;
.super Ljava/lang/Object;
.source "FillResponseEventLogger.java"


# instance fields
.field public mEventInternal:Ljava/util/Optional;

.field public final mSessionId:I

.field public startResponseProcessingTimestamp:J


# direct methods
.method public static synthetic $r8$lambda$-nY7AUc28gNpnR9SGv8xmaSa-PM(Lcom/android/server/autofill/FillResponseEventLogger;Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/autofill/FillResponseEventLogger;->lambda$maybeSetLatencyResponseProcessingMillis$14(Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0IWIEgCjNzJMwmXEnpQ8R_UMdjI(Ljava/util/List;Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/FillResponseEventLogger;->lambda$maybeSetDatasetsCountAfterPotentialPccFiltering$17(Ljava/util/List;Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2X_3HeOOjEZ762PqAXwYae_1UvM(ILcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/FillResponseEventLogger;->lambda$maybeSetDetectionPreference$18(ILcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LtUee-gVeNJyT1mfIlH7H6JIi4I(ILcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/FillResponseEventLogger;->lambda$maybeSetTotalDatasetsProvided$5(ILcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TMpbYGTkM9IhbIP9wwrkzOJLVgc(ILcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/FillResponseEventLogger;->lambda$maybeSetAppPackageUid$1(ILcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TublH16bXlMGojGIZL2kLef9tm4(ILcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/FillResponseEventLogger;->lambda$maybeSetSaveUiTriggerIds$6(ILcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aTUCwGqRAE_-0ciiSu0yo5WlQDA(ILcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/FillResponseEventLogger;->lambda$maybeSetLatencyFillResponseReceivedMillis$7(ILcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dEBbj9YOyz-juYdcAeGoONtRuiI(ILcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/FillResponseEventLogger;->lambda$maybeSetResponseStatus$13(ILcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h-Dv78PjGGAnU5rbuTbdSSB2puQ(ILcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/FillResponseEventLogger;->lambda$maybeSetAvailableCount$4(ILcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tmXY2McQxi3lcPqyrWXLDeS-lzg(ILcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/FillResponseEventLogger;->lambda$maybeSetRequestId$0(ILcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 72
    iput-wide v0, p0, Lcom/android/server/autofill/FillResponseEventLogger;->startResponseProcessingTimestamp:J

    .line 199
    iput p1, p0, Lcom/android/server/autofill/FillResponseEventLogger;->mSessionId:I

    .line 200
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    return-void
.end method

.method public static forSessionId(I)Lcom/android/server/autofill/FillResponseEventLogger;
    .locals 1

    .line 207
    new-instance v0, Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/FillResponseEventLogger;-><init>(I)V

    return-object v0
.end method

.method public static synthetic lambda$maybeSetAppPackageUid$1(ILcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;)V
    .locals 0

    .line 234
    iput p0, p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAppPackageUid:I

    return-void
.end method

.method public static synthetic lambda$maybeSetAvailableCount$4(ILcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;)V
    .locals 0

    .line 261
    iput p0, p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailableCount:I

    return-void
.end method

.method public static synthetic lambda$maybeSetDatasetsCountAfterPotentialPccFiltering$17(Ljava/util/List;Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 411
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    move v3, v2

    .line 412
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 413
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/Dataset;

    if-eqz v4, :cond_1

    .line 415
    invoke-virtual {v4}, Landroid/service/autofill/Dataset;->getEligibleReason()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 418
    :cond_0
    invoke-virtual {v4}, Landroid/service/autofill/Dataset;->getEligibleReason()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    move v1, v0

    move v3, v1

    .line 425
    :goto_3
    iput v0, p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailablePccOnlyCount:I

    .line 426
    iput v3, p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailablePccCount:I

    .line 427
    iput v1, p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailableCount:I

    return-void
.end method

.method public static synthetic lambda$maybeSetDetectionPreference$18(ILcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;)V
    .locals 0

    .line 436
    iput p0, p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mDetectionPref:I

    return-void
.end method

.method public static synthetic lambda$maybeSetLatencyFillResponseReceivedMillis$7(ILcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;)V
    .locals 0

    .line 309
    iput p0, p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mLatencyFillResponseReceivedMillis:I

    return-void
.end method

.method private synthetic lambda$maybeSetLatencyResponseProcessingMillis$14(Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;)V
    .locals 4

    .line 376
    iget-wide v0, p0, Lcom/android/server/autofill/FillResponseEventLogger;->startResponseProcessingTimestamp:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "FillResponseEventLogger"

    const-string/jumbo v1, "uninitialized startResponseProcessingTimestamp"

    .line 377
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/autofill/FillResponseEventLogger;->startResponseProcessingTimestamp:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mLatencyResponseProcessingMillis:J

    return-void
.end method

.method public static synthetic lambda$maybeSetRequestId$0(ILcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;)V
    .locals 0

    .line 226
    iput p0, p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mRequestId:I

    return-void
.end method

.method public static synthetic lambda$maybeSetResponseStatus$13(ILcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;)V
    .locals 0

    .line 363
    iput p0, p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mResponseStatus:I

    return-void
.end method

.method public static synthetic lambda$maybeSetSaveUiTriggerIds$6(ILcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;)V
    .locals 0

    .line 300
    iput p0, p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mSaveUiTriggerIds:I

    return-void
.end method

.method public static synthetic lambda$maybeSetTotalDatasetsProvided$5(ILcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;)V
    .locals 2

    .line 274
    iget v0, p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mTotalDatasetsProvided:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 275
    iput p0, p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mTotalDatasetsProvided:I

    :cond_0
    return-void
.end method


# virtual methods
.method public logAndEndEvent()V
    .locals 28

    move-object/from16 v0, p0

    .line 444
    iget-object v1, v0, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const-string v2, "FillResponseEventLogger"

    if-nez v1, :cond_0

    const-string v0, "Shouldn\'t be logging AutofillFillRequestReported again for same event"

    .line 445
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 449
    :cond_0
    iget-object v1, v0, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;

    .line 450
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_1

    .line 451
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Log AutofillFillResponseReported: requestId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mRequestId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sessionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/autofill/FillResponseEventLogger;->mSessionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mAppPackageUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAppPackageUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mDisplayPresentationType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mDisplayPresentationType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mAvailableCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailableCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mSaveUiTriggerIds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mSaveUiTriggerIds:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mLatencyFillResponseReceivedMillis="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mLatencyFillResponseReceivedMillis:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mAuthenticationType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAuthenticationType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mAuthenticationResult="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAuthenticationResult:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mAuthenticationFailureReason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAuthenticationFailureReason:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mLatencyAuthenticationUiDisplayMillis="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mLatencyAuthenticationUiDisplayMillis:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mLatencyDatasetDisplayMillis="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mLatencyDatasetDisplayMillis:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mResponseStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mResponseStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mLatencyResponseProcessingMillis="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mLatencyResponseProcessingMillis:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " mAvailablePccCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailablePccCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mAvailablePccOnlyCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailablePccOnlyCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mTotalDatasetsProvided="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mTotalDatasetsProvided:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mDetectionPref="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mDetectionPref:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v4, 0x25d

    .line 471
    iget v5, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mRequestId:I

    iget v6, v0, Lcom/android/server/autofill/FillResponseEventLogger;->mSessionId:I

    iget v7, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAppPackageUid:I

    iget v8, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mDisplayPresentationType:I

    iget v9, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailableCount:I

    iget v2, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mSaveUiTriggerIds:I

    int-to-long v10, v2

    iget v12, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mLatencyFillResponseReceivedMillis:I

    iget v13, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAuthenticationType:I

    iget v14, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAuthenticationResult:I

    iget v2, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAuthenticationFailureReason:I

    int-to-long v2, v2

    move-wide v15, v2

    iget v2, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mLatencyAuthenticationUiDisplayMillis:I

    int-to-long v2, v2

    move-wide/from16 v17, v2

    iget v2, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mLatencyDatasetDisplayMillis:I

    int-to-long v2, v2

    move-wide/from16 v19, v2

    iget v2, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mResponseStatus:I

    move/from16 v21, v2

    iget-wide v2, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mLatencyResponseProcessingMillis:J

    move-wide/from16 v22, v2

    iget v2, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailablePccCount:I

    move/from16 v24, v2

    iget v2, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailablePccOnlyCount:I

    move/from16 v25, v2

    iget v2, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mTotalDatasetsProvided:I

    move/from16 v26, v2

    iget v1, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mDetectionPref:I

    move/from16 v27, v1

    invoke-static/range {v4 .. v27}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIJIIIJJJIJIIII)V

    .line 491
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    return-void
.end method

.method public maybeSetAppPackageUid(I)V
    .locals 1

    .line 233
    iget-object p0, p0, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetAvailableCount(I)V
    .locals 1

    .line 260
    iget-object p0, p0, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetDatasetsCountAfterPotentialPccFiltering(Ljava/util/List;)V
    .locals 1

    .line 406
    iget-object p0, p0, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetDetectionPreference(I)V
    .locals 1

    .line 435
    iget-object p0, p0, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetLatencyFillResponseReceivedMillis(I)V
    .locals 1

    .line 308
    iget-object p0, p0, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda8;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetLatencyResponseProcessingMillis()V
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/autofill/FillResponseEventLogger;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetRequestId(I)V
    .locals 1

    .line 226
    iget-object p0, p0, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetResponseStatus(I)V
    .locals 1

    .line 362
    iget-object p0, p0, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetSaveUiTriggerIds(I)V
    .locals 1

    .line 299
    iget-object p0, p0, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetTotalDatasetsProvided(I)V
    .locals 1

    .line 266
    iget-object p0, p0, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startLogForNewResponse()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FillResponseEventLogger"

    const-string v1, "FillResponseEventLogger is not empty before starting for a new request"

    .line 216
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    new-instance v0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;

    invoke-direct {v0}, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;-><init>()V

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    return-void
.end method

.method public startResponseProcessingTime()V
    .locals 2

    .line 368
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/autofill/FillResponseEventLogger;->startResponseProcessingTimestamp:J

    return-void
.end method
