.class public final Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;
.super Ljava/lang/Object;
.source "PresentationStatsEventLogger.java"


# instance fields
.field public mAuthenticationResult:I

.field public mAuthenticationType:I

.field public mAutofillServiceUid:I

.field public mAvailableCount:I

.field public mAvailablePccCount:I

.field public mAvailablePccOnlyCount:I

.field public mCountFilteredUserTyping:I

.field public mCountNotShownImePresentationNotDrawn:I

.field public mCountNotShownImeUserNotSeen:I

.field public mCountShown:I

.field public mDetectionPreference:I

.field public mDialogDismissed:Z

.field public mDisplayPresentationType:I

.field public mFillRequestSentTimestampMs:I

.field public mFillResponseReceivedTimestampMs:I

.field public mInlineSuggestionHostUid:I

.field public mIsDatasetAvailable:Z

.field public mIsRequestTriggered:Z

.field public mLatencyAuthenticationUiDisplayMillis:I

.field public mLatencyDatasetDisplayMillis:I

.field public mNegativeCtaButtonClicked:Z

.field public mNoPresentationReason:I

.field public mPositiveCtaButtonClicked:Z

.field public mRequestId:I

.field public mSelectedDatasetId:I

.field public mSelectedDatasetPickedReason:I

.field public mSuggestionPresentedTimestampMs:I

.field public mSuggestionSentTimestampMs:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 593
    iput v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNoPresentationReason:I

    .line 600
    iput v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDisplayPresentationType:I

    const/4 v1, -0x1

    .line 601
    iput v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofillServiceUid:I

    .line 602
    iput v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mInlineSuggestionHostUid:I

    .line 608
    iput v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectedDatasetId:I

    .line 609
    iput-boolean v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDialogDismissed:Z

    .line 610
    iput-boolean v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNegativeCtaButtonClicked:Z

    .line 611
    iput-boolean v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mPositiveCtaButtonClicked:Z

    .line 612
    iput v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAuthenticationType:I

    .line 613
    iput v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAuthenticationResult:I

    .line 614
    iput v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mLatencyAuthenticationUiDisplayMillis:I

    .line 615
    iput v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mLatencyDatasetDisplayMillis:I

    .line 616
    iput v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailablePccCount:I

    .line 617
    iput v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailablePccOnlyCount:I

    .line 618
    iput v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectedDatasetPickedReason:I

    .line 619
    iput v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDetectionPreference:I

    return-void
.end method
