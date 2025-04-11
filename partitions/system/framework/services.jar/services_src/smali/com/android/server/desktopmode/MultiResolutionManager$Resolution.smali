.class public Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;
.super Ljava/lang/Object;
.source "MultiResolutionManager.java"


# instance fields
.field public height:I

.field public name:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    .line 458
    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    .line 459
    iput p2, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    .line 460
    iput p3, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    return-void

    .line 456
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 470
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 472
    :cond_1
    check-cast p1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 474
    iget v2, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    iget v3, p1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    iget p1, p1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 480
    iget v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isSupportedOn(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)Z
    .locals 2

    .line 464
    iget v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    iget v1, p1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    if-gt v0, v1, :cond_0

    iget p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    iget p1, p1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resolution(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
