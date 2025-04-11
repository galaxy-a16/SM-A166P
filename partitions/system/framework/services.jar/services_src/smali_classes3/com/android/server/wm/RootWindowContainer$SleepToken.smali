.class public final Lcom/android/server/wm/RootWindowContainer$SleepToken;
.super Ljava/lang/Object;
.source "RootWindowContainer.java"


# instance fields
.field public final mAcquireTime:J

.field public final mDisplayId:I

.field public final mHashKey:I

.field public final mIsSwappingDisplay:Z

.field public final mTag:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDisplayId(Lcom/android/server/wm/RootWindowContainer$SleepToken;)I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mDisplayId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTag(Lcom/android/server/wm/RootWindowContainer$SleepToken;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mTag:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mDisplayId:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mAcquireTime:J

    iput-boolean p3, p0, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mIsSwappingDisplay:Z

    invoke-static {p1, p2}, Lcom/android/server/wm/RootWindowContainer;->-$$Nest$smmakeSleepTokenKey(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mHashKey:I

    return-void
.end method


# virtual methods
.method public isDisplaySwapping()Z
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mAcquireTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mIsSwappingDisplay:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mIsSwappingDisplay:Z

    if-eqz v1, :cond_0

    const-string v1, " is swapping "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", acquire at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mAcquireTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeTagToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mTag:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    return-void
.end method
