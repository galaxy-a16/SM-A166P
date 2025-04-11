.class public Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;
.super Ljava/lang/Object;
.source "InputManagerService.java"


# instance fields
.field public pointerAcceleration:F

.field public pointerIconVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5106
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->reset()V

    return-void
.end method


# virtual methods
.method public allDefaults()Z
    .locals 2

    .line 5110
    iget v0, p0, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerAcceleration:F

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 1

    const/high16 v0, 0x40400000    # 3.0f

    .line 5115
    iput v0, p0, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerAcceleration:F

    const/4 v0, 0x1

    .line 5116
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    return-void
.end method
