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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mAppPackageUid:I

    iput v0, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiTriggerIds:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mFlag:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsNewField:Z

    iput v0, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiShownReason:I

    iput v0, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiNotShownReason:I

    iput-boolean v0, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveButtonClicked:Z

    iput-boolean v0, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mCancelButtonClicked:Z

    iput-boolean v0, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mDialogDismissed:Z

    iput-boolean v0, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsSaved:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveUiDisplayMillis:J

    iput-wide v1, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveRequestMillis:J

    iput-wide v1, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveFinishMillis:J

    iput-boolean v0, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsFrameworkCreatedSaveInfo:Z

    return-void
.end method
