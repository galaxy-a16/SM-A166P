.class public final Lcom/android/server/power/PowerHistorian$DisplayGroupRecord;
.super Lcom/android/server/power/PowerHistorian$Record;
.source "PowerHistorian.java"


# instance fields
.field public final mGroupId:I

.field public final mIsAdded:Z


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    .line 293
    invoke-direct {p0}, Lcom/android/server/power/PowerHistorian$Record;-><init>()V

    .line 294
    iput-boolean p1, p0, Lcom/android/server/power/PowerHistorian$DisplayGroupRecord;->mIsAdded:Z

    .line 295
    iput p2, p0, Lcom/android/server/power/PowerHistorian$DisplayGroupRecord;->mGroupId:I

    return-void
.end method


# virtual methods
.method public getDisplayGroupName(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    .line 317
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "CarLife"

    return-object p0

    :cond_1
    const-string p0, "Dex"

    return-object p0

    :cond_2
    const-string p0, "Default"

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/server/power/PowerHistorian$Record;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/PowerHistorian$DisplayGroupRecord;->mGroupId:I

    .line 301
    invoke-virtual {p0, v1}, Lcom/android/server/power/PowerHistorian$DisplayGroupRecord;->getDisplayGroupName(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " %-10s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 302
    iget-boolean p0, p0, Lcom/android/server/power/PowerHistorian$DisplayGroupRecord;->mIsAdded:Z

    if-eqz p0, :cond_0

    const-string p0, "ADD"

    goto :goto_0

    :cond_0
    const-string p0, "REMOVE"

    :goto_0
    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, " %-7s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
