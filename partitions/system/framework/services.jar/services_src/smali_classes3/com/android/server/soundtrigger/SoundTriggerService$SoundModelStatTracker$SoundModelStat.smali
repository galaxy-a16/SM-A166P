.class public Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;
.super Ljava/lang/Object;
.source "SoundTriggerService.java"


# instance fields
.field public mIsStarted:Z

.field public mLastStartTimestampMsec:J

.field public mLastStopTimestampMsec:J

.field public mStartCount:J

.field public mTotalTimeMsec:J

.field public final synthetic this$1:Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;)V
    .locals 2

    .line 162
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->this$1:Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 163
    iput-wide v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mStartCount:J

    .line 164
    iput-wide v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mTotalTimeMsec:J

    .line 165
    iput-wide v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mLastStartTimestampMsec:J

    .line 166
    iput-wide v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mLastStopTimestampMsec:J

    const/4 p1, 0x0

    .line 167
    iput-boolean p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mIsStarted:Z

    return-void
.end method
