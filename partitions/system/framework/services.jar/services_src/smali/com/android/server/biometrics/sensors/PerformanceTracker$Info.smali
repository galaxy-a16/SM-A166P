.class public Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;
.super Ljava/lang/Object;
.source "PerformanceTracker.java"


# instance fields
.field public mAccept:I

.field public mAcceptCrypto:I

.field public mAcquire:I

.field public mAcquireCrypto:I

.field public mNoMatchReason:Landroid/util/SparseArray;

.field public mPermanentLockout:I

.field public mQuality:I

.field public mQualityCrypto:I

.field public mReject:I

.field public mRejectCrypto:I

.field public mTimedLockout:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/PerformanceTracker$Info-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;-><init>()V

    return-void
.end method
