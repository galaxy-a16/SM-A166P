.class public Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;
.super Ljava/lang/Object;
.source "ForegroundServiceTypeLoggerModule.java"


# instance fields
.field public mAssociatedFgsRecord:Lcom/android/server/am/ServiceRecord;

.field public mIsAssociatedWithFgs:Z

.field public final mPackageName:Ljava/lang/String;

.field public final mPid:I

.field public final mTimeStart:J

.field public mType:I

.field public final mUid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;->mUid:I

    iput p2, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;->mPid:I

    iput-object p3, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;->mPackageName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;->mType:I

    iput-wide p5, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;->mTimeStart:J

    return-void
.end method
