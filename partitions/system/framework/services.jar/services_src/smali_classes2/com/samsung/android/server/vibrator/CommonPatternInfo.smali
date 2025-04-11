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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/server/vibrator/CommonPatternInfo;->type:I

    iput p2, p0, Lcom/samsung/android/server/vibrator/CommonPatternInfo;->index:I

    iput p3, p0, Lcom/samsung/android/server/vibrator/CommonPatternInfo;->scale:I

    iput p4, p0, Lcom/samsung/android/server/vibrator/CommonPatternInfo;->duration:I

    iput p5, p0, Lcom/samsung/android/server/vibrator/CommonPatternInfo;->frequency:I

    return-void
.end method
