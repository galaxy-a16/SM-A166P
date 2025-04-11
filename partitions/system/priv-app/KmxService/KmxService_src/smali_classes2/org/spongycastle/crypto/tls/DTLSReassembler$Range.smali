.class Lorg/spongycastle/crypto/tls/DTLSReassembler$Range;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/tls/DTLSReassembler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Range"
.end annotation


# instance fields
.field private end:I

.field private start:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/spongycastle/crypto/tls/DTLSReassembler$Range;->start:I

    iput p2, p0, Lorg/spongycastle/crypto/tls/DTLSReassembler$Range;->end:I

    return-void
.end method


# virtual methods
.method public getEnd()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/crypto/tls/DTLSReassembler$Range;->end:I

    return p0
.end method

.method public getStart()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/crypto/tls/DTLSReassembler$Range;->start:I

    return p0
.end method

.method public setEnd(I)V
    .locals 0

    iput p1, p0, Lorg/spongycastle/crypto/tls/DTLSReassembler$Range;->end:I

    return-void
.end method

.method public setStart(I)V
    .locals 0

    iput p1, p0, Lorg/spongycastle/crypto/tls/DTLSReassembler$Range;->start:I

    return-void
.end method
