.class public abstract Lcom/android/server/appop/OnOpModeChangedListener;
.super Ljava/lang/Object;
.source "OnOpModeChangedListener.java"


# instance fields
.field public mCallingPid:I

.field public mCallingUid:I

.field public mFlags:I

.field public mWatchedOpCode:I

.field public mWatchingUid:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/android/server/appop/OnOpModeChangedListener;->mWatchingUid:I

    .line 39
    iput p2, p0, Lcom/android/server/appop/OnOpModeChangedListener;->mFlags:I

    .line 40
    iput p3, p0, Lcom/android/server/appop/OnOpModeChangedListener;->mWatchedOpCode:I

    .line 41
    iput p4, p0, Lcom/android/server/appop/OnOpModeChangedListener;->mCallingUid:I

    .line 42
    iput p5, p0, Lcom/android/server/appop/OnOpModeChangedListener;->mCallingPid:I

    return-void
.end method


# virtual methods
.method public getCallingPid()I
    .locals 0

    .line 77
    iget p0, p0, Lcom/android/server/appop/OnOpModeChangedListener;->mCallingPid:I

    return p0
.end method

.method public getCallingUid()I
    .locals 0

    .line 70
    iget p0, p0, Lcom/android/server/appop/OnOpModeChangedListener;->mCallingUid:I

    return p0
.end method

.method public getFlags()I
    .locals 0

    .line 56
    iget p0, p0, Lcom/android/server/appop/OnOpModeChangedListener;->mFlags:I

    return p0
.end method

.method public getWatchedOpCode()I
    .locals 0

    .line 63
    iget p0, p0, Lcom/android/server/appop/OnOpModeChangedListener;->mWatchedOpCode:I

    return p0
.end method

.method public getWatchingUid()I
    .locals 0

    .line 49
    iget p0, p0, Lcom/android/server/appop/OnOpModeChangedListener;->mWatchingUid:I

    return p0
.end method

.method public isWatchingUid(I)Z
    .locals 1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    .line 85
    iget p0, p0, Lcom/android/server/appop/OnOpModeChangedListener;->mWatchingUid:I

    if-ltz p0, :cond_1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public abstract onOpModeChanged(IILjava/lang/String;)V
.end method

.method public abstract toString()Ljava/lang/String;
.end method
