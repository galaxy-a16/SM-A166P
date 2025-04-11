.class public final Lcom/android/server/power/PowerHistorian$WakeUpRecord;
.super Lcom/android/server/power/PowerHistorian$Record;
.source "PowerHistorian.java"


# instance fields
.field public final mForegroundPackageName:Ljava/lang/String;

.field public final mGroupId:I

.field public final mIsOn:Z

.field public final mOpPackageName:Ljava/lang/String;

.field public final mReasonInt:I

.field public final mReasonStr:Ljava/lang/String;

.field public final mUid:I


# direct methods
.method public constructor <init>(ZIIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerHistorian$Record;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mIsOn:Z

    iput p2, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mUid:I

    iput p3, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mGroupId:I

    iput p4, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mReasonInt:I

    if-eqz p1, :cond_0

    invoke-static {p4}, Landroid/os/PowerManager;->wakeReasonToString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p4}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mReasonStr:Ljava/lang/String;

    invoke-virtual {p0, p5}, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->ensureNonNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p0, p6}, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->ensureNonNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mOpPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ensureNonNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public getForegroundPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mForegroundPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getOpPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mOpPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getReasonInt()I
    .locals 0

    iget p0, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mReasonInt:I

    return p0
.end method

.method public getReasonStr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mReasonStr:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic getRecordedTimeMillis()J
    .locals 2

    invoke-super {p0}, Lcom/android/server/power/PowerHistorian$Record;->getRecordedTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public isOn()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mIsOn:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/server/power/PowerHistorian$Record;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " %-5s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mGroupId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " %-2s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mIsOn:Z

    if-eqz v2, :cond_0

    const-string v2, "ON"

    goto :goto_0

    :cond_0
    const-string v2, "OFF"

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, " %-3s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mReasonStr:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " %-40s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mForegroundPackageName:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, " %s"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
