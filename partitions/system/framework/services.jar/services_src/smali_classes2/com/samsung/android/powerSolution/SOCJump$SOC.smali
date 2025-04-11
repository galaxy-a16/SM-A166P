.class public Lcom/samsung/android/powerSolution/SOCJump$SOC;
.super Ljava/lang/Object;
.source "SOCJump.java"


# instance fields
.field public battery:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/powerSolution/SOCJump$SOC;->battery:I

    return-void
.end method


# virtual methods
.method public socJumpcheck(Lcom/samsung/android/powerSolution/SOCJump$SOC;)Z
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/samsung/android/powerSolution/SOCJump$SOC;->battery:I

    iget p0, p0, Lcom/samsung/android/powerSolution/SOCJump$SOC;->battery:I

    sub-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/4 p1, 0x1

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
