.class public Lcom/android/server/input/InputManagerService$PointerDisplayIdChangedArgs;
.super Ljava/lang/Object;
.source "InputManagerService.java"


# instance fields
.field public final mPointerDisplayId:I

.field public final mXPosition:F

.field public final mYPosition:F


# direct methods
.method public constructor <init>(IFF)V
    .locals 0

    .line 3827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3828
    iput p1, p0, Lcom/android/server/input/InputManagerService$PointerDisplayIdChangedArgs;->mPointerDisplayId:I

    .line 3829
    iput p2, p0, Lcom/android/server/input/InputManagerService$PointerDisplayIdChangedArgs;->mXPosition:F

    .line 3830
    iput p3, p0, Lcom/android/server/input/InputManagerService$PointerDisplayIdChangedArgs;->mYPosition:F

    return-void
.end method
