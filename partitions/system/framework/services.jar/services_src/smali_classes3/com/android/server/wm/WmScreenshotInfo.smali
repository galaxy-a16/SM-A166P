.class public Lcom/android/server/wm/WmScreenshotInfo;
.super Ljava/lang/Object;
.source "WmScreenshotInfo.java"


# instance fields
.field public mBundle:Landroid/os/Bundle;

.field public mDisplayId:I

.field public mOrigin:I

.field public mSweepDirection:I

.field public mType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WmScreenshotInfo;->mType:I

    iput v0, p0, Lcom/android/server/wm/WmScreenshotInfo;->mSweepDirection:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/WmScreenshotInfo;->mDisplayId:I

    iput v0, p0, Lcom/android/server/wm/WmScreenshotInfo;->mOrigin:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WmScreenshotInfo;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/WmScreenshotInfo;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public getDisplayId()I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/WmScreenshotInfo;->mDisplayId:I

    return p0
.end method

.method public getOrigin()I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/WmScreenshotInfo;->mOrigin:I

    return p0
.end method

.method public getSweepDirection()I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/WmScreenshotInfo;->mSweepDirection:I

    return p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/WmScreenshotInfo;->mType:I

    return p0
.end method

.method public set(IIIILandroid/os/Bundle;)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/WmScreenshotInfo;->mType:I

    iput p2, p0, Lcom/android/server/wm/WmScreenshotInfo;->mSweepDirection:I

    iput p3, p0, Lcom/android/server/wm/WmScreenshotInfo;->mDisplayId:I

    iput p4, p0, Lcom/android/server/wm/WmScreenshotInfo;->mOrigin:I

    iput-object p5, p0, Lcom/android/server/wm/WmScreenshotInfo;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScreenshotInfo{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WmScreenshotInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sweepDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WmScreenshotInfo;->mSweepDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", display="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WmScreenshotInfo;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WmScreenshotInfo;->mOrigin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WmScreenshotInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
