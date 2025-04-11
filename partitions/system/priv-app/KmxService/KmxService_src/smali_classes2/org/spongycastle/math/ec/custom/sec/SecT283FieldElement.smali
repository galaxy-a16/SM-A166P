.class public Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;
.super Lorg/spongycastle/math/ec/ECFieldElement;
.source "SourceFile"


# instance fields
.field protected x:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    invoke-static {}, Lorg/spongycastle/math/raw/Nat320;->create64()[J

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x11b

    if-gt v0, v1, :cond_0

    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->fromBigInteger(Ljava/math/BigInteger;)[J

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x value invalid for SecT283FieldElement"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([J)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    return-void
.end method


# virtual methods
.method public add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    invoke-static {}, Lorg/spongycastle/math/raw/Nat320;->create64()[J

    move-result-object v0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->add([J[J[J)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;-><init>([J)V

    return-object p0
.end method

.method public addOne()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    invoke-static {}, Lorg/spongycastle/math/raw/Nat320;->create64()[J

    move-result-object v0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->addOne([J[J)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;-><init>([J)V

    return-object p0
.end method

.method public divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->invert()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    invoke-static {p0, p1}, Lorg/spongycastle/math/raw/Nat320;->eq64([J[J)Z

    move-result p0

    return p0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 0

    const-string p0, "SecT283Field"

    return-object p0
.end method

.method public getFieldSize()I
    .locals 0

    const/16 p0, 0x11b

    return p0
.end method

.method public getK1()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public getK2()I
    .locals 0

    const/4 p0, 0x7

    return p0
.end method

.method public getK3()I
    .locals 0

    const/16 p0, 0xc

    return p0
.end method

.method public getM()I
    .locals 0

    const/16 p0, 0x11b

    return p0
.end method

.method public getRepresentation()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {p0, v0, v1}, Lorg/spongycastle/util/Arrays;->hashCode([JII)I

    move-result p0

    const v0, 0x2b33ab

    xor-int/2addr p0, v0

    return p0
.end method

.method public invert()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    invoke-static {}, Lorg/spongycastle/math/raw/Nat320;->create64()[J

    move-result-object v0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->invert([J[J)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;-><init>([J)V

    return-object p0
.end method

.method public isOne()Z
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat320;->isOne64([J)Z

    move-result p0

    return p0
.end method

.method public isZero()Z
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat320;->isZero64([J)Z

    move-result p0

    return p0
.end method

.method public multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    invoke-static {}, Lorg/spongycastle/math/raw/Nat320;->create64()[J

    move-result-object v0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;-><init>([J)V

    return-object p0
.end method

.method public multiplyMinusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->multiplyPlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public multiplyPlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    check-cast p2, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    iget-object p2, p2, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    check-cast p3, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    iget-object p3, p3, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    const/16 v0, 0x9

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->multiplyAddToExt([J[J[J)V

    invoke-static {p2, p3, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->multiplyAddToExt([J[J[J)V

    invoke-static {}, Lorg/spongycastle/math/raw/Nat320;->create64()[J

    move-result-object p0

    invoke-static {v0, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->reduce([J[J)V

    new-instance p1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    invoke-direct {p1, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;-><init>([J)V

    return-object p1
.end method

.method public negate()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    return-object p0
.end method

.method public sqrt()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    invoke-static {}, Lorg/spongycastle/math/raw/Nat320;->create64()[J

    move-result-object v0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->sqrt([J[J)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;-><init>([J)V

    return-object p0
.end method

.method public square()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    invoke-static {}, Lorg/spongycastle/math/raw/Nat320;->create64()[J

    move-result-object v0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->square([J[J)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;-><init>([J)V

    return-object p0
.end method

.method public squareMinusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->squarePlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public squarePlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    check-cast p2, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    iget-object p2, p2, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    const/16 v0, 0x9

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->squareAddToExt([J[J)V

    invoke-static {p1, p2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->multiplyAddToExt([J[J[J)V

    invoke-static {}, Lorg/spongycastle/math/raw/Nat320;->create64()[J

    move-result-object p0

    invoke-static {v0, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->reduce([J[J)V

    new-instance p1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    invoke-direct {p1, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;-><init>([J)V

    return-object p1
.end method

.method public squarePow(I)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lorg/spongycastle/math/raw/Nat320;->create64()[J

    move-result-object v0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->squareN([JI[J)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;-><init>([J)V

    return-object p0
.end method

.method public subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public testBitZero()Z
    .locals 5

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat320;->toBigInteger64([J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
