.class public final Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;
.super Ljava/lang/Object;
.source "FillRequestEventLogger.java"


# instance fields
.field public mAppPackageUid:I

.field public mAutofillServiceUid:I

.field public mFlags:I

.field public mInlineSuggestionHostUid:I

.field public mIsAugmented:Z

.field public mIsClientSuggestionFallback:Z

.field public mIsFillDialogEligible:Z

.field public mLatencyFillRequestSentMillis:I

.field public mRequestId:I

.field public mRequestTriggerReason:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mAppPackageUid:I

    iput v0, p0, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mAutofillServiceUid:I

    iput v0, p0, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mInlineSuggestionHostUid:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mIsAugmented:Z

    iput-boolean v1, p0, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mIsClientSuggestionFallback:Z

    iput-boolean v1, p0, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mIsFillDialogEligible:Z

    iput v1, p0, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mRequestTriggerReason:I

    iput v0, p0, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mFlags:I

    iput v0, p0, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mLatencyFillRequestSentMillis:I

    return-void
.end method
