.class public final Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;
.super Ljava/lang/Object;
.source "SaveEventLogger.java"


# instance fields
.field public mAppPackageUid:I

.field public mCancelButtonClicked:Z

.field public mDialogDismissed:Z

.field public mFlag:J

.field public mIsFrameworkCreatedSaveInfo:Z

.field public mIsNewField:Z

.field public mIsSaved:Z

.field public mLatencySaveFinishMillis:J

.field public mLatencySaveRequestMillis:J

.field public mLatencySaveUiDisplayMillis:J

.field public mRequestId:I

.field public mSaveButtonClicked:Z

.field public mSaveUiNotShownReason:I

.field public mSaveUiShownReason:I

.field public mSaveUiTriggerIds:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 315
    iput v0, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mAppPackageUid:I

    .line 316
    iput v0, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiTriggerIds:I

    const-wide/16 v0, -0x1

    .line 317
    iput-wide v0, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mFlag:J

    const/4 v0, 0x0

    .line 318
    iput-boolean v0, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsNewField:Z

    .line 319
    iput v0, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiShownReason:I

    .line 320
    iput v0, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiNotShownReason:I

    .line 321
    iput-boolean v0, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveButtonClicked:Z

    .line 322
    iput-boolean v0, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mCancelButtonClicked:Z

    .line 323
    iput-boolean v0, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mDialogDismissed:Z

    .line 324
    iput-boolean v0, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsSaved:Z

    const-wide/16 v1, 0x0

    .line 325
    iput-wide v1, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveUiDisplayMillis:J

    .line 326
    iput-wide v1, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveRequestMillis:J

    .line 327
    iput-wide v1, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveFinishMillis:J

    .line 328
    iput-boolean v0, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsFrameworkCreatedSaveInfo:Z

    return-void
.end method
