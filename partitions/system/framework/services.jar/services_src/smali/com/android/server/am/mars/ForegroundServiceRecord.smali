.class public Lcom/android/server/am/mars/ForegroundServiceRecord;
.super Ljava/lang/Object;
.source "ForegroundServiceRecord.java"


# instance fields
.field public mFGSEndTime:J

.field public mFGSStartTime:J

.field public mForegroundType:I

.field public mPackageName:Ljava/lang/String;

.field public mUid:I

.field public mUsingForegroundType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/mars/ForegroundServiceRecord;->mPackageName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/am/mars/ForegroundServiceRecord;->mUid:I

    return-void
.end method


# virtual methods
.method public getFGSEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/mars/ForegroundServiceRecord;->mFGSEndTime:J

    return-wide v0
.end method

.method public getFGSStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/mars/ForegroundServiceRecord;->mFGSStartTime:J

    return-wide v0
.end method

.method public getFGSType()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/mars/ForegroundServiceRecord;->mForegroundType:I

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/ForegroundServiceRecord;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getUsingFGSType()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/mars/ForegroundServiceRecord;->mUsingForegroundType:I

    return p0
.end method

.method public setFGSEndTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/mars/ForegroundServiceRecord;->mFGSEndTime:J

    return-void
.end method

.method public setFGSStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/mars/ForegroundServiceRecord;->mFGSStartTime:J

    return-void
.end method

.method public setFGSType(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/am/mars/ForegroundServiceRecord;->mForegroundType:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/am/mars/ForegroundServiceRecord;->mForegroundType:I

    return-void
.end method

.method public setUsingFGSType(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/am/mars/ForegroundServiceRecord;->mUsingForegroundType:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/am/mars/ForegroundServiceRecord;->mUsingForegroundType:I

    return-void
.end method
