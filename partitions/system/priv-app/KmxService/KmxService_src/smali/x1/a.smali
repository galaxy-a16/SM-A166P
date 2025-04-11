.class public abstract Lx1/a;
.super Lcom/fasterxml/jackson/core/f;
.source "SourceFile"


# static fields
.field public static final f:I


# instance fields
.field public final b:Lcom/fasterxml/jackson/core/j;

.field public c:I

.field public d:Z

.field public e:Lc2/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lx1/a;->f:I

    return-void
.end method

.method public constructor <init>(ILcom/fasterxml/jackson/core/j;)V
    .locals 3

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/f;-><init>()V

    iput p1, p0, Lx1/a;->c:I

    iput-object p2, p0, Lx1/a;->b:Lcom/fasterxml/jackson/core/j;

    sget-object p2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance p2, Lva/e;

    invoke-direct {p2, p0}, Lva/e;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    new-instance v1, Lc2/d;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, p2}, Lc2/d;-><init>(ILc2/d;Lva/e;)V

    iput-object v1, p0, Lx1/a;->e:Lc2/d;

    sget-object p2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    move-result p1

    iput-boolean p1, p0, Lx1/a;->d:Z

    return-void
.end method


# virtual methods
.method public final J(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lx1/a;->e:Lc2/d;

    if-eqz p0, :cond_0

    iput-object p1, p0, Lc2/d;->g:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public O0(Lcom/fasterxml/jackson/core/l;)V
    .locals 1

    const-string v0, "write raw value"

    invoke-virtual {p0, v0}, Lx1/a;->f1(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/f;->L0(Lcom/fasterxml/jackson/core/l;)V

    return-void
.end method

.method public final P0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "write raw value"

    invoke-virtual {p0, v0}, Lx1/a;->f1(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/f;->M0(Ljava/lang/String;)V

    return-void
.end method

.method public V0(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lx1/a;->U0(Ljava/lang/Object;)V

    return-void
.end method

.method public final c1(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    iget v1, p0, Lx1/a;->c:I

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    const/16 v1, -0x270f

    const/16 v2, 0x270f

    if-lt v0, v1, :cond_0

    if-gt v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    const/4 v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "Attempt to write plain `java.math.BigDecimal` (see JsonGenerator.Feature.WRITE_BIGDECIMAL_AS_PLAIN) with illegal scale (%d): needs to be between [-%d, %d]"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/f;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final d1([BII)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length p1, p1

    add-int v1, p2, p3

    or-int v2, p2, p3

    or-int/2addr v2, v1

    sub-int v1, p1, v1

    or-int/2addr v1, v2

    if-ltz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p2

    const/4 p2, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p2

    const-string p1, "Invalid \'offset\' (%d) and/or \'len\' (%d) arguments for `byte[]` of length %d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/f;->a(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "Invalid `byte[]` argument: `null`"

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/f;->a(Ljava/lang/String;)V

    throw v0
.end method

.method public final e1([CI)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length p1, p1

    const/4 v1, 0x0

    add-int v2, v1, p2

    or-int v3, v1, p2

    or-int/2addr v3, v2

    sub-int v2, p1, v2

    or-int/2addr v2, v3

    if-ltz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    const/4 p2, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p2

    const-string p1, "Invalid \'offset\' (%d) and/or \'len\' (%d) arguments for `char[]` of length %d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/f;->a(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "Invalid `char[]` argument: `null`"

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/f;->a(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract f1(Ljava/lang/String;)V
.end method

.method public final writeObject(Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/f;->A0()V

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lx1/a;->b:Lcom/fasterxml/jackson/core/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/core/j;->writeValue(Lcom/fasterxml/jackson/core/f;Ljava/lang/Object;)V

    return-void

    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/f;->Y0(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_2
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    goto :goto_1

    :cond_3
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_2

    :cond_4
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/f;->B0(D)V

    goto/16 :goto_4

    :cond_5
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/f;->C0(F)V

    goto/16 :goto_4

    :cond_6
    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result p1

    goto :goto_0

    :cond_7
    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result p1

    int-to-short p1, p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/f;->I0(S)V

    goto :goto_4

    :cond_8
    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/f;->H0(Ljava/math/BigInteger;)V

    goto :goto_4

    :cond_9
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_a

    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/f;->G0(Ljava/math/BigDecimal;)V

    goto :goto_4

    :cond_a
    instance-of v1, v0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v1, :cond_b

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/f;->D0(I)V

    goto :goto_4

    :cond_b
    instance-of v1, v0, Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/f;->E0(J)V

    goto :goto_4

    :cond_c
    instance-of v0, p1, [B

    if-eqz v0, :cond_d

    check-cast p1, [B

    sget-object v0, Lcom/fasterxml/jackson/core/a;->b:Lcom/fasterxml/jackson/core/Base64Variant;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/fasterxml/jackson/core/f;->O(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V

    goto :goto_4

    :cond_d
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_3

    :cond_e
    instance-of v0, p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_f

    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    :goto_3
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/f;->b0(Z)V

    :goto_4
    return-void

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No ObjectCodec defined for the generator, can only serialize simple wrapper types (type passed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final x()Lc2/d;
    .locals 0

    iget-object p0, p0, Lx1/a;->e:Lc2/d;

    return-object p0
.end method

.method public final y(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z
    .locals 0

    iget p0, p0, Lx1/a;->c:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final z(II)Lcom/fasterxml/jackson/core/f;
    .locals 3

    iget v0, p0, Lx1/a;->c:I

    not-int v1, p2

    and-int/2addr v1, v0

    and-int/2addr p1, p2

    or-int/2addr p1, v1

    xor-int p2, v0, p1

    if-eqz p2, :cond_6

    iput p1, p0, Lx1/a;->c:I

    move-object v0, p0

    check-cast v0, Lc2/b;

    sget v1, Lx1/a;->f:I

    and-int/2addr v1, p2

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    move-result v1

    iput-boolean v1, v0, Lx1/a;->d:Z

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/16 v1, 0x7f

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-gez v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    iput v2, v0, Lc2/b;->i:I

    :cond_3
    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, v0, Lx1/a;->e:Lc2/d;

    iget-object v1, p2, Lc2/d;->d:Lva/e;

    if-nez v1, :cond_5

    new-instance v1, Lva/e;

    invoke-direct {v1, v0}, Lva/e;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object p2, v0, Lx1/a;->e:Lc2/d;

    const/4 v1, 0x0

    :goto_2
    iput-object v1, p2, Lc2/d;->d:Lva/e;

    iput-object p2, v0, Lx1/a;->e:Lc2/d;

    :cond_5
    :goto_3
    sget-object p2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, v0, Lc2/b;->l:Z

    sget-object p2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_HEX_UPPER_CASE:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    move-result p1

    iput-boolean p1, v0, Lc2/b;->m:Z

    :cond_6
    return-object p0
.end method
