.class public Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;
.super Ljava/lang/Object;
.source "ModeChanger.java"


# instance fields
.field public mModeToMode:I

.field public mShowModeChangeScreen:Z

.field public mTopTaskId:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 1

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 257
    iput v0, p0, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->mTopTaskId:I

    .line 260
    iput-boolean p1, p0, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->mShowModeChangeScreen:Z

    .line 261
    iput p2, p0, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->mModeToMode:I

    return-void
.end method

.method public static modeToModeToString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "STANDALONE_TO_DUAL"

    return-object p0

    :cond_1
    const-string p0, "DUAL_TO_STANDALONE"

    return-object p0

    :cond_2
    const-string p0, "NONE"

    return-object p0
.end method


# virtual methods
.method public getModeToMode()I
    .locals 0

    .line 269
    iget p0, p0, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->mModeToMode:I

    return p0
.end method

.method public getTopTaskId()I
    .locals 0

    .line 273
    iget p0, p0, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->mTopTaskId:I

    return p0
.end method

.method public setTopTaskId(I)V
    .locals 0

    .line 277
    iput p1, p0, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->mTopTaskId:I

    return-void
.end method

.method public showModeChangeScreen()Z
    .locals 0

    .line 265
    iget-boolean p0, p0, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->mShowModeChangeScreen:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(mShowModeChangeScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->mShowModeChangeScreen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mModeToMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->mModeToMode:I

    .line 297
    invoke-static {v1}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->modeToModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTopTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->mTopTaskId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
