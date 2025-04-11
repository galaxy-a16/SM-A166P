.class public final Lcom/android/server/PinnerService$PinRangeSourceStatic;
.super Lcom/android/server/PinnerService$PinRangeSource;
.source "PinnerService.java"


# instance fields
.field public mDone:Z

.field public final mPinLength:I

.field public final mPinStart:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 909
    invoke-direct {p0, v0}, Lcom/android/server/PinnerService$PinRangeSource;-><init>(Lcom/android/server/PinnerService$PinRangeSource-IA;)V

    const/4 v0, 0x0

    .line 907
    iput-boolean v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStatic;->mDone:Z

    .line 910
    iput p1, p0, Lcom/android/server/PinnerService$PinRangeSourceStatic;->mPinStart:I

    .line 911
    iput p2, p0, Lcom/android/server/PinnerService$PinRangeSourceStatic;->mPinLength:I

    return-void
.end method


# virtual methods
.method public read(Lcom/android/server/PinnerService$PinRange;)Z
    .locals 1

    .line 916
    iget v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStatic;->mPinStart:I

    iput v0, p1, Lcom/android/server/PinnerService$PinRange;->start:I

    .line 917
    iget v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStatic;->mPinLength:I

    iput v0, p1, Lcom/android/server/PinnerService$PinRange;->length:I

    .line 918
    iget-boolean p1, p0, Lcom/android/server/PinnerService$PinRangeSourceStatic;->mDone:Z

    const/4 v0, 0x1

    .line 919
    iput-boolean v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStatic;->mDone:Z

    xor-int/lit8 p0, p1, 0x1

    return p0
.end method
