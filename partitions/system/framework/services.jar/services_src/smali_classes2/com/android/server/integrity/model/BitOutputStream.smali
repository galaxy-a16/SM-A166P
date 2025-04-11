.class public Lcom/android/server/integrity/model/BitOutputStream;
.super Ljava/lang/Object;
.source "BitOutputStream.java"


# instance fields
.field public final mBuffer:[B

.field public mNextBitIndex:I

.field public final mOutputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 36
    iput-object v0, p0, Lcom/android/server/integrity/model/BitOutputStream;->mBuffer:[B

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/android/server/integrity/model/BitOutputStream;->mNextBitIndex:I

    .line 38
    iput-object p1, p0, Lcom/android/server/integrity/model/BitOutputStream;->mOutputStream:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 4

    .line 89
    iget v0, p0, Lcom/android/server/integrity/model/BitOutputStream;->mNextBitIndex:I

    div-int/lit8 v1, v0, 0x8

    .line 90
    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/server/integrity/model/BitOutputStream;->mOutputStream:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/android/server/integrity/model/BitOutputStream;->mBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 97
    invoke-virtual {p0}, Lcom/android/server/integrity/model/BitOutputStream;->reset()V

    return-void
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Lcom/android/server/integrity/model/BitOutputStream;->mNextBitIndex:I

    .line 103
    iget-object p0, p0, Lcom/android/server/integrity/model/BitOutputStream;->mBuffer:[B

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method

.method public setNext()V
    .locals 1

    const/4 v0, 0x1

    .line 81
    invoke-virtual {p0, v0}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(Z)V

    return-void
.end method

.method public setNext(II)V
    .locals 3

    if-gtz p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    :goto_0
    add-int/lit8 v2, p1, -0x1

    if-lez p1, :cond_2

    and-int p1, p2, v0

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 56
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(Z)V

    ushr-int/lit8 v0, v0, 0x1

    move p1, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setNext(Z)V
    .locals 4

    .line 67
    iget v0, p0, Lcom/android/server/integrity/model/BitOutputStream;->mNextBitIndex:I

    div-int/lit8 v0, v0, 0x8

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/server/integrity/model/BitOutputStream;->mOutputStream:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/server/integrity/model/BitOutputStream;->mBuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 70
    invoke-virtual {p0}, Lcom/android/server/integrity/model/BitOutputStream;->reset()V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 74
    iget-object p1, p0, Lcom/android/server/integrity/model/BitOutputStream;->mBuffer:[B

    aget-byte v2, p1, v0

    iget v3, p0, Lcom/android/server/integrity/model/BitOutputStream;->mNextBitIndex:I

    rem-int/lit8 v3, v3, 0x8

    rsub-int/lit8 v3, v3, 0x7

    shl-int v3, v1, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 76
    :cond_1
    iget p1, p0, Lcom/android/server/integrity/model/BitOutputStream;->mNextBitIndex:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/integrity/model/BitOutputStream;->mNextBitIndex:I

    return-void
.end method
