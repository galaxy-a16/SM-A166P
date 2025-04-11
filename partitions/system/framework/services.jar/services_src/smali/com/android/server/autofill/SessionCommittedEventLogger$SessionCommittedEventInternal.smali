.class public final Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;
.super Ljava/lang/Object;
.source "SessionCommittedEventLogger.java"


# instance fields
.field public mCommitReason:I

.field public mComponentPackageUid:I

.field public mRequestCount:I

.field public mSessionDurationMillis:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mComponentPackageUid:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mRequestCount:I

    iput v0, p0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mCommitReason:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mSessionDurationMillis:J

    return-void
.end method
