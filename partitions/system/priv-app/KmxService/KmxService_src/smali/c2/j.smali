.class public final Lc2/j;
.super Lc2/b;
.source "SourceFile"


# static fields
.field public static final A:[C

.field public static final z:[C


# instance fields
.field public final p:Ljava/io/Writer;

.field public final q:C

.field public t:[C

.field public u:I

.field public v:I

.field public final w:I

.field public x:[C

.field public y:Lcom/fasterxml/jackson/core/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/b;->d(Z)[C

    move-result-object v0

    sput-object v0, Lc2/j;->z:[C

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/b;->d(Z)[C

    move-result-object v0

    sput-object v0, Lc2/j;->A:[C

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/d;ILcom/fasterxml/jackson/core/j;Ljava/io/Writer;C)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lc2/b;-><init>(Lcom/fasterxml/jackson/core/io/d;ILcom/fasterxml/jackson/core/j;)V

    iput-object p4, p0, Lc2/j;->p:Ljava/io/Writer;

    iget-object p2, p1, Lcom/fasterxml/jackson/core/io/d;->j:[C

    invoke-static {p2}, Lcom/fasterxml/jackson/core/io/d;->a(Ljava/lang/Object;)V

    const/4 p2, 0x1

    const/4 p3, 0x0

    iget-object p4, p1, Lcom/fasterxml/jackson/core/io/d;->e:Lcom/fasterxml/jackson/core/util/a;

    invoke-virtual {p4, p2, p3}, Lcom/fasterxml/jackson/core/util/a;->b(II)[C

    move-result-object p2

    iput-object p2, p1, Lcom/fasterxml/jackson/core/io/d;->j:[C

    iput-object p2, p0, Lc2/j;->t:[C

    array-length p1, p2

    iput p1, p0, Lc2/j;->w:I

    iput-char p5, p0, Lc2/j;->q:C

    const/16 p1, 0x22

    if-eq p5, p1, :cond_0

    invoke-static {p5}, Lcom/fasterxml/jackson/core/io/b;->e(I)[I

    move-result-object p1

    iput-object p1, p0, Lc2/b;->h:[I

    :cond_0
    return-void
.end method


# virtual methods
.method public final A0()V
    .locals 1

    const-string v0, "write a null"

    invoke-virtual {p0, v0}, Lc2/j;->f1(Ljava/lang/String;)V

    invoke-virtual {p0}, Lc2/j;->q1()V

    return-void
.end method

.method public final B0(D)V
    .locals 1

    iget-boolean v0, p0, Lx1/a;->d:Z

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Lcom/fasterxml/jackson/core/io/h;->g(D)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lx1/a;->y(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Lc2/j;->f1(Ljava/lang/String;)V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->USE_FAST_DOUBLE_WRITER:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lx1/a;->y(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/fasterxml/jackson/core/io/h;->l(DZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc2/j;->M0(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->USE_FAST_DOUBLE_WRITER:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lx1/a;->y(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/fasterxml/jackson/core/io/h;->l(DZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc2/j;->Y0(Ljava/lang/String;)V

    return-void
.end method

.method public final C0(F)V
    .locals 1

    iget-boolean v0, p0, Lx1/a;->d:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/fasterxml/jackson/core/io/h;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lx1/a;->y(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Lc2/j;->f1(Ljava/lang/String;)V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->USE_FAST_DOUBLE_WRITER:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lx1/a;->y(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/core/io/h;->m(FZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc2/j;->M0(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->USE_FAST_DOUBLE_WRITER:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lx1/a;->y(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/core/io/h;->m(FZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc2/j;->Y0(Ljava/lang/String;)V

    return-void
.end method

.method public final D0(I)V
    .locals 4

    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Lc2/j;->f1(Ljava/lang/String;)V

    iget-boolean v0, p0, Lx1/a;->d:Z

    iget v1, p0, Lc2/j;->w:I

    if-eqz v0, :cond_1

    iget v0, p0, Lc2/j;->v:I

    add-int/lit8 v0, v0, 0xd

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_0
    iget-object v0, p0, Lc2/j;->t:[C

    iget v1, p0, Lc2/j;->v:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc2/j;->v:I

    iget-char v3, p0, Lc2/j;->q:C

    aput-char v3, v0, v1

    invoke-static {p1, v0, v2}, Lcom/fasterxml/jackson/core/io/h;->i(I[CI)I

    move-result p1

    iget-object v0, p0, Lc2/j;->t:[C

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lc2/j;->v:I

    aput-char v3, v0, p1

    return-void

    :cond_1
    iget v0, p0, Lc2/j;->v:I

    add-int/lit8 v0, v0, 0xb

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_2
    iget-object v0, p0, Lc2/j;->t:[C

    iget v1, p0, Lc2/j;->v:I

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/core/io/h;->i(I[CI)I

    move-result p1

    iput p1, p0, Lc2/j;->v:I

    return-void
.end method

.method public final E0(J)V
    .locals 4

    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Lc2/j;->f1(Ljava/lang/String;)V

    iget-boolean v0, p0, Lx1/a;->d:Z

    iget v1, p0, Lc2/j;->w:I

    if-eqz v0, :cond_1

    iget v0, p0, Lc2/j;->v:I

    add-int/lit8 v0, v0, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_0
    iget-object v0, p0, Lc2/j;->t:[C

    iget v1, p0, Lc2/j;->v:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc2/j;->v:I

    iget-char v3, p0, Lc2/j;->q:C

    aput-char v3, v0, v1

    invoke-static {p1, p2, v0, v2}, Lcom/fasterxml/jackson/core/io/h;->k(J[CI)I

    move-result p1

    iget-object p2, p0, Lc2/j;->t:[C

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lc2/j;->v:I

    aput-char v3, p2, p1

    return-void

    :cond_1
    iget v0, p0, Lc2/j;->v:I

    add-int/lit8 v0, v0, 0x15

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_2
    iget-object v0, p0, Lc2/j;->t:[C

    iget v1, p0, Lc2/j;->v:I

    invoke-static {p1, p2, v0, v1}, Lcom/fasterxml/jackson/core/io/h;->k(J[CI)I

    move-result p1

    iput p1, p0, Lc2/j;->v:I

    return-void
.end method

.method public final F0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Lc2/j;->f1(Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lc2/j;->q1()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lx1/a;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lc2/j;->r1(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lc2/j;->M0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final G0(Ljava/math/BigDecimal;)V
    .locals 1

    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Lc2/j;->f1(Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lc2/j;->q1()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lx1/a;->d:Z

    invoke-virtual {p0, p1}, Lx1/a;->c1(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lc2/j;->r1(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lc2/j;->M0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final H0(Ljava/math/BigInteger;)V
    .locals 1

    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Lc2/j;->f1(Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lc2/j;->q1()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lx1/a;->d:Z

    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lc2/j;->r1(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lc2/j;->M0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final I0(S)V
    .locals 4

    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Lc2/j;->f1(Ljava/lang/String;)V

    iget-boolean v0, p0, Lx1/a;->d:Z

    iget v1, p0, Lc2/j;->w:I

    if-eqz v0, :cond_1

    iget v0, p0, Lc2/j;->v:I

    add-int/lit8 v0, v0, 0x8

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_0
    iget-object v0, p0, Lc2/j;->t:[C

    iget v1, p0, Lc2/j;->v:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc2/j;->v:I

    iget-char v3, p0, Lc2/j;->q:C

    aput-char v3, v0, v1

    invoke-static {p1, v0, v2}, Lcom/fasterxml/jackson/core/io/h;->i(I[CI)I

    move-result p1

    iget-object v0, p0, Lc2/j;->t:[C

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lc2/j;->v:I

    aput-char v3, v0, p1

    return-void

    :cond_1
    iget v0, p0, Lc2/j;->v:I

    add-int/lit8 v0, v0, 0x6

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_2
    iget-object v0, p0, Lc2/j;->t:[C

    iget v1, p0, Lc2/j;->v:I

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/core/io/h;->i(I[CI)I

    move-result p1

    iput p1, p0, Lc2/j;->v:I

    return-void
.end method

.method public final K0(C)V
    .locals 3

    iget v0, p0, Lc2/j;->v:I

    iget v1, p0, Lc2/j;->w:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_0
    iget-object v0, p0, Lc2/j;->t:[C

    iget v1, p0, Lc2/j;->v:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc2/j;->v:I

    aput-char p1, v0, v1

    return-void
.end method

.method public final L0(Lcom/fasterxml/jackson/core/l;)V
    .locals 2

    iget-object v0, p0, Lc2/j;->t:[C

    iget v1, p0, Lc2/j;->v:I

    invoke-interface {p1, v0, v1}, Lcom/fasterxml/jackson/core/l;->appendUnquoted([CI)I

    move-result v0

    if-gez v0, :cond_0

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/l;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc2/j;->M0(Ljava/lang/String;)V

    return-void

    :cond_0
    iget p1, p0, Lc2/j;->v:I

    add-int/2addr p1, v0

    iput p1, p0, Lc2/j;->v:I

    return-void
.end method

.method public final M0(Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lc2/j;->v:I

    iget v2, p0, Lc2/j;->w:I

    sub-int v1, v2, v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lc2/j;->k1()V

    iget v1, p0, Lc2/j;->v:I

    sub-int v1, v2, v1

    :cond_0
    const/4 v3, 0x0

    if-lt v1, v0, :cond_1

    iget-object v1, p0, Lc2/j;->t:[C

    iget v2, p0, Lc2/j;->v:I

    invoke-virtual {p1, v3, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    iget p1, p0, Lc2/j;->v:I

    add-int/2addr p1, v0

    iput p1, p0, Lc2/j;->v:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lc2/j;->v:I

    sub-int v1, v2, v0

    iget-object v4, p0, Lc2/j;->t:[C

    invoke-virtual {p1, v3, v1, v4, v0}, Ljava/lang/String;->getChars(II[CI)V

    iget v0, p0, Lc2/j;->v:I

    add-int/2addr v0, v1

    iput v0, p0, Lc2/j;->v:I

    invoke-virtual {p0}, Lc2/j;->k1()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-le v0, v2, :cond_2

    add-int v4, v1, v2

    iget-object v5, p0, Lc2/j;->t:[C

    invoke-virtual {p1, v1, v4, v5, v3}, Ljava/lang/String;->getChars(II[CI)V

    iput v3, p0, Lc2/j;->u:I

    iput v2, p0, Lc2/j;->v:I

    invoke-virtual {p0}, Lc2/j;->k1()V

    sub-int/2addr v0, v2

    move v1, v4

    goto :goto_0

    :cond_2
    add-int v2, v1, v0

    iget-object v4, p0, Lc2/j;->t:[C

    invoke-virtual {p1, v1, v2, v4, v3}, Ljava/lang/String;->getChars(II[CI)V

    iput v3, p0, Lc2/j;->u:I

    iput v0, p0, Lc2/j;->v:I

    :goto_1
    return-void
.end method

.method public final N(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;I)I
    .locals 5

    const-string v0, "Too few bytes available: missing "

    const-string v1, "write a binary value"

    invoke-virtual {p0, v1}, Lc2/j;->f1(Ljava/lang/String;)V

    iget v1, p0, Lc2/j;->v:I

    iget v2, p0, Lc2/j;->w:I

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_0
    iget-object v1, p0, Lc2/j;->t:[C

    iget v3, p0, Lc2/j;->v:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lc2/j;->v:I

    iget-char v4, p0, Lc2/j;->q:C

    aput-char v4, v1, v3

    iget-object v1, p0, Lc2/b;->g:Lcom/fasterxml/jackson/core/io/d;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/io/d;->b()[B

    move-result-object v3

    if-gez p3, :cond_1

    :try_start_0
    invoke-virtual {p0, p1, p2, v3}, Lc2/j;->o1(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;[B)I

    move-result p3

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, v3, p3}, Lc2/j;->p1(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;[BI)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz p1, :cond_3

    :goto_0
    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/core/io/d;->d([B)V

    iget p1, p0, Lc2/j;->v:I

    if-lt p1, v2, :cond_2

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_2
    iget-object p1, p0, Lc2/j;->t:[C

    iget p2, p0, Lc2/j;->v:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lc2/j;->v:I

    aput-char v4, p1, p2

    return p3

    :cond_3
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes (out of "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/f;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/core/io/d;->d([B)V

    throw p0
.end method

.method public final N0([CI)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Lx1/a;->e1([CI)V

    const/16 v0, 0x20

    const/4 v1, 0x0

    if-ge p2, v0, :cond_1

    iget v0, p0, Lc2/j;->w:I

    iget v2, p0, Lc2/j;->v:I

    sub-int/2addr v0, v2

    if-le p2, v0, :cond_0

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_0
    iget-object v0, p0, Lc2/j;->t:[C

    iget v2, p0, Lc2/j;->v:I

    invoke-static {p1, v1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lc2/j;->v:I

    add-int/2addr p1, p2

    iput p1, p0, Lc2/j;->v:I

    return-void

    :cond_1
    invoke-virtual {p0}, Lc2/j;->k1()V

    iget-object p0, p0, Lc2/j;->p:Ljava/io/Writer;

    invoke-virtual {p0, p1, v1, p2}, Ljava/io/Writer;->write([CII)V

    return-void
.end method

.method public final O(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V
    .locals 9

    invoke-virtual {p0, p2, p3, p4}, Lx1/a;->d1([BII)V

    const-string v0, "write a binary value"

    invoke-virtual {p0, v0}, Lc2/j;->f1(Ljava/lang/String;)V

    iget v0, p0, Lc2/j;->v:I

    iget v1, p0, Lc2/j;->w:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_0
    iget-object v0, p0, Lc2/j;->t:[C

    iget v2, p0, Lc2/j;->v:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lc2/j;->v:I

    iget-char v3, p0, Lc2/j;->q:C

    aput-char v3, v0, v2

    add-int/2addr p4, p3

    add-int/lit8 v0, p4, -0x3

    add-int/lit8 v2, v1, -0x6

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v4

    const/4 v5, 0x2

    shr-int/2addr v4, v5

    :goto_0
    if-gt p3, v0, :cond_3

    iget v6, p0, Lc2/j;->v:I

    if-le v6, v2, :cond_1

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_1
    add-int/lit8 v6, p3, 0x1

    aget-byte p3, p2, p3

    shl-int/lit8 p3, p3, 0x8

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr p3, v6

    shl-int/lit8 p3, p3, 0x8

    add-int/lit8 v6, v7, 0x1

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr p3, v7

    iget-object v7, p0, Lc2/j;->t:[C

    iget v8, p0, Lc2/j;->v:I

    invoke-virtual {p1, p3, v7, v8}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Chunk(I[CI)I

    move-result p3

    iput p3, p0, Lc2/j;->v:I

    add-int/lit8 v4, v4, -0x1

    if-gtz v4, :cond_2

    iget-object v4, p0, Lc2/j;->t:[C

    add-int/lit8 v7, p3, 0x1

    const/16 v8, 0x5c

    aput-char v8, v4, p3

    add-int/lit8 p3, v7, 0x1

    iput p3, p0, Lc2/j;->v:I

    const/16 p3, 0x6e

    aput-char p3, v4, v7

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result p3

    shr-int/2addr p3, v5

    move v4, p3

    :cond_2
    move p3, v6

    goto :goto_0

    :cond_3
    sub-int/2addr p4, p3

    if-lez p4, :cond_6

    iget v0, p0, Lc2/j;->v:I

    if-le v0, v2, :cond_4

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_4
    add-int/lit8 v0, p3, 0x1

    aget-byte p3, p2, p3

    shl-int/lit8 p3, p3, 0x10

    if-ne p4, v5, :cond_5

    aget-byte p2, p2, v0

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p3, p2

    :cond_5
    iget-object p2, p0, Lc2/j;->t:[C

    iget v0, p0, Lc2/j;->v:I

    invoke-virtual {p1, p3, p4, p2, v0}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Partial(II[CI)I

    move-result p1

    iput p1, p0, Lc2/j;->v:I

    :cond_6
    iget p1, p0, Lc2/j;->v:I

    if-lt p1, v1, :cond_7

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_7
    iget-object p1, p0, Lc2/j;->t:[C

    iget p2, p0, Lc2/j;->v:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lc2/j;->v:I

    aput-char v3, p1, p2

    return-void
.end method

.method public final Q0()V
    .locals 3

    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lc2/j;->f1(Ljava/lang/String;)V

    iget-object v0, p0, Lx1/a;->e:Lc2/d;

    invoke-virtual {v0}, Lc2/d;->j()Lc2/d;

    move-result-object v0

    iput-object v0, p0, Lx1/a;->e:Lc2/d;

    iget-object v0, p0, Lcom/fasterxml/jackson/core/f;->a:Lcom/fasterxml/jackson/core/k;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/k;->writeStartArray(Lcom/fasterxml/jackson/core/f;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lc2/j;->v:I

    iget v1, p0, Lc2/j;->w:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_1
    iget-object v0, p0, Lc2/j;->t:[C

    iget v1, p0, Lc2/j;->v:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc2/j;->v:I

    const/16 p0, 0x5b

    aput-char p0, v0, v1

    :goto_0
    return-void
.end method

.method public final R0(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lc2/j;->f1(Ljava/lang/String;)V

    iget-object v0, p0, Lx1/a;->e:Lc2/d;

    invoke-virtual {v0, p1}, Lc2/d;->k(Ljava/lang/Object;)Lc2/d;

    move-result-object p1

    iput-object p1, p0, Lx1/a;->e:Lc2/d;

    iget-object p1, p0, Lcom/fasterxml/jackson/core/f;->a:Lcom/fasterxml/jackson/core/k;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/fasterxml/jackson/core/k;->writeStartArray(Lcom/fasterxml/jackson/core/f;)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lc2/j;->v:I

    iget v0, p0, Lc2/j;->w:I

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_1
    iget-object p1, p0, Lc2/j;->t:[C

    iget v0, p0, Lc2/j;->v:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc2/j;->v:I

    const/16 p0, 0x5b

    aput-char p0, p1, v0

    :goto_0
    return-void
.end method

.method public final S0(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lc2/j;->f1(Ljava/lang/String;)V

    iget-object v0, p0, Lx1/a;->e:Lc2/d;

    invoke-virtual {v0, p1}, Lc2/d;->k(Ljava/lang/Object;)Lc2/d;

    move-result-object p1

    iput-object p1, p0, Lx1/a;->e:Lc2/d;

    iget-object p1, p0, Lcom/fasterxml/jackson/core/f;->a:Lcom/fasterxml/jackson/core/k;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/fasterxml/jackson/core/k;->writeStartArray(Lcom/fasterxml/jackson/core/f;)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lc2/j;->v:I

    iget v0, p0, Lc2/j;->w:I

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_1
    iget-object p1, p0, Lc2/j;->t:[C

    iget v0, p0, Lc2/j;->v:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc2/j;->v:I

    const/16 p0, 0x5b

    aput-char p0, p1, v0

    :goto_0
    return-void
.end method

.method public final T0()V
    .locals 3

    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Lc2/j;->f1(Ljava/lang/String;)V

    iget-object v0, p0, Lx1/a;->e:Lc2/d;

    invoke-virtual {v0}, Lc2/d;->l()Lc2/d;

    move-result-object v0

    iput-object v0, p0, Lx1/a;->e:Lc2/d;

    iget-object v0, p0, Lcom/fasterxml/jackson/core/f;->a:Lcom/fasterxml/jackson/core/k;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/k;->writeStartObject(Lcom/fasterxml/jackson/core/f;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lc2/j;->v:I

    iget v1, p0, Lc2/j;->w:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_1
    iget-object v0, p0, Lc2/j;->t:[C

    iget v1, p0, Lc2/j;->v:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc2/j;->v:I

    const/16 p0, 0x7b

    aput-char p0, v0, v1

    :goto_0
    return-void
.end method

.method public final U0(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Lc2/j;->f1(Ljava/lang/String;)V

    iget-object v0, p0, Lx1/a;->e:Lc2/d;

    invoke-virtual {v0, p1}, Lc2/d;->m(Ljava/lang/Object;)Lc2/d;

    move-result-object p1

    iput-object p1, p0, Lx1/a;->e:Lc2/d;

    iget-object p1, p0, Lcom/fasterxml/jackson/core/f;->a:Lcom/fasterxml/jackson/core/k;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/fasterxml/jackson/core/k;->writeStartObject(Lcom/fasterxml/jackson/core/f;)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lc2/j;->v:I

    iget v0, p0, Lc2/j;->w:I

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_1
    iget-object p1, p0, Lc2/j;->t:[C

    iget v0, p0, Lc2/j;->v:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc2/j;->v:I

    const/16 p0, 0x7b

    aput-char p0, p1, v0

    :goto_0
    return-void
.end method

.method public final W0(I[CI)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "write a string"

    invoke-virtual {v0, v2}, Lc2/j;->f1(Ljava/lang/String;)V

    iget v2, v0, Lc2/j;->v:I

    iget v3, v0, Lc2/j;->w:I

    if-lt v2, v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lc2/j;->k1()V

    :cond_0
    iget-object v2, v0, Lc2/j;->t:[C

    iget v4, v0, Lc2/j;->v:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Lc2/j;->v:I

    iget-char v5, v0, Lc2/j;->q:C

    aput-char v5, v2, v4

    iget-object v2, v0, Lc2/b;->j:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    const/16 v6, 0x20

    const/4 v7, 0x0

    iget-object v8, v0, Lc2/j;->p:Ljava/io/Writer;

    if-eqz v2, :cond_a

    add-int v2, p3, p1

    iget-object v9, v0, Lc2/b;->h:[I

    iget v10, v0, Lc2/b;->i:I

    const/4 v11, 0x1

    if-ge v10, v11, :cond_1

    const v10, 0xffff

    :cond_1
    array-length v11, v9

    add-int/lit8 v12, v10, 0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iget-object v12, v0, Lc2/b;->j:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    move v13, v7

    move/from16 v7, p1

    :goto_0
    if-ge v7, v2, :cond_19

    move v14, v7

    :cond_2
    aget-char v15, v1, v14

    if-ge v15, v11, :cond_3

    aget v13, v9, v15

    if-eqz v13, :cond_5

    goto :goto_1

    :cond_3
    if-le v15, v10, :cond_4

    const/4 v13, -0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v12, v15}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeSequence(I)Lcom/fasterxml/jackson/core/l;

    move-result-object v4

    iput-object v4, v0, Lc2/j;->y:Lcom/fasterxml/jackson/core/l;

    if-eqz v4, :cond_5

    const/4 v4, -0x2

    move v13, v4

    goto :goto_1

    :cond_5
    add-int/lit8 v14, v14, 0x1

    if-lt v14, v2, :cond_2

    :goto_1
    sub-int v4, v14, v7

    if-ge v4, v6, :cond_8

    iget v6, v0, Lc2/j;->v:I

    add-int/2addr v6, v4

    if-le v6, v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Lc2/j;->k1()V

    :cond_6
    if-lez v4, :cond_7

    iget-object v6, v0, Lc2/j;->t:[C

    move-object/from16 p3, v9

    iget v9, v0, Lc2/j;->v:I

    invoke-static {v1, v7, v6, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, v0, Lc2/j;->v:I

    add-int/2addr v6, v4

    iput v6, v0, Lc2/j;->v:I

    goto :goto_2

    :cond_7
    move-object/from16 p3, v9

    goto :goto_2

    :cond_8
    move-object/from16 p3, v9

    invoke-virtual/range {p0 .. p0}, Lc2/j;->k1()V

    invoke-virtual {v8, v1, v7, v4}, Ljava/io/Writer;->write([CII)V

    :goto_2
    if-lt v14, v2, :cond_9

    goto/16 :goto_9

    :cond_9
    add-int/lit8 v7, v14, 0x1

    invoke-virtual {v0, v15, v13}, Lc2/j;->j1(CI)V

    move-object/from16 v9, p3

    const/16 v6, 0x20

    goto :goto_0

    :cond_a
    iget v2, v0, Lc2/b;->i:I

    if-eqz v2, :cond_12

    add-int v4, p3, p1

    iget-object v6, v0, Lc2/b;->h:[I

    array-length v9, v6

    add-int/lit8 v10, v2, 0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v10, v7

    move/from16 v7, p1

    :goto_3
    if-ge v7, v4, :cond_19

    move v11, v7

    :cond_b
    aget-char v12, v1, v11

    if-ge v12, v9, :cond_c

    aget v10, v6, v12

    if-eqz v10, :cond_d

    goto :goto_4

    :cond_c
    if-le v12, v2, :cond_d

    const/4 v10, -0x1

    goto :goto_4

    :cond_d
    add-int/lit8 v11, v11, 0x1

    if-lt v11, v4, :cond_b

    :goto_4
    sub-int v13, v11, v7

    const/16 v14, 0x20

    if-ge v13, v14, :cond_f

    iget v14, v0, Lc2/j;->v:I

    add-int/2addr v14, v13

    if-le v14, v3, :cond_e

    invoke-virtual/range {p0 .. p0}, Lc2/j;->k1()V

    :cond_e
    if-lez v13, :cond_10

    iget-object v14, v0, Lc2/j;->t:[C

    iget v15, v0, Lc2/j;->v:I

    invoke-static {v1, v7, v14, v15, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v7, v0, Lc2/j;->v:I

    add-int/2addr v7, v13

    iput v7, v0, Lc2/j;->v:I

    goto :goto_5

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lc2/j;->k1()V

    invoke-virtual {v8, v1, v7, v13}, Ljava/io/Writer;->write([CII)V

    :cond_10
    :goto_5
    if-lt v11, v4, :cond_11

    goto :goto_9

    :cond_11
    add-int/lit8 v7, v11, 0x1

    invoke-virtual {v0, v12, v10}, Lc2/j;->j1(CI)V

    goto :goto_3

    :cond_12
    add-int v2, p3, p1

    iget-object v4, v0, Lc2/b;->h:[I

    array-length v6, v4

    move/from16 v7, p1

    :goto_6
    if-ge v7, v2, :cond_19

    move v9, v7

    :cond_13
    aget-char v10, v1, v9

    if-ge v10, v6, :cond_14

    aget v10, v4, v10

    if-eqz v10, :cond_14

    goto :goto_7

    :cond_14
    add-int/lit8 v9, v9, 0x1

    if-lt v9, v2, :cond_13

    :goto_7
    sub-int v10, v9, v7

    const/16 v11, 0x20

    if-ge v10, v11, :cond_16

    iget v12, v0, Lc2/j;->v:I

    add-int/2addr v12, v10

    if-le v12, v3, :cond_15

    invoke-virtual/range {p0 .. p0}, Lc2/j;->k1()V

    :cond_15
    if-lez v10, :cond_17

    iget-object v12, v0, Lc2/j;->t:[C

    iget v13, v0, Lc2/j;->v:I

    invoke-static {v1, v7, v12, v13, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v7, v0, Lc2/j;->v:I

    add-int/2addr v7, v10

    iput v7, v0, Lc2/j;->v:I

    goto :goto_8

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lc2/j;->k1()V

    invoke-virtual {v8, v1, v7, v10}, Ljava/io/Writer;->write([CII)V

    :cond_17
    :goto_8
    if-lt v9, v2, :cond_18

    goto :goto_9

    :cond_18
    add-int/lit8 v7, v9, 0x1

    aget-char v9, v1, v9

    aget v10, v4, v9

    invoke-virtual {v0, v9, v10}, Lc2/j;->j1(CI)V

    goto :goto_6

    :cond_19
    :goto_9
    iget v1, v0, Lc2/j;->v:I

    if-lt v1, v3, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lc2/j;->k1()V

    :cond_1a
    iget-object v1, v0, Lc2/j;->t:[C

    iget v2, v0, Lc2/j;->v:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lc2/j;->v:I

    aput-char v5, v1, v2

    return-void
.end method

.method public final X0(Lcom/fasterxml/jackson/core/l;)V
    .locals 6

    const-string v0, "write a string"

    invoke-virtual {p0, v0}, Lc2/j;->f1(Ljava/lang/String;)V

    iget v0, p0, Lc2/j;->v:I

    iget v1, p0, Lc2/j;->w:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_0
    iget-object v0, p0, Lc2/j;->t:[C

    iget v2, p0, Lc2/j;->v:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lc2/j;->v:I

    iget-char v4, p0, Lc2/j;->q:C

    aput-char v4, v0, v2

    invoke-interface {p1, v0, v3}, Lcom/fasterxml/jackson/core/l;->appendQuoted([CI)I

    move-result v0

    if-gez v0, :cond_4

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/l;->asQuotedChars()[C

    move-result-object p1

    array-length v0, p1

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-ge v0, v2, :cond_2

    iget v2, p0, Lc2/j;->v:I

    sub-int v2, v1, v2

    if-le v0, v2, :cond_1

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_1
    iget-object v2, p0, Lc2/j;->t:[C

    iget v5, p0, Lc2/j;->v:I

    invoke-static {p1, v3, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lc2/j;->v:I

    add-int/2addr p1, v0

    iput p1, p0, Lc2/j;->v:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lc2/j;->k1()V

    iget-object v2, p0, Lc2/j;->p:Ljava/io/Writer;

    invoke-virtual {v2, p1, v3, v0}, Ljava/io/Writer;->write([CII)V

    :goto_0
    iget p1, p0, Lc2/j;->v:I

    if-lt p1, v1, :cond_3

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_3
    iget-object p1, p0, Lc2/j;->t:[C

    iget v0, p0, Lc2/j;->v:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc2/j;->v:I

    aput-char v4, p1, v0

    return-void

    :cond_4
    iget p1, p0, Lc2/j;->v:I

    add-int/2addr p1, v0

    iput p1, p0, Lc2/j;->v:I

    if-lt p1, v1, :cond_5

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_5
    iget-object p1, p0, Lc2/j;->t:[C

    iget v0, p0, Lc2/j;->v:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc2/j;->v:I

    aput-char v4, p1, v0

    return-void
.end method

.method public final Y0(Ljava/lang/String;)V
    .locals 4

    const-string v0, "write a string"

    invoke-virtual {p0, v0}, Lc2/j;->f1(Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lc2/j;->q1()V

    return-void

    :cond_0
    iget v0, p0, Lc2/j;->v:I

    iget v1, p0, Lc2/j;->w:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_1
    iget-object v0, p0, Lc2/j;->t:[C

    iget v2, p0, Lc2/j;->v:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lc2/j;->v:I

    iget-char v3, p0, Lc2/j;->q:C

    aput-char v3, v0, v2

    invoke-virtual {p0, p1}, Lc2/j;->s1(Ljava/lang/String;)V

    iget p1, p0, Lc2/j;->v:I

    if-lt p1, v1, :cond_2

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_2
    iget-object p1, p0, Lc2/j;->t:[C

    iget v0, p0, Lc2/j;->v:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc2/j;->v:I

    aput-char v3, p1, v0

    return-void
.end method

.method public final b0(Z)V
    .locals 3

    const-string v0, "write a boolean value"

    invoke-virtual {p0, v0}, Lc2/j;->f1(Ljava/lang/String;)V

    iget v0, p0, Lc2/j;->v:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lc2/j;->w:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_0
    iget v0, p0, Lc2/j;->v:I

    iget-object v1, p0, Lc2/j;->t:[C

    const/16 v2, 0x65

    if-eqz p1, :cond_1

    const/16 p1, 0x74

    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 p1, 0x72

    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 p1, 0x75

    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    aput-char v2, v1, v0

    goto :goto_0

    :cond_1
    const/16 p1, 0x66

    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 p1, 0x61

    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 p1, 0x6c

    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 p1, 0x73

    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    aput-char v2, v1, v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc2/j;->v:I

    return-void
.end method

.method public final close()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lc2/j;->t:[C

    if-eqz v1, :cond_1

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lx1/a;->y(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    iget-object v1, p0, Lx1/a;->e:Lc2/d;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/i;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lc2/j;->w0()V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/i;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lc2/j;->x0()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lc2/j;->k1()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    const/4 v2, 0x0

    iput v2, p0, Lc2/j;->u:I

    iput v2, p0, Lc2/j;->v:I

    iget-object v2, p0, Lc2/b;->g:Lcom/fasterxml/jackson/core/io/d;

    iget-object v3, p0, Lc2/j;->p:Ljava/io/Writer;

    if-eqz v3, :cond_5

    :try_start_1
    iget-boolean v4, v2, Lcom/fasterxml/jackson/core/io/d;->d:Z

    if-nez v4, :cond_3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v4}, Lx1/a;->y(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    sget-object v4, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v4}, Lx1/a;->y(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Ljava/io/Writer;->flush()V

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    if-eqz v1, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    throw p0

    :cond_5
    :goto_3
    iget-object v3, p0, Lc2/j;->t:[C

    if-eqz v3, :cond_8

    iput-object v0, p0, Lc2/j;->t:[C

    iget-object p0, v2, Lcom/fasterxml/jackson/core/io/d;->j:[C

    if-eq v3, p0, :cond_7

    array-length v4, v3

    array-length p0, p0

    if-lt v4, p0, :cond_6

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to release buffer smaller than original"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_4
    iput-object v0, v2, Lcom/fasterxml/jackson/core/io/d;->j:[C

    iget-object p0, v2, Lcom/fasterxml/jackson/core/io/d;->e:Lcom/fasterxml/jackson/core/util/a;

    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/a;->b:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :cond_8
    if-nez v1, :cond_9

    return-void

    :cond_9
    throw v1
.end method

.method public final f1(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lx1/a;->e:Lc2/d;

    invoke-virtual {v0}, Lc2/d;->o()I

    move-result v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/f;->a:Lcom/fasterxml/jackson/core/k;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, p1}, Lc2/b;->h1(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lc2/b;->g1(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    iget-object p1, p0, Lc2/b;->k:Lcom/fasterxml/jackson/core/l;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/l;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc2/j;->M0(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    const/16 p1, 0x3a

    goto :goto_0

    :cond_5
    const/16 p1, 0x2c

    :goto_0
    iget v0, p0, Lc2/j;->v:I

    iget v1, p0, Lc2/j;->w:I

    if-lt v0, v1, :cond_6

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_6
    iget-object v0, p0, Lc2/j;->t:[C

    iget v1, p0, Lc2/j;->v:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc2/j;->v:I

    aput-char p1, v0, v1

    return-void
.end method

.method public final flush()V
    .locals 2

    invoke-virtual {p0}, Lc2/j;->k1()V

    iget-object v0, p0, Lc2/j;->p:Ljava/io/Writer;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lx1/a;->y(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    :cond_0
    return-void
.end method

.method public final i1()[C
    .locals 5

    const/16 v0, 0xe

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    const/4 v1, 0x2

    aput-char v2, v0, v1

    const/4 v1, 0x3

    const/16 v3, 0x75

    aput-char v3, v0, v1

    const/4 v1, 0x4

    const/16 v4, 0x30

    aput-char v4, v0, v1

    const/4 v1, 0x5

    aput-char v4, v0, v1

    const/16 v1, 0x8

    aput-char v2, v0, v1

    const/16 v1, 0x9

    aput-char v3, v0, v1

    iput-object v0, p0, Lc2/j;->x:[C

    return-object v0
.end method

.method public final j1(CI)V
    .locals 5

    const/16 v0, 0x5c

    iget v1, p0, Lc2/j;->w:I

    if-ltz p2, :cond_1

    iget p1, p0, Lc2/j;->v:I

    add-int/lit8 p1, p1, 0x2

    if-le p1, v1, :cond_0

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_0
    iget-object p1, p0, Lc2/j;->t:[C

    iget v1, p0, Lc2/j;->v:I

    add-int/lit8 v2, v1, 0x1

    aput-char v0, p1, v1

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lc2/j;->v:I

    int-to-char p0, p2

    aput-char p0, p1, v2

    return-void

    :cond_1
    const/4 v2, -0x2

    if-eq p2, v2, :cond_5

    iget p2, p0, Lc2/j;->v:I

    add-int/lit8 p2, p2, 0x5

    if-lt p2, v1, :cond_2

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_2
    iget p2, p0, Lc2/j;->v:I

    iget-object v1, p0, Lc2/j;->t:[C

    iget-boolean v2, p0, Lc2/b;->m:Z

    if-eqz v2, :cond_3

    sget-object v2, Lc2/j;->z:[C

    goto :goto_0

    :cond_3
    sget-object v2, Lc2/j;->A:[C

    :goto_0
    add-int/lit8 v3, p2, 0x1

    aput-char v0, v1, p2

    add-int/lit8 p2, v3, 0x1

    const/16 v0, 0x75

    aput-char v0, v1, v3

    const/16 v0, 0xff

    if-le p1, v0, :cond_4

    shr-int/lit8 v3, p1, 0x8

    and-int/2addr v0, v3

    add-int/lit8 v3, p2, 0x1

    shr-int/lit8 v4, v0, 0x4

    aget-char v4, v2, v4

    aput-char v4, v1, p2

    add-int/lit8 p2, v3, 0x1

    and-int/lit8 v0, v0, 0xf

    aget-char v0, v2, v0

    aput-char v0, v1, v3

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, p2, 0x1

    const/16 v3, 0x30

    aput-char v3, v1, p2

    add-int/lit8 p2, v0, 0x1

    aput-char v3, v1, v0

    :goto_1
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v3, p1, 0x4

    aget-char v3, v2, v3

    aput-char v3, v1, p2

    add-int/lit8 p2, v0, 0x1

    and-int/lit8 p1, p1, 0xf

    aget-char p1, v2, p1

    aput-char p1, v1, v0

    iput p2, p0, Lc2/j;->v:I

    return-void

    :cond_5
    iget-object p2, p0, Lc2/j;->y:Lcom/fasterxml/jackson/core/l;

    if-nez p2, :cond_6

    iget-object p2, p0, Lc2/b;->j:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeSequence(I)Lcom/fasterxml/jackson/core/l;

    move-result-object p1

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/l;->getValue()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    invoke-interface {p2}, Lcom/fasterxml/jackson/core/l;->getValue()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    iput-object p2, p0, Lc2/j;->y:Lcom/fasterxml/jackson/core/l;

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    iget v0, p0, Lc2/j;->v:I

    add-int/2addr v0, p2

    if-le v0, v1, :cond_7

    invoke-virtual {p0}, Lc2/j;->k1()V

    if-le p2, v1, :cond_7

    iget-object p0, p0, Lc2/j;->p:Ljava/io/Writer;

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_7
    iget-object v0, p0, Lc2/j;->t:[C

    iget v1, p0, Lc2/j;->v:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p2, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    iget p1, p0, Lc2/j;->v:I

    add-int/2addr p1, p2

    iput p1, p0, Lc2/j;->v:I

    return-void
.end method

.method public final k1()V
    .locals 3

    iget v0, p0, Lc2/j;->v:I

    iget v1, p0, Lc2/j;->u:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v2, 0x0

    iput v2, p0, Lc2/j;->u:I

    iput v2, p0, Lc2/j;->v:I

    iget-object v2, p0, Lc2/j;->p:Ljava/io/Writer;

    iget-object p0, p0, Lc2/j;->t:[C

    invoke-virtual {v2, p0, v1, v0}, Ljava/io/Writer;->write([CII)V

    :cond_0
    return-void
.end method

.method public final l1([CIICI)I
    .locals 5

    const/16 v0, 0x5c

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lc2/j;->p:Ljava/io/Writer;

    if-ltz p5, :cond_2

    const/4 p4, 0x1

    if-le p2, p4, :cond_0

    if-ge p2, p3, :cond_0

    add-int/lit8 p2, p2, -0x2

    aput-char v0, p1, p2

    add-int/lit8 p0, p2, 0x1

    int-to-char p3, p5

    aput-char p3, p1, p0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lc2/j;->x:[C

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lc2/j;->i1()[C

    move-result-object p1

    :cond_1
    int-to-char p0, p5

    aput-char p0, p1, p4

    invoke-virtual {v3, p1, v2, v1}, Ljava/io/Writer;->write([CII)V

    :goto_0
    return p2

    :cond_2
    const/4 v4, -0x2

    if-eq p5, v4, :cond_8

    iget-boolean p5, p0, Lc2/b;->m:Z

    if-eqz p5, :cond_3

    sget-object p5, Lc2/j;->z:[C

    goto :goto_1

    :cond_3
    sget-object p5, Lc2/j;->A:[C

    :goto_1
    const/4 v2, 0x5

    const/16 v4, 0xff

    if-le p2, v2, :cond_5

    if-ge p2, p3, :cond_5

    add-int/lit8 p2, p2, -0x6

    add-int/lit8 p0, p2, 0x1

    aput-char v0, p1, p2

    add-int/lit8 p2, p0, 0x1

    const/16 p3, 0x75

    aput-char p3, p1, p0

    if-le p4, v4, :cond_4

    shr-int/lit8 p0, p4, 0x8

    and-int/2addr p0, v4

    add-int/lit8 p3, p2, 0x1

    shr-int/lit8 v0, p0, 0x4

    aget-char v0, p5, v0

    aput-char v0, p1, p2

    add-int/lit8 p2, p3, 0x1

    and-int/lit8 p0, p0, 0xf

    aget-char p0, p5, p0

    aput-char p0, p1, p3

    and-int/lit16 p0, p4, 0xff

    int-to-char p4, p0

    goto :goto_2

    :cond_4
    add-int/lit8 p0, p2, 0x1

    const/16 p3, 0x30

    aput-char p3, p1, p2

    add-int/lit8 p2, p0, 0x1

    aput-char p3, p1, p0

    :goto_2
    add-int/lit8 p0, p2, 0x1

    shr-int/lit8 p3, p4, 0x4

    aget-char p3, p5, p3

    aput-char p3, p1, p2

    and-int/lit8 p2, p4, 0xf

    aget-char p2, p5, p2

    aput-char p2, p1, p0

    add-int/lit8 p2, p0, -0x5

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lc2/j;->x:[C

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lc2/j;->i1()[C

    move-result-object p1

    :cond_6
    iget p3, p0, Lc2/j;->v:I

    iput p3, p0, Lc2/j;->u:I

    const/4 p0, 0x6

    if-le p4, v4, :cond_7

    shr-int/lit8 p3, p4, 0x8

    and-int/2addr p3, v4

    and-int/2addr p4, v4

    shr-int/lit8 v0, p3, 0x4

    aget-char v0, p5, v0

    const/16 v1, 0xa

    aput-char v0, p1, v1

    and-int/lit8 p3, p3, 0xf

    aget-char p3, p5, p3

    const/16 v0, 0xb

    aput-char p3, p1, v0

    shr-int/lit8 p3, p4, 0x4

    aget-char p3, p5, p3

    const/16 v0, 0xc

    aput-char p3, p1, v0

    and-int/lit8 p3, p4, 0xf

    aget-char p3, p5, p3

    const/16 p4, 0xd

    aput-char p3, p1, p4

    const/16 p3, 0x8

    invoke-virtual {v3, p1, p3, p0}, Ljava/io/Writer;->write([CII)V

    goto :goto_3

    :cond_7
    shr-int/lit8 p3, p4, 0x4

    aget-char p3, p5, p3

    aput-char p3, p1, p0

    and-int/lit8 p3, p4, 0xf

    aget-char p3, p5, p3

    const/4 p4, 0x7

    aput-char p3, p1, p4

    invoke-virtual {v3, p1, v1, p0}, Ljava/io/Writer;->write([CII)V

    :goto_3
    return p2

    :cond_8
    iget-object p5, p0, Lc2/j;->y:Lcom/fasterxml/jackson/core/l;

    if-nez p5, :cond_9

    iget-object p0, p0, Lc2/b;->j:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    invoke-virtual {p0, p4}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeSequence(I)Lcom/fasterxml/jackson/core/l;

    move-result-object p0

    invoke-interface {p0}, Lcom/fasterxml/jackson/core/l;->getValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_9
    invoke-interface {p5}, Lcom/fasterxml/jackson/core/l;->getValue()Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x0

    iput-object p5, p0, Lc2/j;->y:Lcom/fasterxml/jackson/core/l;

    move-object p0, p4

    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p4

    if-lt p2, p4, :cond_a

    if-ge p2, p3, :cond_a

    sub-int/2addr p2, p4

    invoke-virtual {p0, v2, p4, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_5

    :cond_a
    invoke-virtual {v3, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_5
    return p2
.end method

.method public final m1(CI)V
    .locals 7

    const/4 v0, 0x0

    const/16 v1, 0x5c

    iget-object v2, p0, Lc2/j;->p:Ljava/io/Writer;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ltz p2, :cond_2

    iget p1, p0, Lc2/j;->v:I

    if-lt p1, v3, :cond_0

    sub-int/2addr p1, v3

    iput p1, p0, Lc2/j;->u:I

    iget-object p0, p0, Lc2/j;->t:[C

    add-int/lit8 v0, p1, 0x1

    aput-char v1, p0, p1

    int-to-char p1, p2

    aput-char p1, p0, v0

    return-void

    :cond_0
    iget-object p1, p0, Lc2/j;->x:[C

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lc2/j;->i1()[C

    move-result-object p1

    :cond_1
    iget v1, p0, Lc2/j;->v:I

    iput v1, p0, Lc2/j;->u:I

    int-to-char p0, p2

    aput-char p0, p1, v4

    invoke-virtual {v2, p1, v0, v3}, Ljava/io/Writer;->write([CII)V

    return-void

    :cond_2
    const/4 v5, -0x2

    if-eq p2, v5, :cond_8

    iget-boolean p2, p0, Lc2/b;->m:Z

    if-eqz p2, :cond_3

    sget-object p2, Lc2/j;->z:[C

    goto :goto_0

    :cond_3
    sget-object p2, Lc2/j;->A:[C

    :goto_0
    iget v0, p0, Lc2/j;->v:I

    const/16 v5, 0xff

    const/4 v6, 0x6

    if-lt v0, v6, :cond_5

    iget-object v2, p0, Lc2/j;->t:[C

    sub-int/2addr v0, v6

    iput v0, p0, Lc2/j;->u:I

    aput-char v1, v2, v0

    add-int/2addr v0, v4

    const/16 p0, 0x75

    aput-char p0, v2, v0

    if-le p1, v5, :cond_4

    shr-int/lit8 p0, p1, 0x8

    and-int/2addr p0, v5

    add-int/2addr v0, v4

    shr-int/lit8 v1, p0, 0x4

    aget-char v1, p2, v1

    aput-char v1, v2, v0

    add-int/2addr v0, v4

    and-int/lit8 p0, p0, 0xf

    aget-char p0, p2, p0

    aput-char p0, v2, v0

    and-int/lit16 p0, p1, 0xff

    int-to-char p1, p0

    goto :goto_1

    :cond_4
    add-int/2addr v0, v4

    const/16 p0, 0x30

    aput-char p0, v2, v0

    add-int/2addr v0, v4

    aput-char p0, v2, v0

    :goto_1
    add-int/2addr v0, v4

    shr-int/lit8 p0, p1, 0x4

    aget-char p0, p2, p0

    aput-char p0, v2, v0

    add-int/2addr v0, v4

    and-int/lit8 p0, p1, 0xf

    aget-char p0, p2, p0

    aput-char p0, v2, v0

    return-void

    :cond_5
    iget-object v0, p0, Lc2/j;->x:[C

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lc2/j;->i1()[C

    move-result-object v0

    :cond_6
    iget v1, p0, Lc2/j;->v:I

    iput v1, p0, Lc2/j;->u:I

    if-le p1, v5, :cond_7

    shr-int/lit8 p0, p1, 0x8

    and-int/2addr p0, v5

    and-int/2addr p1, v5

    shr-int/lit8 v1, p0, 0x4

    aget-char v1, p2, v1

    const/16 v3, 0xa

    aput-char v1, v0, v3

    and-int/lit8 p0, p0, 0xf

    aget-char p0, p2, p0

    const/16 v1, 0xb

    aput-char p0, v0, v1

    shr-int/lit8 p0, p1, 0x4

    aget-char p0, p2, p0

    const/16 v1, 0xc

    aput-char p0, v0, v1

    and-int/lit8 p0, p1, 0xf

    aget-char p0, p2, p0

    const/16 p1, 0xd

    aput-char p0, v0, p1

    const/16 p0, 0x8

    invoke-virtual {v2, v0, p0, v6}, Ljava/io/Writer;->write([CII)V

    goto :goto_2

    :cond_7
    shr-int/lit8 p0, p1, 0x4

    aget-char p0, p2, p0

    aput-char p0, v0, v6

    and-int/lit8 p0, p1, 0xf

    aget-char p0, p2, p0

    const/4 p1, 0x7

    aput-char p0, v0, p1

    invoke-virtual {v2, v0, v3, v6}, Ljava/io/Writer;->write([CII)V

    :goto_2
    return-void

    :cond_8
    iget-object p2, p0, Lc2/j;->y:Lcom/fasterxml/jackson/core/l;

    if-nez p2, :cond_9

    iget-object p2, p0, Lc2/b;->j:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeSequence(I)Lcom/fasterxml/jackson/core/l;

    move-result-object p1

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/l;->getValue()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_9
    invoke-interface {p2}, Lcom/fasterxml/jackson/core/l;->getValue()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    iput-object p2, p0, Lc2/j;->y:Lcom/fasterxml/jackson/core/l;

    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    iget v1, p0, Lc2/j;->v:I

    if-lt v1, p2, :cond_a

    sub-int/2addr v1, p2

    iput v1, p0, Lc2/j;->u:I

    iget-object p0, p0, Lc2/j;->t:[C

    invoke-virtual {p1, v0, p2, p0, v1}, Ljava/lang/String;->getChars(II[CI)V

    return-void

    :cond_a
    iput v1, p0, Lc2/j;->u:I

    invoke-virtual {v2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public final n1(Ljava/io/InputStream;[BIII)I
    .locals 2

    const/4 p0, 0x0

    :goto_0
    if-ge p3, p4, :cond_0

    add-int/lit8 v0, p0, 0x1

    add-int/lit8 v1, p3, 0x1

    aget-byte p3, p2, p3

    aput-byte p3, p2, p0

    move p0, v0

    move p3, v1

    goto :goto_0

    :cond_0
    array-length p3, p2

    invoke-static {p5, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    :cond_1
    sub-int p4, p3, p0

    if-nez p4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p2, p0, p4}, Ljava/io/InputStream;->read([BII)I

    move-result p4

    if-gez p4, :cond_3

    return p0

    :cond_3
    add-int/2addr p0, p4

    const/4 p4, 0x3

    if-lt p0, p4, :cond_1

    :goto_1
    return p0
.end method

.method public final o1(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;[B)I
    .locals 12

    iget v0, p0, Lc2/j;->w:I

    add-int/lit8 v0, v0, -0x6

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v1

    const/4 v2, 0x2

    shr-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, -0x3

    move v8, v3

    move v9, v8

    move v11, v9

    :cond_0
    :goto_0
    if-le v8, v4, :cond_5

    array-length v10, p3

    move-object v5, p0

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v5 .. v10}, Lc2/j;->n1(Ljava/io/InputStream;[BIII)I

    move-result v9

    const/4 v4, 0x3

    if-ge v9, v4, :cond_4

    if-lez v9, :cond_3

    iget p2, p0, Lc2/j;->v:I

    if-le p2, v0, :cond_1

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_1
    aget-byte p2, p3, v3

    shl-int/lit8 p2, p2, 0x10

    const/4 v0, 0x1

    if-ge v0, v9, :cond_2

    aget-byte p3, p3, v0

    and-int/lit16 p3, p3, 0xff

    shl-int/lit8 p3, p3, 0x8

    or-int/2addr p2, p3

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    add-int/2addr v11, v2

    iget-object p3, p0, Lc2/j;->t:[C

    iget v0, p0, Lc2/j;->v:I

    invoke-virtual {p1, p2, v2, p3, v0}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Partial(II[CI)I

    move-result p1

    iput p1, p0, Lc2/j;->v:I

    :cond_3
    return v11

    :cond_4
    add-int/lit8 v4, v9, -0x3

    move v8, v3

    :cond_5
    iget v5, p0, Lc2/j;->v:I

    if-le v5, v0, :cond_6

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_6
    add-int/lit8 v5, v8, 0x1

    aget-byte v6, p3, v8

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v7, v5, 0x1

    aget-byte v5, p3, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v6

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v8, v7, 0x1

    aget-byte v6, p3, v7

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    add-int/lit8 v11, v11, 0x3

    iget-object v6, p0, Lc2/j;->t:[C

    iget v7, p0, Lc2/j;->v:I

    invoke-virtual {p1, v5, v6, v7}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Chunk(I[CI)I

    move-result v5

    iput v5, p0, Lc2/j;->v:I

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lc2/j;->t:[C

    add-int/lit8 v6, v5, 0x1

    const/16 v7, 0x5c

    aput-char v7, v1, v5

    add-int/lit8 v5, v6, 0x1

    iput v5, p0, Lc2/j;->v:I

    const/16 v5, 0x6e

    aput-char v5, v1, v6

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v1

    shr-int/2addr v1, v2

    goto :goto_0
.end method

.method public final p1(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;[BI)I
    .locals 11

    iget v0, p0, Lc2/j;->w:I

    add-int/lit8 v0, v0, -0x6

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v1

    const/4 v2, 0x2

    shr-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, -0x3

    move v8, v3

    move v9, v8

    :cond_0
    :goto_0
    if-le p4, v2, :cond_4

    if-le v8, v4, :cond_2

    move-object v5, p0

    move-object v6, p2

    move-object v7, p3

    move v10, p4

    invoke-virtual/range {v5 .. v10}, Lc2/j;->n1(Ljava/io/InputStream;[BIII)I

    move-result v9

    const/4 v4, 0x3

    if-ge v9, v4, :cond_1

    move v8, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v9, -0x3

    move v8, v3

    :cond_2
    iget v5, p0, Lc2/j;->v:I

    if-le v5, v0, :cond_3

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_3
    add-int/lit8 v5, v8, 0x1

    aget-byte v6, p3, v8

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v7, v5, 0x1

    aget-byte v5, p3, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v6

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v8, v7, 0x1

    aget-byte v6, p3, v7

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    add-int/lit8 p4, p4, -0x3

    iget-object v6, p0, Lc2/j;->t:[C

    iget v7, p0, Lc2/j;->v:I

    invoke-virtual {p1, v5, v6, v7}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Chunk(I[CI)I

    move-result v5

    iput v5, p0, Lc2/j;->v:I

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lc2/j;->t:[C

    add-int/lit8 v6, v5, 0x1

    const/16 v7, 0x5c

    aput-char v7, v1, v5

    add-int/lit8 v5, v6, 0x1

    iput v5, p0, Lc2/j;->v:I

    const/16 v5, 0x6e

    aput-char v5, v1, v6

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v1

    shr-int/2addr v1, v2

    goto :goto_0

    :cond_4
    :goto_1
    if-lez p4, :cond_7

    move-object v5, p0

    move-object v6, p2

    move-object v7, p3

    move v10, p4

    invoke-virtual/range {v5 .. v10}, Lc2/j;->n1(Ljava/io/InputStream;[BIII)I

    move-result p2

    if-lez p2, :cond_7

    iget v1, p0, Lc2/j;->v:I

    if-le v1, v0, :cond_5

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_5
    aget-byte v0, p3, v3

    shl-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    if-ge v1, p2, :cond_6

    aget-byte p2, p3, v1

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr v0, p2

    goto :goto_2

    :cond_6
    move v2, v1

    :goto_2
    iget-object p2, p0, Lc2/j;->t:[C

    iget p3, p0, Lc2/j;->v:I

    invoke-virtual {p1, v0, v2, p2, p3}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Partial(II[CI)I

    move-result p1

    iput p1, p0, Lc2/j;->v:I

    sub-int/2addr p4, v2

    :cond_7
    return p4
.end method

.method public final q1()V
    .locals 3

    iget v0, p0, Lc2/j;->v:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lc2/j;->w:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_0
    iget v0, p0, Lc2/j;->v:I

    iget-object v1, p0, Lc2/j;->t:[C

    const/16 v2, 0x6e

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x75

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x6c

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc2/j;->v:I

    return-void
.end method

.method public final r1(Ljava/lang/String;)V
    .locals 4

    iget v0, p0, Lc2/j;->v:I

    iget v1, p0, Lc2/j;->w:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_0
    iget-object v0, p0, Lc2/j;->t:[C

    iget v2, p0, Lc2/j;->v:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lc2/j;->v:I

    iget-char v3, p0, Lc2/j;->q:C

    aput-char v3, v0, v2

    invoke-virtual {p0, p1}, Lc2/j;->M0(Ljava/lang/String;)V

    iget p1, p0, Lc2/j;->v:I

    if-lt p1, v1, :cond_1

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_1
    iget-object p1, p0, Lc2/j;->t:[C

    iget v0, p0, Lc2/j;->v:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc2/j;->v:I

    aput-char v3, p1, v0

    return-void
.end method

.method public final s1(Ljava/lang/String;)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v11, v6, Lc2/j;->p:Ljava/io/Writer;

    const/4 v12, 0x0

    const/4 v13, 0x1

    iget v14, v6, Lc2/j;->w:I

    if-le v0, v14, :cond_14

    invoke-virtual/range {p0 .. p0}, Lc2/j;->k1()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    move v0, v12

    :goto_0
    add-int v1, v0, v14

    if-le v1, v15, :cond_0

    sub-int v1, v15, v0

    move v5, v1

    goto :goto_1

    :cond_0
    move v5, v14

    :goto_1
    add-int v4, v0, v5

    iget-object v1, v6, Lc2/j;->t:[C

    invoke-virtual {v7, v0, v4, v1, v12}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v0, v6, Lc2/b;->j:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    if-eqz v0, :cond_8

    iget-object v3, v6, Lc2/b;->h:[I

    iget v0, v6, Lc2/b;->i:I

    if-ge v0, v13, :cond_1

    const v2, 0xffff

    goto :goto_2

    :cond_1
    move v2, v0

    :goto_2
    array-length v0, v3

    add-int/lit8 v1, v2, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v0, v6, Lc2/b;->j:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    move v8, v12

    move v9, v8

    move/from16 v16, v9

    :goto_3
    if-ge v8, v5, :cond_7

    :goto_4
    iget-object v10, v6, Lc2/j;->t:[C

    aget-char v10, v10, v8

    if-ge v10, v1, :cond_2

    aget v16, v3, v10

    if-eqz v16, :cond_4

    goto :goto_5

    :cond_2
    if-le v10, v2, :cond_3

    const/16 v16, -0x1

    goto :goto_5

    :cond_3
    invoke-virtual {v0, v10}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeSequence(I)Lcom/fasterxml/jackson/core/l;

    move-result-object v13

    iput-object v13, v6, Lc2/j;->y:Lcom/fasterxml/jackson/core/l;

    if-eqz v13, :cond_4

    const/16 v16, -0x2

    goto :goto_5

    :cond_4
    add-int/lit8 v8, v8, 0x1

    if-lt v8, v5, :cond_6

    :goto_5
    sub-int v13, v8, v9

    if-lez v13, :cond_5

    iget-object v12, v6, Lc2/j;->t:[C

    invoke-virtual {v11, v12, v9, v13}, Ljava/io/Writer;->write([CII)V

    if-lt v8, v5, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v8, v8, 0x1

    iget-object v9, v6, Lc2/j;->t:[C

    move-object v12, v0

    move-object/from16 v0, p0

    move v13, v1

    move-object v1, v9

    move/from16 v17, v2

    move v2, v8

    move-object/from16 v18, v3

    move v3, v5

    move v9, v4

    move v4, v10

    move v10, v5

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lc2/j;->l1([CIICI)I

    move-result v0

    move v4, v9

    move v5, v10

    move v1, v13

    move/from16 v2, v17

    move-object/from16 v3, v18

    const/4 v13, 0x1

    move v9, v0

    move-object v0, v12

    const/4 v12, 0x0

    goto :goto_3

    :cond_6
    move v10, v5

    const/4 v13, 0x1

    goto :goto_4

    :cond_7
    :goto_6
    move v8, v4

    goto/16 :goto_d

    :cond_8
    move v10, v5

    move v5, v4

    iget v8, v6, Lc2/b;->i:I

    if-eqz v8, :cond_e

    iget-object v9, v6, Lc2/b;->h:[I

    array-length v0, v9

    add-int/lit8 v1, v8, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    if-ge v0, v10, :cond_d

    :cond_9
    iget-object v3, v6, Lc2/j;->t:[C

    aget-char v4, v3, v0

    if-ge v4, v12, :cond_a

    aget v1, v9, v4

    if-eqz v1, :cond_b

    goto :goto_8

    :cond_a
    if-le v4, v8, :cond_b

    const/4 v13, -0x1

    goto :goto_9

    :cond_b
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v10, :cond_9

    :goto_8
    move v13, v1

    :goto_9
    sub-int v1, v0, v2

    if-lez v1, :cond_c

    invoke-virtual {v11, v3, v2, v1}, Ljava/io/Writer;->write([CII)V

    if-lt v0, v10, :cond_c

    goto :goto_a

    :cond_c
    add-int/lit8 v16, v0, 0x1

    iget-object v1, v6, Lc2/j;->t:[C

    move-object/from16 v0, p0

    move/from16 v2, v16

    move v3, v10

    move/from16 v17, v8

    move v8, v5

    move v5, v13

    invoke-virtual/range {v0 .. v5}, Lc2/j;->l1([CIICI)I

    move-result v2

    move v5, v8

    move v1, v13

    move/from16 v0, v16

    move/from16 v8, v17

    goto :goto_7

    :cond_d
    :goto_a
    move v8, v5

    goto :goto_d

    :cond_e
    move v8, v5

    iget-object v9, v6, Lc2/b;->h:[I

    array-length v12, v9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_b
    if-ge v0, v10, :cond_12

    :cond_f
    iget-object v2, v6, Lc2/j;->t:[C

    aget-char v4, v2, v0

    if-ge v4, v12, :cond_10

    aget v3, v9, v4

    if-eqz v3, :cond_10

    goto :goto_c

    :cond_10
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v10, :cond_f

    :goto_c
    sub-int v3, v0, v1

    if-lez v3, :cond_11

    invoke-virtual {v11, v2, v1, v3}, Ljava/io/Writer;->write([CII)V

    if-lt v0, v10, :cond_11

    goto :goto_d

    :cond_11
    add-int/lit8 v13, v0, 0x1

    iget-object v1, v6, Lc2/j;->t:[C

    aget v5, v9, v4

    move-object/from16 v0, p0

    move v2, v13

    move v3, v10

    invoke-virtual/range {v0 .. v5}, Lc2/j;->l1([CIICI)I

    move-result v1

    move v0, v13

    goto :goto_b

    :cond_12
    :goto_d
    if-lt v8, v15, :cond_13

    return-void

    :cond_13
    move v0, v8

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_14
    iget v1, v6, Lc2/j;->v:I

    add-int/2addr v1, v0

    if-le v1, v14, :cond_15

    invoke-virtual/range {p0 .. p0}, Lc2/j;->k1()V

    :cond_15
    iget-object v1, v6, Lc2/j;->t:[C

    iget v2, v6, Lc2/j;->v:I

    const/4 v3, 0x0

    invoke-virtual {v7, v3, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v1, v6, Lc2/b;->j:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    if-eqz v1, :cond_1c

    iget v1, v6, Lc2/j;->v:I

    add-int/2addr v1, v0

    iget-object v0, v6, Lc2/b;->h:[I

    iget v2, v6, Lc2/b;->i:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_16

    const v9, 0xffff

    goto :goto_e

    :cond_16
    move v9, v2

    :goto_e
    array-length v2, v0

    add-int/lit8 v3, v9, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v6, Lc2/b;->j:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    :goto_f
    iget v4, v6, Lc2/j;->v:I

    if-ge v4, v1, :cond_25

    :cond_17
    iget-object v4, v6, Lc2/j;->t:[C

    iget v5, v6, Lc2/j;->v:I

    aget-char v4, v4, v5

    if-ge v4, v2, :cond_19

    aget v5, v0, v4

    if-eqz v5, :cond_18

    goto :goto_10

    :cond_18
    const/4 v8, 0x1

    goto :goto_11

    :cond_19
    if-le v4, v9, :cond_1a

    const/4 v5, -0x1

    goto :goto_10

    :cond_1a
    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeSequence(I)Lcom/fasterxml/jackson/core/l;

    move-result-object v5

    iput-object v5, v6, Lc2/j;->y:Lcom/fasterxml/jackson/core/l;

    if-eqz v5, :cond_18

    const/4 v5, -0x2

    :goto_10
    iget v7, v6, Lc2/j;->v:I

    iget v8, v6, Lc2/j;->u:I

    sub-int/2addr v7, v8

    if-lez v7, :cond_1b

    iget-object v10, v6, Lc2/j;->t:[C

    invoke-virtual {v11, v10, v8, v7}, Ljava/io/Writer;->write([CII)V

    :cond_1b
    iget v7, v6, Lc2/j;->v:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    iput v7, v6, Lc2/j;->v:I

    invoke-virtual {v6, v4, v5}, Lc2/j;->m1(CI)V

    goto :goto_f

    :goto_11
    iget v4, v6, Lc2/j;->v:I

    add-int/2addr v4, v8

    iput v4, v6, Lc2/j;->v:I

    if-lt v4, v1, :cond_17

    goto/16 :goto_15

    :cond_1c
    iget v1, v6, Lc2/b;->i:I

    if-eqz v1, :cond_21

    iget v2, v6, Lc2/j;->v:I

    add-int/2addr v2, v0

    iget-object v0, v6, Lc2/b;->h:[I

    array-length v3, v0

    add-int/lit8 v4, v1, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_12
    iget v4, v6, Lc2/j;->v:I

    if-ge v4, v2, :cond_25

    :cond_1d
    iget-object v4, v6, Lc2/j;->t:[C

    iget v5, v6, Lc2/j;->v:I

    aget-char v7, v4, v5

    if-ge v7, v3, :cond_1e

    aget v8, v0, v7

    if-eqz v8, :cond_20

    goto :goto_13

    :cond_1e
    if-le v7, v1, :cond_20

    const/4 v8, -0x1

    :goto_13
    iget v9, v6, Lc2/j;->u:I

    sub-int/2addr v5, v9

    if-lez v5, :cond_1f

    invoke-virtual {v11, v4, v9, v5}, Ljava/io/Writer;->write([CII)V

    :cond_1f
    iget v4, v6, Lc2/j;->v:I

    const/4 v9, 0x1

    add-int/2addr v4, v9

    iput v4, v6, Lc2/j;->v:I

    invoke-virtual {v6, v7, v8}, Lc2/j;->m1(CI)V

    goto :goto_12

    :cond_20
    const/4 v9, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v6, Lc2/j;->v:I

    if-lt v5, v2, :cond_1d

    goto :goto_15

    :cond_21
    iget v1, v6, Lc2/j;->v:I

    add-int/2addr v1, v0

    iget-object v0, v6, Lc2/b;->h:[I

    array-length v2, v0

    :goto_14
    iget v3, v6, Lc2/j;->v:I

    if-ge v3, v1, :cond_25

    :cond_22
    iget-object v3, v6, Lc2/j;->t:[C

    iget v4, v6, Lc2/j;->v:I

    aget-char v5, v3, v4

    if-ge v5, v2, :cond_24

    aget v5, v0, v5

    if-eqz v5, :cond_24

    iget v5, v6, Lc2/j;->u:I

    sub-int/2addr v4, v5

    if-lez v4, :cond_23

    invoke-virtual {v11, v3, v5, v4}, Ljava/io/Writer;->write([CII)V

    :cond_23
    iget-object v3, v6, Lc2/j;->t:[C

    iget v4, v6, Lc2/j;->v:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v6, Lc2/j;->v:I

    aget-char v3, v3, v4

    aget v4, v0, v3

    invoke-virtual {v6, v3, v4}, Lc2/j;->m1(CI)V

    goto :goto_14

    :cond_24
    add-int/lit8 v4, v4, 0x1

    iput v4, v6, Lc2/j;->v:I

    if-lt v4, v1, :cond_22

    :cond_25
    :goto_15
    return-void
.end method

.method public final w0()V
    .locals 4

    iget-object v0, p0, Lx1/a;->e:Lc2/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/i;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/f;->a:Lcom/fasterxml/jackson/core/k;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lx1/a;->e:Lc2/d;

    iget v2, v2, Lcom/fasterxml/jackson/core/i;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, p0, v2}, Lcom/fasterxml/jackson/core/k;->writeEndArray(Lcom/fasterxml/jackson/core/f;I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lc2/j;->v:I

    iget v2, p0, Lc2/j;->w:I

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_1
    iget-object v0, p0, Lc2/j;->t:[C

    iget v2, p0, Lc2/j;->v:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lc2/j;->v:I

    const/16 v3, 0x5d

    aput-char v3, v0, v2

    :goto_0
    iget-object v0, p0, Lx1/a;->e:Lc2/d;

    iput-object v1, v0, Lc2/d;->g:Ljava/lang/Object;

    iget-object v0, v0, Lc2/d;->c:Lc2/d;

    iput-object v0, p0, Lx1/a;->e:Lc2/d;

    return-void

    :cond_2
    iget-object v0, p0, Lx1/a;->e:Lc2/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/i;->i()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Current context not Array but "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/f;->a(Ljava/lang/String;)V

    throw v1
.end method

.method public final x0()V
    .locals 4

    iget-object v0, p0, Lx1/a;->e:Lc2/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/i;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/f;->a:Lcom/fasterxml/jackson/core/k;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lx1/a;->e:Lc2/d;

    iget v2, v2, Lcom/fasterxml/jackson/core/i;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, p0, v2}, Lcom/fasterxml/jackson/core/k;->writeEndObject(Lcom/fasterxml/jackson/core/f;I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lc2/j;->v:I

    iget v2, p0, Lc2/j;->w:I

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_1
    iget-object v0, p0, Lc2/j;->t:[C

    iget v2, p0, Lc2/j;->v:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lc2/j;->v:I

    const/16 v3, 0x7d

    aput-char v3, v0, v2

    :goto_0
    iget-object v0, p0, Lx1/a;->e:Lc2/d;

    iput-object v1, v0, Lc2/d;->g:Ljava/lang/Object;

    iget-object v0, v0, Lc2/d;->c:Lc2/d;

    iput-object v0, p0, Lx1/a;->e:Lc2/d;

    return-void

    :cond_2
    iget-object v0, p0, Lx1/a;->e:Lc2/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/i;->i()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Current context not Object but "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/f;->a(Ljava/lang/String;)V

    throw v1
.end method

.method public final y0(Lcom/fasterxml/jackson/core/l;)V
    .locals 5

    iget-object v0, p0, Lx1/a;->e:Lc2/d;

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/l;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc2/d;->n(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_c

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/fasterxml/jackson/core/f;->a:Lcom/fasterxml/jackson/core/k;

    iget-char v3, p0, Lc2/j;->q:C

    iget v4, p0, Lc2/j;->w:I

    if-eqz v2, :cond_5

    if-eqz v0, :cond_1

    invoke-interface {v2, p0}, Lcom/fasterxml/jackson/core/k;->writeObjectEntrySeparator(Lcom/fasterxml/jackson/core/f;)V

    goto :goto_1

    :cond_1
    invoke-interface {v2, p0}, Lcom/fasterxml/jackson/core/k;->beforeObjectEntries(Lcom/fasterxml/jackson/core/f;)V

    :goto_1
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/l;->asQuotedChars()[C

    move-result-object p1

    iget-boolean v0, p0, Lc2/b;->l:Z

    if-eqz v0, :cond_2

    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lc2/j;->N0([CI)V

    goto/16 :goto_2

    :cond_2
    iget v0, p0, Lc2/j;->v:I

    if-lt v0, v4, :cond_3

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_3
    iget-object v0, p0, Lc2/j;->t:[C

    iget v1, p0, Lc2/j;->v:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc2/j;->v:I

    aput-char v3, v0, v1

    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lc2/j;->N0([CI)V

    iget p1, p0, Lc2/j;->v:I

    if-lt p1, v4, :cond_4

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_4
    iget-object p1, p0, Lc2/j;->t:[C

    iget v0, p0, Lc2/j;->v:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc2/j;->v:I

    aput-char v3, p1, v0

    goto :goto_2

    :cond_5
    iget v2, p0, Lc2/j;->v:I

    add-int/2addr v2, v1

    if-lt v2, v4, :cond_6

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_6
    if-eqz v0, :cond_7

    iget-object v0, p0, Lc2/j;->t:[C

    iget v1, p0, Lc2/j;->v:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc2/j;->v:I

    const/16 v2, 0x2c

    aput-char v2, v0, v1

    :cond_7
    iget-boolean v0, p0, Lc2/b;->l:Z

    if-eqz v0, :cond_8

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/l;->asQuotedChars()[C

    move-result-object p1

    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lc2/j;->N0([CI)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lc2/j;->t:[C

    iget v1, p0, Lc2/j;->v:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc2/j;->v:I

    aput-char v3, v0, v1

    invoke-interface {p1, v0, v2}, Lcom/fasterxml/jackson/core/l;->appendQuoted([CI)I

    move-result v0

    if-gez v0, :cond_a

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/l;->asQuotedChars()[C

    move-result-object p1

    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lc2/j;->N0([CI)V

    iget p1, p0, Lc2/j;->v:I

    if-lt p1, v4, :cond_9

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_9
    iget-object p1, p0, Lc2/j;->t:[C

    iget v0, p0, Lc2/j;->v:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc2/j;->v:I

    aput-char v3, p1, v0

    goto :goto_2

    :cond_a
    iget p1, p0, Lc2/j;->v:I

    add-int/2addr p1, v0

    iput p1, p0, Lc2/j;->v:I

    if-lt p1, v4, :cond_b

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_b
    iget-object p1, p0, Lc2/j;->t:[C

    iget v0, p0, Lc2/j;->v:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc2/j;->v:I

    aput-char v3, p1, v0

    :goto_2
    return-void

    :cond_c
    const-string p1, "Can not write a field name, expecting a value"

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/f;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final z0(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lx1/a;->e:Lc2/d;

    invoke-virtual {v0, p1}, Lc2/d;->n(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/fasterxml/jackson/core/f;->a:Lcom/fasterxml/jackson/core/k;

    iget-char v3, p0, Lc2/j;->q:C

    iget v4, p0, Lc2/j;->w:I

    if-eqz v2, :cond_5

    if-eqz v0, :cond_1

    invoke-interface {v2, p0}, Lcom/fasterxml/jackson/core/k;->writeObjectEntrySeparator(Lcom/fasterxml/jackson/core/f;)V

    goto :goto_1

    :cond_1
    invoke-interface {v2, p0}, Lcom/fasterxml/jackson/core/k;->beforeObjectEntries(Lcom/fasterxml/jackson/core/f;)V

    :goto_1
    iget-boolean v0, p0, Lc2/b;->l:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lc2/j;->s1(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget v0, p0, Lc2/j;->v:I

    if-lt v0, v4, :cond_3

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_3
    iget-object v0, p0, Lc2/j;->t:[C

    iget v1, p0, Lc2/j;->v:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc2/j;->v:I

    aput-char v3, v0, v1

    invoke-virtual {p0, p1}, Lc2/j;->s1(Ljava/lang/String;)V

    iget p1, p0, Lc2/j;->v:I

    if-lt p1, v4, :cond_4

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_4
    iget-object p1, p0, Lc2/j;->t:[C

    iget v0, p0, Lc2/j;->v:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc2/j;->v:I

    aput-char v3, p1, v0

    goto :goto_2

    :cond_5
    iget v2, p0, Lc2/j;->v:I

    add-int/2addr v2, v1

    if-lt v2, v4, :cond_6

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_6
    if-eqz v0, :cond_7

    iget-object v0, p0, Lc2/j;->t:[C

    iget v1, p0, Lc2/j;->v:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc2/j;->v:I

    const/16 v2, 0x2c

    aput-char v2, v0, v1

    :cond_7
    iget-boolean v0, p0, Lc2/b;->l:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0, p1}, Lc2/j;->s1(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lc2/j;->t:[C

    iget v1, p0, Lc2/j;->v:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc2/j;->v:I

    aput-char v3, v0, v1

    invoke-virtual {p0, p1}, Lc2/j;->s1(Ljava/lang/String;)V

    iget p1, p0, Lc2/j;->v:I

    if-lt p1, v4, :cond_9

    invoke-virtual {p0}, Lc2/j;->k1()V

    :cond_9
    iget-object p1, p0, Lc2/j;->t:[C

    iget v0, p0, Lc2/j;->v:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc2/j;->v:I

    aput-char v3, p1, v0

    :goto_2
    return-void

    :cond_a
    const-string p1, "Can not write a field name, expecting a value"

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/f;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
