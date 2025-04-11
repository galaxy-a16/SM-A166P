.class public Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;
.super Ljava/lang/Object;
.source "AuthSessionCoordinator.java"


# instance fields
.field public mApiCallNumber:I

.field public final mApiCalls:[Ljava/lang/String;

.field public mCurr:I

.field public final mSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gtz p1, :cond_0

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot initialize ring buffer of size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthSessionCoordinator"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mApiCalls:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 239
    iput v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mCurr:I

    .line 240
    iput p1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mSize:I

    .line 241
    iput v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mApiCallNumber:I

    return-void
.end method


# virtual methods
.method public addApiCall(Ljava/lang/String;)V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mApiCalls:[Ljava/lang/String;

    iget v1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mCurr:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 246
    iput v1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mCurr:I

    .line 247
    iget p1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mSize:I

    rem-int/2addr v1, p1

    iput v1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mCurr:I

    .line 248
    iget p1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mApiCallNumber:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mApiCallNumber:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 254
    iget v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mApiCallNumber:I

    iget v1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mSize:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, ""

    .line 255
    :goto_1
    iget v3, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mSize:I

    if-ge v2, v3, :cond_2

    .line 256
    iget v4, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mCurr:I

    add-int/2addr v4, v2

    rem-int/2addr v4, v3

    .line 257
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mApiCalls:[Ljava/lang/String;

    aget-object v3, v3, v4

    if-eqz v3, :cond_1

    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mApiCalls:[Ljava/lang/String;

    aget-object v4, v5, v4

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "#%-5d %s\n"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v6, v1

    move-object v1, v0

    move v0, v6

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method
