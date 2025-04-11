.class public Lcom/samsung/android/server/vibrator/CommonPatternInfo;
.super Ljava/lang/Object;
.source "CommonPatternInfo.java"


# instance fields
.field public duration:I

.field public frequency:I

.field public index:I

.field public scale:I

.field public type:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/samsung/android/server/vibrator/CommonPatternInfo;->type:I

    .line 34
    iput p2, p0, Lcom/samsung/android/server/vibrator/CommonPatternInfo;->index:I

    .line 35
    iput p3, p0, Lcom/samsung/android/server/vibrator/CommonPatternInfo;->scale:I

    .line 36
    iput p4, p0, Lcom/samsung/android/server/vibrator/CommonPatternInfo;->duration:I

    .line 37
    iput p5, p0, Lcom/samsung/android/server/vibrator/CommonPatternInfo;->frequency:I

    return-void
.end method
