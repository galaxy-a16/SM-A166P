.class Lorg/spongycastle/jce/provider/ReasonsMask;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final allReasons:Lorg/spongycastle/jce/provider/ReasonsMask;


# instance fields
.field private _reasons:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/spongycastle/jce/provider/ReasonsMask;

    const v1, 0x80ff

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/ReasonsMask;-><init>(I)V

    sput-object v0, Lorg/spongycastle/jce/provider/ReasonsMask;->allReasons:Lorg/spongycastle/jce/provider/ReasonsMask;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/ReasonsMask;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/spongycastle/jce/provider/ReasonsMask;->_reasons:I

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/ReasonFlags;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1BitString;->intValue()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/jce/provider/ReasonsMask;->_reasons:I

    return-void
.end method


# virtual methods
.method public addReasons(Lorg/spongycastle/jce/provider/ReasonsMask;)V
    .locals 1

    iget v0, p0, Lorg/spongycastle/jce/provider/ReasonsMask;->_reasons:I

    invoke-virtual {p1}, Lorg/spongycastle/jce/provider/ReasonsMask;->getReasons()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/jce/provider/ReasonsMask;->_reasons:I

    return-void
.end method

.method public getReasons()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/jce/provider/ReasonsMask;->_reasons:I

    return p0
.end method

.method public hasNewReasons(Lorg/spongycastle/jce/provider/ReasonsMask;)Z
    .locals 1

    iget v0, p0, Lorg/spongycastle/jce/provider/ReasonsMask;->_reasons:I

    invoke-virtual {p1}, Lorg/spongycastle/jce/provider/ReasonsMask;->getReasons()I

    move-result p1

    iget p0, p0, Lorg/spongycastle/jce/provider/ReasonsMask;->_reasons:I

    xor-int/2addr p0, p1

    or-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public intersect(Lorg/spongycastle/jce/provider/ReasonsMask;)Lorg/spongycastle/jce/provider/ReasonsMask;
    .locals 2

    new-instance v0, Lorg/spongycastle/jce/provider/ReasonsMask;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/ReasonsMask;-><init>()V

    new-instance v1, Lorg/spongycastle/jce/provider/ReasonsMask;

    iget p0, p0, Lorg/spongycastle/jce/provider/ReasonsMask;->_reasons:I

    invoke-virtual {p1}, Lorg/spongycastle/jce/provider/ReasonsMask;->getReasons()I

    move-result p1

    and-int/2addr p0, p1

    invoke-direct {v1, p0}, Lorg/spongycastle/jce/provider/ReasonsMask;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/ReasonsMask;->addReasons(Lorg/spongycastle/jce/provider/ReasonsMask;)V

    return-object v0
.end method

.method public isAllReasons()Z
    .locals 1

    iget p0, p0, Lorg/spongycastle/jce/provider/ReasonsMask;->_reasons:I

    sget-object v0, Lorg/spongycastle/jce/provider/ReasonsMask;->allReasons:Lorg/spongycastle/jce/provider/ReasonsMask;

    iget v0, v0, Lorg/spongycastle/jce/provider/ReasonsMask;->_reasons:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
