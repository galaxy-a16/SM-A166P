.class public abstract Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;
.super Ljava/lang/Object;
.source "LZMACoder.java"


# instance fields
.field public final lc:I

.field public final literalPosMask:I

.field public final synthetic this$0:Lorg/tukaani/xz/lzma/LZMACoder;


# direct methods
.method public constructor <init>(Lorg/tukaani/xz/lzma/LZMACoder;II)V
    .locals 0

    .line 96
    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;->this$0:Lorg/tukaani/xz/lzma/LZMACoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput p2, p0, Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;->lc:I

    const/4 p1, 0x1

    shl-int p2, p1, p3

    sub-int/2addr p2, p1

    .line 98
    iput p2, p0, Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;->literalPosMask:I

    return-void
.end method


# virtual methods
.method public final getSubcoderIndex(II)I
    .locals 2

    .line 102
    iget v0, p0, Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;->lc:I

    rsub-int/lit8 v1, v0, 0x8

    shr-int/2addr p1, v1

    .line 103
    iget p0, p0, Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;->literalPosMask:I

    and-int/2addr p0, p2

    shl-int/2addr p0, v0

    add-int/2addr p1, p0

    return p1
.end method
