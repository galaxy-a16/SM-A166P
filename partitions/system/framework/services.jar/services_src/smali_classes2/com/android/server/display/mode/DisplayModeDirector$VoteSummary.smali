.class public final Lcom/android/server/display/mode/DisplayModeDirector$VoteSummary;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# instance fields
.field public appRequestBaseModeRefreshRate:F

.field public disableRefreshRateSwitching:Z

.field public height:I

.field public maxPhysicalRefreshRate:F

.field public maxRenderFrameRate:F

.field public minPhysicalRefreshRate:F

.field public minRenderFrameRate:F

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$VoteSummary;->reset()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 298
    iput v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$VoteSummary;->minPhysicalRefreshRate:F

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 299
    iput v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$VoteSummary;->maxPhysicalRefreshRate:F

    .line 300
    iput v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$VoteSummary;->minRenderFrameRate:F

    .line 301
    iput v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$VoteSummary;->maxRenderFrameRate:F

    const/4 v1, -0x1

    .line 302
    iput v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$VoteSummary;->width:I

    .line 303
    iput v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$VoteSummary;->height:I

    const/4 v1, 0x0

    .line 304
    iput-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$VoteSummary;->disableRefreshRateSwitching:Z

    .line 305
    iput v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$VoteSummary;->appRequestBaseModeRefreshRate:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "minPhysicalRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$VoteSummary;->minPhysicalRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxPhysicalRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$VoteSummary;->maxPhysicalRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", minRenderFrameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$VoteSummary;->minRenderFrameRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxRenderFrameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$VoteSummary;->maxRenderFrameRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$VoteSummary;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$VoteSummary;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", disableRefreshRateSwitching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$VoteSummary;->disableRefreshRateSwitching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", appRequestBaseModeRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$VoteSummary;->appRequestBaseModeRefreshRate:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
