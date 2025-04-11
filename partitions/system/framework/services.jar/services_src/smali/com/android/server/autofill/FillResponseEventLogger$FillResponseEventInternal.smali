.class public final Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;
.super Ljava/lang/Object;
.source "FillResponseEventLogger.java"


# instance fields
.field public mAppPackageUid:I

.field public mAuthenticationFailureReason:I

.field public mAuthenticationResult:I

.field public mAuthenticationType:I

.field public mAvailableCount:I

.field public mAvailablePccCount:I

.field public mAvailablePccOnlyCount:I

.field public mDetectionPref:I

.field public mDisplayPresentationType:I

.field public mLatencyAuthenticationUiDisplayMillis:I

.field public mLatencyDatasetDisplayMillis:I

.field public mLatencyFillResponseReceivedMillis:I

.field public mLatencyResponseProcessingMillis:J

.field public mRequestId:I

.field public mResponseStatus:I

.field public mSaveUiTriggerIds:I

.field public mTotalDatasetsProvided:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mRequestId:I

    iput v0, p0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAppPackageUid:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mDisplayPresentationType:I

    iput v1, p0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailableCount:I

    iput v0, p0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mSaveUiTriggerIds:I

    iput v0, p0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mLatencyFillResponseReceivedMillis:I

    iput v1, p0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAuthenticationType:I

    iput v1, p0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAuthenticationResult:I

    iput v0, p0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAuthenticationFailureReason:I

    iput v0, p0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mLatencyAuthenticationUiDisplayMillis:I

    iput v0, p0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mLatencyDatasetDisplayMillis:I

    iput v1, p0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mResponseStatus:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mLatencyResponseProcessingMillis:J

    iput v0, p0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailablePccCount:I

    iput v0, p0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailablePccOnlyCount:I

    iput v0, p0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mTotalDatasetsProvided:I

    iput v1, p0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mDetectionPref:I

    return-void
.end method
