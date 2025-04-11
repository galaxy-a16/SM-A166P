.class public abstract Lorg/tukaani/xz/lzma/LZMACoder;
.super Ljava/lang/Object;
.source "LZMACoder.java"


# instance fields
.field public final distAlign:[S

.field public final distSlots:[[S

.field public final distSpecial:[[S

.field public final isMatch:[[S

.field public final isRep:[S

.field public final isRep0:[S

.field public final isRep0Long:[[S

.field public final isRep1:[S

.field public final isRep2:[S

.field public final posMask:I

.field public final reps:[I

.field public final state:Lorg/tukaani/xz/lzma/State;


# direct methods
.method public constructor <init>(I)V
    .locals 13

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 37
    iput-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    .line 38
    new-instance v1, Lorg/tukaani/xz/lzma/State;

    invoke-direct {v1}, Lorg/tukaani/xz/lzma/State;-><init>()V

    iput-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    const/16 v1, 0xc

    const/16 v2, 0x10

    .line 40
    filled-new-array {v1, v2}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[S

    iput-object v3, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isMatch:[[S

    new-array v3, v1, [S

    .line 41
    iput-object v3, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep:[S

    new-array v3, v1, [S

    .line 42
    iput-object v3, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0:[S

    new-array v3, v1, [S

    .line 43
    iput-object v3, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep1:[S

    new-array v3, v1, [S

    .line 44
    iput-object v3, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep2:[S

    .line 45
    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    iput-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0Long:[[S

    const/16 v1, 0x40

    .line 46
    filled-new-array {v0, v1}, [I

    move-result-object v1

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    iput-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distSlots:[[S

    const/4 v1, 0x2

    new-array v3, v1, [S

    new-array v4, v1, [S

    new-array v5, v0, [S

    new-array v6, v0, [S

    const/16 v0, 0x8

    new-array v7, v0, [S

    new-array v8, v0, [S

    new-array v9, v2, [S

    new-array v10, v2, [S

    const/16 v0, 0x20

    new-array v11, v0, [S

    new-array v12, v0, [S

    .line 47
    filled-new-array/range {v3 .. v12}, [[S

    move-result-object v0

    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distSpecial:[[S

    new-array v0, v2, [S

    .line 52
    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distAlign:[S

    const/4 v0, 0x1

    shl-int p1, v0, p1

    sub-int/2addr p1, v0

    .line 61
    iput p1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->posMask:I

    return-void
.end method

.method public static final getDistState(I)I
    .locals 1

    .line 0
    const/4 v0, 0x6

    if-ge p0, v0, :cond_0

    add-int/lit8 p0, p0, -0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method


# virtual methods
.method public reset()V
    .locals 4

    .line 65
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    .line 66
    aput v1, v0, v2

    const/4 v2, 0x2

    .line 67
    aput v1, v0, v2

    const/4 v2, 0x3

    .line 68
    aput v1, v0, v2

    .line 69
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/State;->reset()V

    move v0, v1

    .line 71
    :goto_0
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isMatch:[[S

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 72
    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep:[S

    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    .line 75
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0:[S

    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    .line 76
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep1:[S

    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    .line 77
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep2:[S

    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    move v0, v1

    .line 79
    :goto_1
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0Long:[[S

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 80
    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 82
    :goto_2
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distSlots:[[S

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 83
    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 85
    :cond_2
    :goto_3
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distSpecial:[[S

    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 86
    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 88
    :cond_3
    iget-object p0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distAlign:[S

    invoke-static {p0}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    return-void
.end method
