.class public abstract Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;
.super Ljava/lang/Object;
.source "HuffmanDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$1;)V
    .locals 0

    .line 192
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract available()I
.end method

.method public abstract hasData()Z
.end method

.method public abstract read([BII)I
.end method

.method public abstract state()Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;
.end method
