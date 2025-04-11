.class public final Lc2/h;
.super Lc2/b;
.source "SourceFile"


# static fields
.field public static final A:[B

.field public static final B:[B

.field public static final C:[B

.field public static final E:[B

.field public static final F:[B


# instance fields
.field public final p:Ljava/io/OutputStream;

.field public final q:B

.field public t:[B

.field public u:I

.field public final v:I

.field public final w:I

.field public x:[C

.field public final y:I

.field public final z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/b;->c(Z)[B

    move-result-object v0

    sput-object v0, Lc2/h;->A:[B

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/b;->c(Z)[B

    move-result-object v0

    sput-object v0, Lc2/h;->B:[B

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lc2/h;->C:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lc2/h;->E:[B

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lc2/h;->F:[B

    return-void

    :array_0
    .array-data 1
        0x6et
        0x75t
        0x6ct
        0x6ct
    .end array-data

    :array_1
    .array-data 1
        0x74t
        0x72t
        0x75t
        0x65t
    .end array-data

    :array_2
    .array-data 1
        0x66t
        0x61t
        0x6ct
        0x73t
        0x65t
    .end array-data
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/d;ILcom/fasterxml/jackson/core/j;Ljava/io/OutputStream;C)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lc2/b;-><init>(Lcom/fasterxml/jackson/core/io/d;ILcom/fasterxml/jackson/core/j;)V

    iput-object p4, p0, Lc2/h;->p:Ljava/io/OutputStream;

    int-to-byte p2, p5

    iput-byte p2, p0, Lc2/h;->q:B

    const/16 p2, 0x22

    if-eq p5, p2, :cond_0

    invoke-static {p5}, Lcom/fasterxml/jackson/core/io/b;->e(I)[I

    move-result-object p2

    iput-object p2, p0, Lc2/b;->h:[I

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Lc2/h;->z:Z

    iget-object p3, p1, Lcom/fasterxml/jackson/core/io/d;->g:[B

    invoke-static {p3}, Lcom/fasterxml/jackson/core/io/d;->a(Ljava/lang/Object;)V

    iget-object p3, p1, Lcom/fasterxml/jackson/core/io/d;->e:Lcom/fasterxml/jackson/core/util/a;

    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/core/util/a;->a(I)[B

    move-result-object p3

    iput-object p3, p1, Lcom/fasterxml/jackson/core/io/d;->g:[B

    iput-object p3, p0, Lc2/h;->t:[B

    array-length p3, p3

    iput p3, p0, Lc2/h;->v:I

    shr-int/lit8 p3, p3, 0x3

    iput p3, p0, Lc2/h;->w:I

    iget-object p3, p1, Lcom/fasterxml/jackson/core/io/d;->j:[C

    invoke-static {p3}, Lcom/fasterxml/jackson/core/io/d;->a(Ljava/lang/Object;)V

    iget-object p3, p1, Lcom/fasterxml/jackson/core/io/d;->e:Lcom/fasterxml/jackson/core/util/a;

    const/4 p4, 0x0

    invoke-virtual {p3, p2, p4}, Lcom/fasterxml/jackson/core/util/a;->b(II)[C

    move-result-object p2

    iput-object p2, p1, Lcom/fasterxml/jackson/core/io/d;->j:[C

    iput-object p2, p0, Lc2/h;->x:[C

    array-length p1, p2

    iput p1, p0, Lc2/h;->y:I

    sget-object p1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, p1}, Lx1/a;->y(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x7f

    iput p1, p0, Lc2/b;->i:I

    :cond_1
    return-void
.end method


# virtual methods
.method public final A0()V
    .locals 1

    const-string v0, "write a null"

    invoke-virtual {p0, v0}, Lc2/h;->f1(Ljava/lang/String;)V

    invoke-virtual {p0}, Lc2/h;->r1()V

    return-void
.end method

.method public final B0(D)V
    .locals 2

    iget-boolean v0, p0, Lx1/a;->d:Z

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Lcom/fasterxml/jackson/core/io/h;->g(D)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    iget v1, p0, Lx1/a;->c:I

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Lc2/h;->f1(Ljava/lang/String;)V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->USE_FAST_DOUBLE_WRITER:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lx1/a;->y(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/fasterxml/jackson/core/io/h;->l(DZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc2/h;->M0(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->USE_FAST_DOUBLE_WRITER:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lx1/a;->y(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/fasterxml/jackson/core/io/h;->l(DZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc2/h;->Y0(Ljava/lang/String;)V

    return-void
.end method

.method public final C0(F)V
    .locals 2

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

    iget v1, p0, Lx1/a;->c:I

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Lc2/h;->f1(Ljava/lang/String;)V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->USE_FAST_DOUBLE_WRITER:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lx1/a;->y(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/core/io/h;->m(FZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc2/h;->M0(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->USE_FAST_DOUBLE_WRITER:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lx1/a;->y(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/core/io/h;->m(FZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc2/h;->Y0(Ljava/lang/String;)V

    return-void
.end method

.method public final D0(I)V
    .locals 4

    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Lc2/h;->f1(Ljava/lang/String;)V

    iget v0, p0, Lc2/h;->u:I

    add-int/lit8 v0, v0, 0xb

    iget v1, p0, Lc2/h;->v:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_0
    iget-boolean v0, p0, Lx1/a;->d:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lc2/h;->u:I

    add-int/lit8 v0, v0, 0xd

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_1
    iget-object v0, p0, Lc2/h;->t:[B

    iget v1, p0, Lc2/h;->u:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc2/h;->u:I

    iget-byte v3, p0, Lc2/h;->q:B

    aput-byte v3, v0, v1

    invoke-static {p1, v2, v0}, Lcom/fasterxml/jackson/core/io/h;->h(II[B)I

    move-result p1

    iget-object v0, p0, Lc2/h;->t:[B

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lc2/h;->u:I

    aput-byte v3, v0, p1

    return-void

    :cond_2
    iget-object v0, p0, Lc2/h;->t:[B

    iget v1, p0, Lc2/h;->u:I

    invoke-static {p1, v1, v0}, Lcom/fasterxml/jackson/core/io/h;->h(II[B)I

    move-result p1

    iput p1, p0, Lc2/h;->u:I

    return-void
.end method

.method public final E0(J)V
    .locals 4

    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Lc2/h;->f1(Ljava/lang/String;)V

    iget-boolean v0, p0, Lx1/a;->d:Z

    iget v1, p0, Lc2/h;->v:I

    if-eqz v0, :cond_1

    iget v0, p0, Lc2/h;->u:I

    add-int/lit8 v0, v0, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_0
    iget-object v0, p0, Lc2/h;->t:[B

    iget v1, p0, Lc2/h;->u:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc2/h;->u:I

    iget-byte v3, p0, Lc2/h;->q:B

    aput-byte v3, v0, v1

    invoke-static {p1, p2, v2, v0}, Lcom/fasterxml/jackson/core/io/h;->j(JI[B)I

    move-result p1

    iget-object p2, p0, Lc2/h;->t:[B

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lc2/h;->u:I

    aput-byte v3, p2, p1

    return-void

    :cond_1
    iget v0, p0, Lc2/h;->u:I

    add-int/lit8 v0, v0, 0x15

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_2
    iget-object v0, p0, Lc2/h;->t:[B

    iget v1, p0, Lc2/h;->u:I

    invoke-static {p1, p2, v1, v0}, Lcom/fasterxml/jackson/core/io/h;->j(JI[B)I

    move-result p1

    iput p1, p0, Lc2/h;->u:I

    return-void
.end method

.method public final F0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Lc2/h;->f1(Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lc2/h;->r1()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lx1/a;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lc2/h;->s1(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lc2/h;->M0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final G0(Ljava/math/BigDecimal;)V
    .locals 1

    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Lc2/h;->f1(Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lc2/h;->r1()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lx1/a;->d:Z

    invoke-virtual {p0, p1}, Lx1/a;->c1(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lc2/h;->s1(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lc2/h;->M0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final H0(Ljava/math/BigInteger;)V
    .locals 1

    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Lc2/h;->f1(Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lc2/h;->r1()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lx1/a;->d:Z

    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lc2/h;->s1(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lc2/h;->M0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final I0(S)V
    .locals 4

    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Lc2/h;->f1(Ljava/lang/String;)V

    iget v0, p0, Lc2/h;->u:I

    add-int/lit8 v0, v0, 0x6

    iget v1, p0, Lc2/h;->v:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_0
    iget-boolean v0, p0, Lx1/a;->d:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lc2/h;->u:I

    add-int/lit8 v0, v0, 0x8

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_1
    iget-object v0, p0, Lc2/h;->t:[B

    iget v1, p0, Lc2/h;->u:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc2/h;->u:I

    iget-byte v3, p0, Lc2/h;->q:B

    aput-byte v3, v0, v1

    invoke-static {p1, v2, v0}, Lcom/fasterxml/jackson/core/io/h;->h(II[B)I

    move-result p1

    iget-object v0, p0, Lc2/h;->t:[B

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lc2/h;->u:I

    aput-byte v3, v0, p1

    return-void

    :cond_2
    iget-object v0, p0, Lc2/h;->t:[B

    iget v1, p0, Lc2/h;->u:I

    invoke-static {p1, v1, v0}, Lcom/fasterxml/jackson/core/io/h;->h(II[B)I

    move-result p1

    iput p1, p0, Lc2/h;->u:I

    return-void
.end method

.method public final K0(C)V
    .locals 4

    iget v0, p0, Lc2/h;->u:I

    add-int/lit8 v0, v0, 0x3

    iget v1, p0, Lc2/h;->v:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_0
    iget-object v0, p0, Lc2/h;->t:[B

    const/16 v1, 0x7f

    if-gt p1, v1, :cond_1

    iget v1, p0, Lc2/h;->u:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc2/h;->u:I

    int-to-byte p0, p1

    aput-byte p0, v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x800

    if-ge p1, v1, :cond_2

    iget v1, p0, Lc2/h;->u:I

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, p1, 0x6

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lc2/h;->u:I

    and-int/lit8 p0, p1, 0x3f

    or-int/lit16 p0, p0, 0x80

    int-to-byte p0, p0

    aput-byte p0, v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, v1}, Lc2/h;->k1(II[CI)I

    :goto_0
    return-void
.end method

.method public final L0(Lcom/fasterxml/jackson/core/l;)V
    .locals 2

    iget-object v0, p0, Lc2/h;->t:[B

    iget v1, p0, Lc2/h;->u:I

    invoke-interface {p1, v0, v1}, Lcom/fasterxml/jackson/core/l;->appendUnquotedUTF8([BI)I

    move-result v0

    if-gez v0, :cond_0

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/l;->asUnquotedUTF8()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lc2/h;->o1([B)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lc2/h;->u:I

    add-int/2addr p1, v0

    iput p1, p0, Lc2/h;->u:I

    :goto_0
    return-void
.end method

.method public final M0(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, v0, Lc2/h;->x:[C

    array-length v4, v3

    const/4 v5, 0x0

    if-gt v2, v4, :cond_0

    invoke-virtual {v1, v5, v2, v3, v5}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {v0, v3, v2}, Lc2/h;->N0([CI)V

    goto/16 :goto_5

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v2, 0x0

    or-int/lit8 v6, v2, 0x0

    or-int/2addr v6, v4

    sub-int v7, v3, v4

    or-int/2addr v6, v7

    const/4 v7, 0x1

    if-ltz v6, :cond_9

    iget-object v3, v0, Lc2/h;->x:[C

    array-length v6, v3

    if-gt v2, v6, :cond_1

    invoke-virtual {v1, v5, v4, v3, v5}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {v0, v3, v2}, Lc2/h;->N0([CI)V

    goto/16 :goto_5

    :cond_1
    iget v4, v0, Lc2/h;->v:I

    shr-int/lit8 v8, v4, 0x2

    shr-int/lit8 v9, v4, 0x4

    add-int/2addr v8, v9

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    mul-int/lit8 v8, v6, 0x3

    move v9, v5

    :goto_0
    if-lez v2, :cond_8

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int v11, v9, v10

    invoke-virtual {v1, v9, v11, v3, v5}, Ljava/lang/String;->getChars(II[CI)V

    iget v11, v0, Lc2/h;->u:I

    add-int/2addr v11, v8

    if-le v11, v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lc2/h;->i1()V

    :cond_2
    if-le v10, v7, :cond_3

    add-int/lit8 v11, v10, -0x1

    aget-char v12, v3, v11

    const v13, 0xd800

    if-lt v12, v13, :cond_3

    const v13, 0xdbff

    if-gt v12, v13, :cond_3

    move v10, v11

    :cond_3
    move v11, v5

    :goto_1
    if-ge v11, v10, :cond_7

    :goto_2
    aget-char v12, v3, v11

    const/16 v13, 0x7f

    if-le v12, v13, :cond_5

    add-int/lit8 v11, v11, 0x1

    const/16 v13, 0x800

    if-ge v12, v13, :cond_4

    iget-object v13, v0, Lc2/h;->t:[B

    iget v14, v0, Lc2/h;->u:I

    add-int/lit8 v15, v14, 0x1

    shr-int/lit8 v7, v12, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v13, v14

    add-int/lit8 v7, v15, 0x1

    iput v7, v0, Lc2/h;->u:I

    and-int/lit8 v7, v12, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v13, v15

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v12, v11, v3, v10}, Lc2/h;->k1(II[CI)I

    move-result v7

    move v11, v7

    :goto_3
    const/4 v7, 0x1

    goto :goto_1

    :cond_5
    iget-object v7, v0, Lc2/h;->t:[B

    iget v13, v0, Lc2/h;->u:I

    add-int/lit8 v14, v13, 0x1

    iput v14, v0, Lc2/h;->u:I

    int-to-byte v12, v12

    aput-byte v12, v7, v13

    add-int/lit8 v11, v11, 0x1

    if-lt v11, v10, :cond_6

    goto :goto_4

    :cond_6
    const/4 v7, 0x1

    goto :goto_2

    :cond_7
    :goto_4
    add-int/2addr v9, v10

    sub-int/2addr v2, v10

    const/4 v7, 0x1

    goto :goto_0

    :cond_8
    :goto_5
    return-void

    :cond_9
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "Invalid \'offset\' (%d) and/or \'len\' (%d) arguments for `String` of length %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/f;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final N(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;I)I
    .locals 5

    const-string v0, "Too few bytes available: missing "

    const-string v1, "write a binary value"

    invoke-virtual {p0, v1}, Lc2/h;->f1(Ljava/lang/String;)V

    iget v1, p0, Lc2/h;->u:I

    iget v2, p0, Lc2/h;->v:I

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_0
    iget-object v1, p0, Lc2/h;->t:[B

    iget v3, p0, Lc2/h;->u:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lc2/h;->u:I

    iget-byte v4, p0, Lc2/h;->q:B

    aput-byte v4, v1, v3

    iget-object v1, p0, Lc2/b;->g:Lcom/fasterxml/jackson/core/io/d;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/io/d;->b()[B

    move-result-object v3

    if-gez p3, :cond_1

    :try_start_0
    invoke-virtual {p0, p1, p2, v3}, Lc2/h;->m1(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;[B)I

    move-result p3

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, v3, p3}, Lc2/h;->n1(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;[BI)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz p1, :cond_3

    :goto_0
    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/core/io/d;->d([B)V

    iget p1, p0, Lc2/h;->u:I

    if-lt p1, v2, :cond_2

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_2
    iget-object p1, p0, Lc2/h;->t:[B

    iget p2, p0, Lc2/h;->u:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lc2/h;->u:I

    aput-byte v4, p1, p2

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
    .locals 9

    invoke-virtual {p0, p1, p2}, Lx1/a;->e1([CI)V

    add-int v0, p2, p2

    add-int/2addr v0, p2

    iget v1, p0, Lc2/h;->u:I

    add-int/2addr v1, v0

    const/4 v2, 0x0

    const/16 v3, 0x800

    const/16 v4, 0x80

    iget v5, p0, Lc2/h;->v:I

    if-le v1, v5, :cond_7

    if-ge v5, v0, :cond_6

    iget-object v0, p0, Lc2/h;->t:[B

    add-int/2addr p2, v2

    :goto_0
    if-ge v2, p2, :cond_5

    :cond_0
    aget-char v1, p1, v2

    if-lt v1, v4, :cond_3

    iget v1, p0, Lc2/h;->u:I

    add-int/lit8 v1, v1, 0x3

    if-lt v1, v5, :cond_1

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_1
    add-int/lit8 v1, v2, 0x1

    aget-char v2, p1, v2

    if-ge v2, v3, :cond_2

    iget v6, p0, Lc2/h;->u:I

    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v8, v2, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v0, v6

    add-int/lit8 v6, v7, 0x1

    iput v6, p0, Lc2/h;->u:I

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v0, v7

    move v2, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2, v1, p1, p2}, Lc2/h;->k1(II[CI)I

    move-result v2

    goto :goto_0

    :cond_3
    iget v6, p0, Lc2/h;->u:I

    if-lt v6, v5, :cond_4

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_4
    iget v6, p0, Lc2/h;->u:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lc2/h;->u:I

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    add-int/lit8 v2, v2, 0x1

    if-lt v2, p2, :cond_0

    :cond_5
    return-void

    :cond_6
    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_7
    add-int/2addr p2, v2

    :goto_1
    if-ge v2, p2, :cond_b

    :cond_8
    aget-char v0, p1, v2

    const/16 v1, 0x7f

    if-le v0, v1, :cond_a

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v3, :cond_9

    iget-object v1, p0, Lc2/h;->t:[B

    iget v5, p0, Lc2/h;->u:I

    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v7, v0, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v1, v5

    add-int/lit8 v5, v6, 0x1

    iput v5, p0, Lc2/h;->u:I

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v1, v6

    goto :goto_1

    :cond_9
    invoke-virtual {p0, v0, v2, p1, p2}, Lc2/h;->k1(II[CI)I

    move-result v2

    goto :goto_1

    :cond_a
    iget-object v1, p0, Lc2/h;->t:[B

    iget v5, p0, Lc2/h;->u:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lc2/h;->u:I

    int-to-byte v0, v0

    aput-byte v0, v1, v5

    add-int/lit8 v2, v2, 0x1

    if-lt v2, p2, :cond_8

    :cond_b
    return-void
.end method

.method public final O(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V
    .locals 9

    invoke-virtual {p0, p2, p3, p4}, Lx1/a;->d1([BII)V

    const-string v0, "write a binary value"

    invoke-virtual {p0, v0}, Lc2/h;->f1(Ljava/lang/String;)V

    iget v0, p0, Lc2/h;->u:I

    iget v1, p0, Lc2/h;->v:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_0
    iget-object v0, p0, Lc2/h;->t:[B

    iget v2, p0, Lc2/h;->u:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lc2/h;->u:I

    iget-byte v3, p0, Lc2/h;->q:B

    aput-byte v3, v0, v2

    add-int/2addr p4, p3

    add-int/lit8 v0, p4, -0x3

    add-int/lit8 v2, v1, -0x6

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v4

    const/4 v5, 0x2

    shr-int/2addr v4, v5

    :goto_0
    if-gt p3, v0, :cond_3

    iget v6, p0, Lc2/h;->u:I

    if-le v6, v2, :cond_1

    invoke-virtual {p0}, Lc2/h;->i1()V

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

    iget-object v7, p0, Lc2/h;->t:[B

    iget v8, p0, Lc2/h;->u:I

    invoke-virtual {p1, p3, v7, v8}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Chunk(I[BI)I

    move-result p3

    iput p3, p0, Lc2/h;->u:I

    add-int/lit8 v4, v4, -0x1

    if-gtz v4, :cond_2

    iget-object v4, p0, Lc2/h;->t:[B

    add-int/lit8 v7, p3, 0x1

    const/16 v8, 0x5c

    aput-byte v8, v4, p3

    add-int/lit8 p3, v7, 0x1

    iput p3, p0, Lc2/h;->u:I

    const/16 p3, 0x6e

    aput-byte p3, v4, v7

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

    iget v0, p0, Lc2/h;->u:I

    if-le v0, v2, :cond_4

    invoke-virtual {p0}, Lc2/h;->i1()V

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
    iget-object p2, p0, Lc2/h;->t:[B

    iget v0, p0, Lc2/h;->u:I

    invoke-virtual {p1, p3, p4, p2, v0}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Partial(II[BI)I

    move-result p1

    iput p1, p0, Lc2/h;->u:I

    :cond_6
    iget p1, p0, Lc2/h;->u:I

    if-lt p1, v1, :cond_7

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_7
    iget-object p1, p0, Lc2/h;->t:[B

    iget p2, p0, Lc2/h;->u:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lc2/h;->u:I

    aput-byte v3, p1, p2

    return-void
.end method

.method public final O0(Lcom/fasterxml/jackson/core/l;)V
    .locals 2

    const-string v0, "write a raw (unencoded) value"

    invoke-virtual {p0, v0}, Lc2/h;->f1(Ljava/lang/String;)V

    iget-object v0, p0, Lc2/h;->t:[B

    iget v1, p0, Lc2/h;->u:I

    invoke-interface {p1, v0, v1}, Lcom/fasterxml/jackson/core/l;->appendUnquotedUTF8([BI)I

    move-result v0

    if-gez v0, :cond_0

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/l;->asUnquotedUTF8()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lc2/h;->o1([B)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lc2/h;->u:I

    add-int/2addr p1, v0

    iput p1, p0, Lc2/h;->u:I

    :goto_0
    return-void
.end method

.method public final Q0()V
    .locals 3

    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lc2/h;->f1(Ljava/lang/String;)V

    iget-object v0, p0, Lx1/a;->e:Lc2/d;

    invoke-virtual {v0}, Lc2/d;->j()Lc2/d;

    move-result-object v0

    iput-object v0, p0, Lx1/a;->e:Lc2/d;

    iget-object v0, p0, Lcom/fasterxml/jackson/core/f;->a:Lcom/fasterxml/jackson/core/k;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/k;->writeStartArray(Lcom/fasterxml/jackson/core/f;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lc2/h;->u:I

    iget v1, p0, Lc2/h;->v:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_1
    iget-object v0, p0, Lc2/h;->t:[B

    iget v1, p0, Lc2/h;->u:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc2/h;->u:I

    const/16 p0, 0x5b

    aput-byte p0, v0, v1

    :goto_0
    return-void
.end method

.method public final R0(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lc2/h;->f1(Ljava/lang/String;)V

    iget-object v0, p0, Lx1/a;->e:Lc2/d;

    invoke-virtual {v0, p1}, Lc2/d;->k(Ljava/lang/Object;)Lc2/d;

    move-result-object p1

    iput-object p1, p0, Lx1/a;->e:Lc2/d;

    iget-object p1, p0, Lcom/fasterxml/jackson/core/f;->a:Lcom/fasterxml/jackson/core/k;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/fasterxml/jackson/core/k;->writeStartArray(Lcom/fasterxml/jackson/core/f;)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lc2/h;->u:I

    iget v0, p0, Lc2/h;->v:I

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_1
    iget-object p1, p0, Lc2/h;->t:[B

    iget v0, p0, Lc2/h;->u:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc2/h;->u:I

    const/16 p0, 0x5b

    aput-byte p0, p1, v0

    :goto_0
    return-void
.end method

.method public final S0(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lc2/h;->f1(Ljava/lang/String;)V

    iget-object v0, p0, Lx1/a;->e:Lc2/d;

    invoke-virtual {v0, p1}, Lc2/d;->k(Ljava/lang/Object;)Lc2/d;

    move-result-object p1

    iput-object p1, p0, Lx1/a;->e:Lc2/d;

    iget-object p1, p0, Lcom/fasterxml/jackson/core/f;->a:Lcom/fasterxml/jackson/core/k;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/fasterxml/jackson/core/k;->writeStartArray(Lcom/fasterxml/jackson/core/f;)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lc2/h;->u:I

    iget v0, p0, Lc2/h;->v:I

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_1
    iget-object p1, p0, Lc2/h;->t:[B

    iget v0, p0, Lc2/h;->u:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc2/h;->u:I

    const/16 p0, 0x5b

    aput-byte p0, p1, v0

    :goto_0
    return-void
.end method

.method public final T0()V
    .locals 3

    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Lc2/h;->f1(Ljava/lang/String;)V

    iget-object v0, p0, Lx1/a;->e:Lc2/d;

    invoke-virtual {v0}, Lc2/d;->l()Lc2/d;

    move-result-object v0

    iput-object v0, p0, Lx1/a;->e:Lc2/d;

    iget-object v0, p0, Lcom/fasterxml/jackson/core/f;->a:Lcom/fasterxml/jackson/core/k;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/k;->writeStartObject(Lcom/fasterxml/jackson/core/f;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lc2/h;->u:I

    iget v1, p0, Lc2/h;->v:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_1
    iget-object v0, p0, Lc2/h;->t:[B

    iget v1, p0, Lc2/h;->u:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc2/h;->u:I

    const/16 p0, 0x7b

    aput-byte p0, v0, v1

    :goto_0
    return-void
.end method

.method public final U0(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Lc2/h;->f1(Ljava/lang/String;)V

    iget-object v0, p0, Lx1/a;->e:Lc2/d;

    invoke-virtual {v0, p1}, Lc2/d;->m(Ljava/lang/Object;)Lc2/d;

    move-result-object p1

    iput-object p1, p0, Lx1/a;->e:Lc2/d;

    iget-object p1, p0, Lcom/fasterxml/jackson/core/f;->a:Lcom/fasterxml/jackson/core/k;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/fasterxml/jackson/core/k;->writeStartObject(Lcom/fasterxml/jackson/core/f;)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lc2/h;->u:I

    iget v0, p0, Lc2/h;->v:I

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_1
    iget-object p1, p0, Lc2/h;->t:[B

    iget v0, p0, Lc2/h;->u:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc2/h;->u:I

    const/16 p0, 0x7b

    aput-byte p0, p1, v0

    :goto_0
    return-void
.end method

.method public final W0(I[CI)V
    .locals 5

    const-string v0, "write a string"

    invoke-virtual {p0, v0}, Lc2/h;->f1(Ljava/lang/String;)V

    iget v0, p0, Lc2/h;->u:I

    iget v1, p0, Lc2/h;->v:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_0
    iget-object v0, p0, Lc2/h;->t:[B

    iget v2, p0, Lc2/h;->u:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lc2/h;->u:I

    iget-byte v4, p0, Lc2/h;->q:B

    aput-byte v4, v0, v2

    iget v0, p0, Lc2/h;->w:I

    if-gt p3, v0, :cond_2

    add-int/2addr v3, p3

    if-le v3, v1, :cond_1

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lc2/h;->u1(I[CI)V

    goto :goto_0

    :cond_2
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Lc2/h;->u:I

    add-int/2addr v3, v2

    if-le v3, v1, :cond_3

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_3
    invoke-virtual {p0, p1, p2, v2}, Lc2/h;->u1(I[CI)V

    add-int/2addr p1, v2

    sub-int/2addr p3, v2

    if-gtz p3, :cond_2

    :goto_0
    iget p1, p0, Lc2/h;->u:I

    if-lt p1, v1, :cond_4

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_4
    iget-object p1, p0, Lc2/h;->t:[B

    iget p2, p0, Lc2/h;->u:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lc2/h;->u:I

    aput-byte v4, p1, p2

    return-void
.end method

.method public final X0(Lcom/fasterxml/jackson/core/l;)V
    .locals 5

    const-string v0, "write a string"

    invoke-virtual {p0, v0}, Lc2/h;->f1(Ljava/lang/String;)V

    iget v0, p0, Lc2/h;->u:I

    iget v1, p0, Lc2/h;->v:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_0
    iget-object v0, p0, Lc2/h;->t:[B

    iget v2, p0, Lc2/h;->u:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lc2/h;->u:I

    iget-byte v4, p0, Lc2/h;->q:B

    aput-byte v4, v0, v2

    invoke-interface {p1, v0, v3}, Lcom/fasterxml/jackson/core/l;->appendQuotedUTF8([BI)I

    move-result v0

    if-gez v0, :cond_1

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/l;->asQuotedUTF8()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lc2/h;->o1([B)V

    goto :goto_0

    :cond_1
    iget p1, p0, Lc2/h;->u:I

    add-int/2addr p1, v0

    iput p1, p0, Lc2/h;->u:I

    :goto_0
    iget p1, p0, Lc2/h;->u:I

    if-lt p1, v1, :cond_2

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_2
    iget-object p1, p0, Lc2/h;->t:[B

    iget v0, p0, Lc2/h;->u:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc2/h;->u:I

    aput-byte v4, p1, v0

    return-void
.end method

.method public final Y0(Ljava/lang/String;)V
    .locals 5

    const-string v0, "write a string"

    invoke-virtual {p0, v0}, Lc2/h;->f1(Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lc2/h;->r1()V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lc2/h;->w:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lc2/h;->v1(Ljava/lang/String;Z)V

    return-void

    :cond_1
    iget v1, p0, Lc2/h;->u:I

    add-int/2addr v1, v0

    iget v2, p0, Lc2/h;->v:I

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_2
    iget-object v1, p0, Lc2/h;->t:[B

    iget v3, p0, Lc2/h;->u:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lc2/h;->u:I

    iget-byte v4, p0, Lc2/h;->q:B

    aput-byte v4, v1, v3

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lc2/h;->t1(IILjava/lang/String;)V

    iget p1, p0, Lc2/h;->u:I

    if-lt p1, v2, :cond_3

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_3
    iget-object p1, p0, Lc2/h;->t:[B

    iget v0, p0, Lc2/h;->u:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc2/h;->u:I

    aput-byte v4, p1, v0

    return-void
.end method

.method public final b0(Z)V
    .locals 4

    const-string v0, "write a boolean value"

    invoke-virtual {p0, v0}, Lc2/h;->f1(Ljava/lang/String;)V

    iget v0, p0, Lc2/h;->u:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lc2/h;->v:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Lc2/h;->E:[B

    goto :goto_0

    :cond_1
    sget-object p1, Lc2/h;->F:[B

    :goto_0
    array-length v0, p1

    iget-object v1, p0, Lc2/h;->t:[B

    iget v2, p0, Lc2/h;->u:I

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lc2/h;->u:I

    add-int/2addr p1, v0

    iput p1, p0, Lc2/h;->u:I

    return-void
.end method

.method public final close()V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lc2/h;->t:[B

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

    invoke-virtual {p0}, Lc2/h;->w0()V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/i;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lc2/h;->x0()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lc2/h;->i1()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    const/4 v2, 0x0

    iput v2, p0, Lc2/h;->u:I

    iget-object v2, p0, Lc2/b;->g:Lcom/fasterxml/jackson/core/io/d;

    iget-object v3, p0, Lc2/h;->p:Ljava/io/OutputStream;

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

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
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
    iget-object v3, p0, Lc2/h;->t:[B

    const-string v4, "Trying to release buffer smaller than original"

    const/4 v5, 0x1

    if-eqz v3, :cond_8

    iget-boolean v6, p0, Lc2/h;->z:Z

    if-eqz v6, :cond_8

    iput-object v0, p0, Lc2/h;->t:[B

    iget-object v6, v2, Lcom/fasterxml/jackson/core/io/d;->g:[B

    if-eq v3, v6, :cond_7

    array-length v7, v3

    array-length v6, v6

    if-lt v7, v6, :cond_6

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_4
    iput-object v0, v2, Lcom/fasterxml/jackson/core/io/d;->g:[B

    iget-object v6, v2, Lcom/fasterxml/jackson/core/io/d;->e:Lcom/fasterxml/jackson/core/util/a;

    iget-object v6, v6, Lcom/fasterxml/jackson/core/util/a;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v6, v5, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :cond_8
    iget-object v3, p0, Lc2/h;->x:[C

    if-eqz v3, :cond_b

    iput-object v0, p0, Lc2/h;->x:[C

    iget-object p0, v2, Lcom/fasterxml/jackson/core/io/d;->j:[C

    if-eq v3, p0, :cond_a

    array-length v6, v3

    array-length p0, p0

    if-lt v6, p0, :cond_9

    goto :goto_5

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_5
    iput-object v0, v2, Lcom/fasterxml/jackson/core/io/d;->j:[C

    iget-object p0, v2, Lcom/fasterxml/jackson/core/io/d;->e:Lcom/fasterxml/jackson/core/util/a;

    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/a;->b:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p0, v5, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :cond_b
    if-nez v1, :cond_c

    return-void

    :cond_c
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

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/l;->asUnquotedUTF8()[B

    move-result-object p1

    array-length v0, p1

    if-lez v0, :cond_3

    invoke-virtual {p0, p1}, Lc2/h;->o1([B)V

    :cond_3
    return-void

    :cond_4
    const/16 p1, 0x3a

    goto :goto_0

    :cond_5
    const/16 p1, 0x2c

    :goto_0
    iget v0, p0, Lc2/h;->u:I

    iget v1, p0, Lc2/h;->v:I

    if-lt v0, v1, :cond_6

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_6
    iget-object v0, p0, Lc2/h;->t:[B

    iget v1, p0, Lc2/h;->u:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc2/h;->u:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public final flush()V
    .locals 2

    invoke-virtual {p0}, Lc2/h;->i1()V

    iget-object v0, p0, Lc2/h;->p:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lx1/a;->y(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_0
    return-void
.end method

.method public final i1()V
    .locals 3

    iget v0, p0, Lc2/h;->u:I

    if-lez v0, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lc2/h;->u:I

    iget-object v2, p0, Lc2/h;->p:Ljava/io/OutputStream;

    iget-object p0, p0, Lc2/h;->t:[B

    invoke-virtual {v2, p0, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    :cond_0
    return-void
.end method

.method public final j1(II)I
    .locals 3

    iget-boolean v0, p0, Lc2/b;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Lc2/h;->A:[B

    goto :goto_0

    :cond_0
    sget-object v0, Lc2/h;->B:[B

    :goto_0
    iget-object p0, p0, Lc2/h;->t:[B

    const v1, 0xd800

    if-lt p1, v1, :cond_1

    const v1, 0xdfff

    if-gt p1, v1, :cond_1

    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0x5c

    aput-byte v2, p0, p2

    add-int/lit8 p2, v1, 0x1

    const/16 v2, 0x75

    aput-byte v2, p0, v1

    add-int/lit8 v1, p2, 0x1

    shr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0xf

    aget-byte v2, v0, v2

    aput-byte v2, p0, p2

    add-int/lit8 p2, v1, 0x1

    shr-int/lit8 v2, p1, 0x8

    and-int/lit8 v2, v2, 0xf

    aget-byte v2, v0, v2

    aput-byte v2, p0, v1

    add-int/lit8 v1, p2, 0x1

    shr-int/lit8 v2, p1, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-byte v2, v0, v2

    aput-byte v2, p0, p2

    add-int/lit8 p2, v1, 0x1

    and-int/lit8 p1, p1, 0xf

    aget-byte p1, v0, p1

    aput-byte p1, p0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p1, 0xc

    or-int/lit16 v1, v1, 0xe0

    int-to-byte v1, v1

    aput-byte v1, p0, p2

    add-int/lit8 p2, v0, 0x1

    shr-int/lit8 v1, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p2, 0x1

    and-int/lit8 p1, p1, 0x3f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, p0, p2

    move p2, v0

    :goto_1
    return p2
.end method

.method public final k1(II[CI)I
    .locals 5

    const v0, 0xd800

    if-lt p1, v0, :cond_3

    const v1, 0xdfff

    if-gt p1, v1, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge p2, p4, :cond_2

    if-eqz p3, :cond_2

    aget-char p3, p3, p2

    const p4, 0xdc00

    if-lt p3, p4, :cond_1

    if-gt p3, v1, :cond_1

    sub-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0xa

    const/high16 v0, 0x10000

    add-int/2addr p1, v0

    sub-int/2addr p3, p4

    add-int/2addr p3, p1

    iget p1, p0, Lc2/h;->u:I

    add-int/lit8 p1, p1, 0x4

    iget p4, p0, Lc2/h;->v:I

    if-le p1, p4, :cond_0

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_0
    iget-object p1, p0, Lc2/h;->t:[B

    iget p4, p0, Lc2/h;->u:I

    add-int/lit8 v0, p4, 0x1

    shr-int/lit8 v1, p3, 0x12

    or-int/lit16 v1, v1, 0xf0

    int-to-byte v1, v1

    aput-byte v1, p1, p4

    add-int/lit8 p4, v0, 0x1

    shr-int/lit8 v1, p3, 0xc

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p4, 0x1

    shr-int/lit8 v1, p3, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, p4

    add-int/lit8 p4, v0, 0x1

    iput p4, p0, Lc2/h;->u:I

    and-int/lit8 p0, p3, 0x3f

    or-int/lit16 p0, p0, 0x80

    int-to-byte p0, p0

    aput-byte p0, p1, v0

    add-int/2addr p2, v4

    return p2

    :cond_1
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v4

    const-string p1, "Incomplete surrogate pair: first char 0x%04X, second 0x%04X"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/f;->a(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v3

    const-string p1, "Split surrogate on writeRaw() input (last character): first character 0x%4x"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/f;->a(Ljava/lang/String;)V

    throw v2

    :cond_3
    iget-object p3, p0, Lc2/h;->t:[B

    iget p4, p0, Lc2/h;->u:I

    add-int/lit8 v0, p4, 0x1

    shr-int/lit8 v1, p1, 0xc

    or-int/lit16 v1, v1, 0xe0

    int-to-byte v1, v1

    aput-byte v1, p3, p4

    add-int/lit8 p4, v0, 0x1

    shr-int/lit8 v1, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x1

    iput v0, p0, Lc2/h;->u:I

    and-int/lit8 p0, p1, 0x3f

    or-int/lit16 p0, p0, 0x80

    int-to-byte p0, p0

    aput-byte p0, p3, p4

    return p2
.end method

.method public final l1(Ljava/io/InputStream;[BIII)I
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

.method public final m1(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;[B)I
    .locals 12

    iget v0, p0, Lc2/h;->v:I

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

    invoke-virtual/range {v5 .. v10}, Lc2/h;->l1(Ljava/io/InputStream;[BIII)I

    move-result v9

    const/4 v4, 0x3

    if-ge v9, v4, :cond_4

    if-lez v9, :cond_3

    iget p2, p0, Lc2/h;->u:I

    if-le p2, v0, :cond_1

    invoke-virtual {p0}, Lc2/h;->i1()V

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

    iget-object p3, p0, Lc2/h;->t:[B

    iget v0, p0, Lc2/h;->u:I

    invoke-virtual {p1, p2, v2, p3, v0}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Partial(II[BI)I

    move-result p1

    iput p1, p0, Lc2/h;->u:I

    :cond_3
    return v11

    :cond_4
    add-int/lit8 v4, v9, -0x3

    move v8, v3

    :cond_5
    iget v5, p0, Lc2/h;->u:I

    if-le v5, v0, :cond_6

    invoke-virtual {p0}, Lc2/h;->i1()V

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

    iget-object v6, p0, Lc2/h;->t:[B

    iget v7, p0, Lc2/h;->u:I

    invoke-virtual {p1, v5, v6, v7}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Chunk(I[BI)I

    move-result v5

    iput v5, p0, Lc2/h;->u:I

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lc2/h;->t:[B

    add-int/lit8 v6, v5, 0x1

    const/16 v7, 0x5c

    aput-byte v7, v1, v5

    add-int/lit8 v5, v6, 0x1

    iput v5, p0, Lc2/h;->u:I

    const/16 v5, 0x6e

    aput-byte v5, v1, v6

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v1

    shr-int/2addr v1, v2

    goto :goto_0
.end method

.method public final n1(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;[BI)I
    .locals 11

    iget v0, p0, Lc2/h;->v:I

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

    invoke-virtual/range {v5 .. v10}, Lc2/h;->l1(Ljava/io/InputStream;[BIII)I

    move-result v9

    const/4 v4, 0x3

    if-ge v9, v4, :cond_1

    move v8, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v9, -0x3

    move v8, v3

    :cond_2
    iget v5, p0, Lc2/h;->u:I

    if-le v5, v0, :cond_3

    invoke-virtual {p0}, Lc2/h;->i1()V

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

    iget-object v6, p0, Lc2/h;->t:[B

    iget v7, p0, Lc2/h;->u:I

    invoke-virtual {p1, v5, v6, v7}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Chunk(I[BI)I

    move-result v5

    iput v5, p0, Lc2/h;->u:I

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lc2/h;->t:[B

    add-int/lit8 v6, v5, 0x1

    const/16 v7, 0x5c

    aput-byte v7, v1, v5

    add-int/lit8 v5, v6, 0x1

    iput v5, p0, Lc2/h;->u:I

    const/16 v5, 0x6e

    aput-byte v5, v1, v6

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

    invoke-virtual/range {v5 .. v10}, Lc2/h;->l1(Ljava/io/InputStream;[BIII)I

    move-result p2

    if-lez p2, :cond_7

    iget v1, p0, Lc2/h;->u:I

    if-le v1, v0, :cond_5

    invoke-virtual {p0}, Lc2/h;->i1()V

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
    iget-object p2, p0, Lc2/h;->t:[B

    iget p3, p0, Lc2/h;->u:I

    invoke-virtual {p1, v0, v2, p2, p3}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Partial(II[BI)I

    move-result p1

    iput p1, p0, Lc2/h;->u:I

    sub-int/2addr p4, v2

    :cond_7
    return p4
.end method

.method public final o1([B)V
    .locals 4

    array-length v0, p1

    iget v1, p0, Lc2/h;->u:I

    add-int/2addr v1, v0

    iget v2, p0, Lc2/h;->v:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Lc2/h;->i1()V

    const/16 v1, 0x200

    if-le v0, v1, :cond_0

    iget-object p0, p0, Lc2/h;->p:Ljava/io/OutputStream;

    invoke-virtual {p0, p1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    return-void

    :cond_0
    iget-object v1, p0, Lc2/h;->t:[B

    iget v2, p0, Lc2/h;->u:I

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lc2/h;->u:I

    add-int/2addr p1, v0

    iput p1, p0, Lc2/h;->u:I

    return-void
.end method

.method public final p1([BILcom/fasterxml/jackson/core/l;I)I
    .locals 5

    invoke-interface {p3}, Lcom/fasterxml/jackson/core/l;->asUnquotedUTF8()[B

    move-result-object p3

    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-le v0, v2, :cond_2

    array-length v0, p3

    add-int v3, p2, v0

    iget v4, p0, Lc2/h;->v:I

    if-le v3, v4, :cond_0

    iput p2, p0, Lc2/h;->u:I

    invoke-virtual {p0}, Lc2/h;->i1()V

    iget p2, p0, Lc2/h;->u:I

    array-length v3, p1

    if-le v0, v3, :cond_0

    iget-object p0, p0, Lc2/h;->p:Ljava/io/OutputStream;

    invoke-virtual {p0, p3, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-static {p3, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    mul-int/2addr p4, v2

    add-int/2addr p4, p2

    if-le p4, v4, :cond_1

    iput p2, p0, Lc2/h;->u:I

    invoke-virtual {p0}, Lc2/h;->i1()V

    iget p2, p0, Lc2/h;->u:I

    :cond_1
    :goto_0
    return p2

    :cond_2
    invoke-static {p3, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    return p2
.end method

.method public final q1(II)I
    .locals 4

    iget-object v0, p0, Lc2/h;->t:[B

    iget-boolean p0, p0, Lc2/b;->m:Z

    if-eqz p0, :cond_0

    sget-object p0, Lc2/h;->A:[B

    goto :goto_0

    :cond_0
    sget-object p0, Lc2/h;->B:[B

    :goto_0
    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0x5c

    aput-byte v2, v0, p2

    add-int/lit8 p2, v1, 0x1

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0xff

    if-le p1, v1, :cond_1

    shr-int/lit8 v2, p1, 0x8

    and-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x1

    shr-int/lit8 v3, v1, 0x4

    aget-byte v3, p0, v3

    aput-byte v3, v0, p2

    add-int/lit8 p2, v2, 0x1

    and-int/lit8 v1, v1, 0xf

    aget-byte v1, p0, v1

    aput-byte v1, v0, v2

    and-int/lit16 p1, p1, 0xff

    goto :goto_1

    :cond_1
    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0x30

    aput-byte v2, v0, p2

    add-int/lit8 p2, v1, 0x1

    aput-byte v2, v0, v1

    :goto_1
    add-int/lit8 v1, p2, 0x1

    shr-int/lit8 v2, p1, 0x4

    aget-byte v2, p0, v2

    aput-byte v2, v0, p2

    add-int/lit8 p2, v1, 0x1

    and-int/lit8 p1, p1, 0xf

    aget-byte p0, p0, p1

    aput-byte p0, v0, v1

    return p2
.end method

.method public final r1()V
    .locals 5

    iget v0, p0, Lc2/h;->u:I

    const/4 v1, 0x4

    add-int/2addr v0, v1

    iget v2, p0, Lc2/h;->v:I

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_0
    iget-object v0, p0, Lc2/h;->t:[B

    iget v2, p0, Lc2/h;->u:I

    sget-object v3, Lc2/h;->C:[B

    const/4 v4, 0x0

    invoke-static {v3, v4, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lc2/h;->u:I

    add-int/2addr v0, v1

    iput v0, p0, Lc2/h;->u:I

    return-void
.end method

.method public final s1(Ljava/lang/String;)V
    .locals 4

    iget v0, p0, Lc2/h;->u:I

    iget v1, p0, Lc2/h;->v:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_0
    iget-object v0, p0, Lc2/h;->t:[B

    iget v2, p0, Lc2/h;->u:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lc2/h;->u:I

    iget-byte v3, p0, Lc2/h;->q:B

    aput-byte v3, v0, v2

    invoke-virtual {p0, p1}, Lc2/h;->M0(Ljava/lang/String;)V

    iget p1, p0, Lc2/h;->u:I

    if-lt p1, v1, :cond_1

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_1
    iget-object p1, p0, Lc2/h;->t:[B

    iget v0, p0, Lc2/h;->u:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc2/h;->u:I

    aput-byte v3, p1, v0

    return-void
.end method

.method public final t1(IILjava/lang/String;)V
    .locals 11

    add-int/2addr p2, p1

    iget v0, p0, Lc2/h;->u:I

    iget-object v1, p0, Lc2/h;->t:[B

    iget-object v2, p0, Lc2/b;->h:[I

    :goto_0
    const/16 v3, 0x7f

    if-ge p1, p2, :cond_1

    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v4, v3, :cond_1

    aget v5, v2, v4

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v0, 0x1

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    add-int/lit8 p1, p1, 0x1

    move v0, v3

    goto :goto_0

    :cond_1
    :goto_1
    iput v0, p0, Lc2/h;->u:I

    if-ge p1, p2, :cond_1c

    iget-object v1, p0, Lc2/b;->j:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    const/16 v2, 0x5c

    const/16 v4, 0x7ff

    iget v5, p0, Lc2/h;->v:I

    if-eqz v1, :cond_d

    sub-int v1, p2, p1

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v1, v0

    if-le v1, v5, :cond_2

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_2
    iget v0, p0, Lc2/h;->u:I

    iget-object v1, p0, Lc2/h;->t:[B

    iget-object v5, p0, Lc2/b;->h:[I

    iget v6, p0, Lc2/b;->i:I

    if-gtz v6, :cond_3

    const v6, 0xffff

    :cond_3
    iget-object v7, p0, Lc2/b;->j:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    :goto_2
    if-ge p1, p2, :cond_c

    add-int/lit8 v8, p1, 0x1

    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-gt p1, v3, :cond_7

    aget v9, v5, p1

    if-nez v9, :cond_4

    add-int/lit8 v9, v0, 0x1

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    move p1, v8

    move v0, v9

    goto :goto_2

    :cond_4
    if-lez v9, :cond_5

    add-int/lit8 p1, v0, 0x1

    aput-byte v2, v1, v0

    add-int/lit8 v0, p1, 0x1

    int-to-byte v9, v9

    aput-byte v9, v1, p1

    goto :goto_5

    :cond_5
    const/4 v10, -0x2

    if-ne v9, v10, :cond_8

    invoke-virtual {v7, p1}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeSequence(I)Lcom/fasterxml/jackson/core/l;

    move-result-object v9

    if-eqz v9, :cond_6

    goto :goto_3

    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid custom escape definitions; custom escape not found for character code 0x"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", although was supposed to have one"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/f;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_7
    if-le p1, v6, :cond_9

    :cond_8
    invoke-virtual {p0, p1, v0}, Lc2/h;->q1(II)I

    move-result p1

    goto :goto_4

    :cond_9
    invoke-virtual {v7, p1}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeSequence(I)Lcom/fasterxml/jackson/core/l;

    move-result-object v9

    if-eqz v9, :cond_a

    :goto_3
    sub-int p1, p2, v8

    invoke-virtual {p0, v1, v0, v9, p1}, Lc2/h;->p1([BILcom/fasterxml/jackson/core/l;I)I

    move-result p1

    goto :goto_4

    :cond_a
    if-gt p1, v4, :cond_b

    add-int/lit8 v9, v0, 0x1

    shr-int/lit8 v10, p1, 0x6

    or-int/lit16 v10, v10, 0xc0

    int-to-byte v10, v10

    aput-byte v10, v1, v0

    add-int/lit8 v0, v9, 0x1

    and-int/lit8 p1, p1, 0x3f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, v1, v9

    goto :goto_5

    :cond_b
    invoke-virtual {p0, p1, v0}, Lc2/h;->j1(II)I

    move-result p1

    :goto_4
    move v0, p1

    :goto_5
    move p1, v8

    goto :goto_2

    :cond_c
    iput v0, p0, Lc2/h;->u:I

    goto/16 :goto_c

    :cond_d
    iget v1, p0, Lc2/b;->i:I

    if-nez v1, :cond_14

    sub-int v1, p2, p1

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v1, v0

    if-le v1, v5, :cond_e

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_e
    iget v0, p0, Lc2/h;->u:I

    iget-object v1, p0, Lc2/h;->t:[B

    iget-object v5, p0, Lc2/b;->h:[I

    :goto_6
    if-ge p1, p2, :cond_13

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-gt p1, v3, :cond_11

    aget v7, v5, p1

    if-nez v7, :cond_f

    add-int/lit8 v7, v0, 0x1

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    move p1, v6

    move v0, v7

    goto :goto_6

    :cond_f
    if-lez v7, :cond_10

    add-int/lit8 p1, v0, 0x1

    aput-byte v2, v1, v0

    add-int/lit8 v0, p1, 0x1

    int-to-byte v7, v7

    aput-byte v7, v1, p1

    goto :goto_8

    :cond_10
    invoke-virtual {p0, p1, v0}, Lc2/h;->q1(II)I

    move-result p1

    goto :goto_7

    :cond_11
    if-gt p1, v4, :cond_12

    add-int/lit8 v7, v0, 0x1

    shr-int/lit8 v8, p1, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v1, v0

    add-int/lit8 v0, v7, 0x1

    and-int/lit8 p1, p1, 0x3f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, v1, v7

    goto :goto_8

    :cond_12
    invoke-virtual {p0, p1, v0}, Lc2/h;->j1(II)I

    move-result p1

    :goto_7
    move v0, p1

    :goto_8
    move p1, v6

    goto :goto_6

    :cond_13
    iput v0, p0, Lc2/h;->u:I

    goto :goto_c

    :cond_14
    sub-int v1, p2, p1

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v1, v0

    if-le v1, v5, :cond_15

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_15
    iget v0, p0, Lc2/h;->u:I

    iget-object v1, p0, Lc2/h;->t:[B

    iget-object v5, p0, Lc2/b;->h:[I

    iget v6, p0, Lc2/b;->i:I

    :goto_9
    if-ge p1, p2, :cond_1b

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-gt p1, v3, :cond_17

    aget v8, v5, p1

    if-nez v8, :cond_16

    add-int/lit8 v8, v0, 0x1

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    move p1, v7

    move v0, v8

    goto :goto_9

    :cond_16
    if-lez v8, :cond_18

    add-int/lit8 p1, v0, 0x1

    aput-byte v2, v1, v0

    add-int/lit8 v0, p1, 0x1

    int-to-byte v8, v8

    aput-byte v8, v1, p1

    goto :goto_b

    :cond_17
    if-le p1, v6, :cond_19

    :cond_18
    invoke-virtual {p0, p1, v0}, Lc2/h;->q1(II)I

    move-result p1

    goto :goto_a

    :cond_19
    if-gt p1, v4, :cond_1a

    add-int/lit8 v8, v0, 0x1

    shr-int/lit8 v9, p1, 0x6

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    aput-byte v9, v1, v0

    add-int/lit8 v0, v8, 0x1

    and-int/lit8 p1, p1, 0x3f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, v1, v8

    goto :goto_b

    :cond_1a
    invoke-virtual {p0, p1, v0}, Lc2/h;->j1(II)I

    move-result p1

    :goto_a
    move v0, p1

    :goto_b
    move p1, v7

    goto :goto_9

    :cond_1b
    iput v0, p0, Lc2/h;->u:I

    :cond_1c
    :goto_c
    return-void
.end method

.method public final u1(I[CI)V
    .locals 11

    add-int/2addr p3, p1

    iget v0, p0, Lc2/h;->u:I

    iget-object v1, p0, Lc2/h;->t:[B

    iget-object v2, p0, Lc2/b;->h:[I

    :goto_0
    const/16 v3, 0x7f

    if-ge p1, p3, :cond_1

    aget-char v4, p2, p1

    if-gt v4, v3, :cond_1

    aget v5, v2, v4

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v0, 0x1

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    add-int/lit8 p1, p1, 0x1

    move v0, v3

    goto :goto_0

    :cond_1
    :goto_1
    iput v0, p0, Lc2/h;->u:I

    if-ge p1, p3, :cond_1c

    iget-object v1, p0, Lc2/b;->j:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    const/16 v2, 0x5c

    const/16 v4, 0x7ff

    iget v5, p0, Lc2/h;->v:I

    if-eqz v1, :cond_d

    sub-int v1, p3, p1

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v1, v0

    if-le v1, v5, :cond_2

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_2
    iget v0, p0, Lc2/h;->u:I

    iget-object v1, p0, Lc2/h;->t:[B

    iget-object v5, p0, Lc2/b;->h:[I

    iget v6, p0, Lc2/b;->i:I

    if-gtz v6, :cond_3

    const v6, 0xffff

    :cond_3
    iget-object v7, p0, Lc2/b;->j:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    :goto_2
    if-ge p1, p3, :cond_c

    add-int/lit8 v8, p1, 0x1

    aget-char p1, p2, p1

    if-gt p1, v3, :cond_7

    aget v9, v5, p1

    if-nez v9, :cond_4

    add-int/lit8 v9, v0, 0x1

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    move p1, v8

    move v0, v9

    goto :goto_2

    :cond_4
    if-lez v9, :cond_5

    add-int/lit8 p1, v0, 0x1

    aput-byte v2, v1, v0

    add-int/lit8 v0, p1, 0x1

    int-to-byte v9, v9

    aput-byte v9, v1, p1

    goto :goto_5

    :cond_5
    const/4 v10, -0x2

    if-ne v9, v10, :cond_8

    invoke-virtual {v7, p1}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeSequence(I)Lcom/fasterxml/jackson/core/l;

    move-result-object v9

    if-eqz v9, :cond_6

    goto :goto_3

    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid custom escape definitions; custom escape not found for character code 0x"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", although was supposed to have one"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/f;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_7
    if-le p1, v6, :cond_9

    :cond_8
    invoke-virtual {p0, p1, v0}, Lc2/h;->q1(II)I

    move-result p1

    goto :goto_4

    :cond_9
    invoke-virtual {v7, p1}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeSequence(I)Lcom/fasterxml/jackson/core/l;

    move-result-object v9

    if-eqz v9, :cond_a

    :goto_3
    sub-int p1, p3, v8

    invoke-virtual {p0, v1, v0, v9, p1}, Lc2/h;->p1([BILcom/fasterxml/jackson/core/l;I)I

    move-result p1

    goto :goto_4

    :cond_a
    if-gt p1, v4, :cond_b

    add-int/lit8 v9, v0, 0x1

    shr-int/lit8 v10, p1, 0x6

    or-int/lit16 v10, v10, 0xc0

    int-to-byte v10, v10

    aput-byte v10, v1, v0

    add-int/lit8 v0, v9, 0x1

    and-int/lit8 p1, p1, 0x3f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, v1, v9

    goto :goto_5

    :cond_b
    invoke-virtual {p0, p1, v0}, Lc2/h;->j1(II)I

    move-result p1

    :goto_4
    move v0, p1

    :goto_5
    move p1, v8

    goto :goto_2

    :cond_c
    iput v0, p0, Lc2/h;->u:I

    goto/16 :goto_c

    :cond_d
    iget v1, p0, Lc2/b;->i:I

    if-nez v1, :cond_14

    sub-int v1, p3, p1

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v1, v0

    if-le v1, v5, :cond_e

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_e
    iget v0, p0, Lc2/h;->u:I

    iget-object v1, p0, Lc2/h;->t:[B

    iget-object v5, p0, Lc2/b;->h:[I

    :goto_6
    if-ge p1, p3, :cond_13

    add-int/lit8 v6, p1, 0x1

    aget-char p1, p2, p1

    if-gt p1, v3, :cond_11

    aget v7, v5, p1

    if-nez v7, :cond_f

    add-int/lit8 v7, v0, 0x1

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    move p1, v6

    move v0, v7

    goto :goto_6

    :cond_f
    if-lez v7, :cond_10

    add-int/lit8 p1, v0, 0x1

    aput-byte v2, v1, v0

    add-int/lit8 v0, p1, 0x1

    int-to-byte v7, v7

    aput-byte v7, v1, p1

    goto :goto_8

    :cond_10
    invoke-virtual {p0, p1, v0}, Lc2/h;->q1(II)I

    move-result p1

    goto :goto_7

    :cond_11
    if-gt p1, v4, :cond_12

    add-int/lit8 v7, v0, 0x1

    shr-int/lit8 v8, p1, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v1, v0

    add-int/lit8 v0, v7, 0x1

    and-int/lit8 p1, p1, 0x3f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, v1, v7

    goto :goto_8

    :cond_12
    invoke-virtual {p0, p1, v0}, Lc2/h;->j1(II)I

    move-result p1

    :goto_7
    move v0, p1

    :goto_8
    move p1, v6

    goto :goto_6

    :cond_13
    iput v0, p0, Lc2/h;->u:I

    goto :goto_c

    :cond_14
    sub-int v1, p3, p1

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v1, v0

    if-le v1, v5, :cond_15

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_15
    iget v0, p0, Lc2/h;->u:I

    iget-object v1, p0, Lc2/h;->t:[B

    iget-object v5, p0, Lc2/b;->h:[I

    iget v6, p0, Lc2/b;->i:I

    :goto_9
    if-ge p1, p3, :cond_1b

    add-int/lit8 v7, p1, 0x1

    aget-char p1, p2, p1

    if-gt p1, v3, :cond_17

    aget v8, v5, p1

    if-nez v8, :cond_16

    add-int/lit8 v8, v0, 0x1

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    move p1, v7

    move v0, v8

    goto :goto_9

    :cond_16
    if-lez v8, :cond_18

    add-int/lit8 p1, v0, 0x1

    aput-byte v2, v1, v0

    add-int/lit8 v0, p1, 0x1

    int-to-byte v8, v8

    aput-byte v8, v1, p1

    goto :goto_b

    :cond_17
    if-le p1, v6, :cond_19

    :cond_18
    invoke-virtual {p0, p1, v0}, Lc2/h;->q1(II)I

    move-result p1

    goto :goto_a

    :cond_19
    if-gt p1, v4, :cond_1a

    add-int/lit8 v8, v0, 0x1

    shr-int/lit8 v9, p1, 0x6

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    aput-byte v9, v1, v0

    add-int/lit8 v0, v8, 0x1

    and-int/lit8 p1, p1, 0x3f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, v1, v8

    goto :goto_b

    :cond_1a
    invoke-virtual {p0, p1, v0}, Lc2/h;->j1(II)I

    move-result p1

    :goto_a
    move v0, p1

    :goto_b
    move p1, v7

    goto :goto_9

    :cond_1b
    iput v0, p0, Lc2/h;->u:I

    :cond_1c
    :goto_c
    return-void
.end method

.method public final v1(Ljava/lang/String;Z)V
    .locals 6

    iget-byte v0, p0, Lc2/h;->q:B

    iget v1, p0, Lc2/h;->v:I

    if-eqz p2, :cond_1

    iget v2, p0, Lc2/h;->u:I

    if-lt v2, v1, :cond_0

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_0
    iget-object v2, p0, Lc2/h;->t:[B

    iget v3, p0, Lc2/h;->u:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lc2/h;->u:I

    aput-byte v0, v2, v3

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-lez v2, :cond_3

    iget v4, p0, Lc2/h;->w:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p0, Lc2/h;->u:I

    add-int/2addr v5, v4

    if-le v5, v1, :cond_2

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_2
    invoke-virtual {p0, v3, v4, p1}, Lc2/h;->t1(IILjava/lang/String;)V

    add-int/2addr v3, v4

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_5

    iget p1, p0, Lc2/h;->u:I

    if-lt p1, v1, :cond_4

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_4
    iget-object p1, p0, Lc2/h;->t:[B

    iget p2, p0, Lc2/h;->u:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lc2/h;->u:I

    aput-byte v0, p1, p2

    :cond_5
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
    iget v0, p0, Lc2/h;->u:I

    iget v2, p0, Lc2/h;->v:I

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_1
    iget-object v0, p0, Lc2/h;->t:[B

    iget v2, p0, Lc2/h;->u:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lc2/h;->u:I

    const/16 v3, 0x5d

    aput-byte v3, v0, v2

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
    iget v0, p0, Lc2/h;->u:I

    iget v2, p0, Lc2/h;->v:I

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_1
    iget-object v0, p0, Lc2/h;->t:[B

    iget v2, p0, Lc2/h;->u:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lc2/h;->u:I

    const/16 v3, 0x7d

    aput-byte v3, v0, v2

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
    .locals 8

    iget-object v0, p0, Lcom/fasterxml/jackson/core/f;->a:Lcom/fasterxml/jackson/core/k;

    const/4 v1, 0x0

    const-string v2, "Can not write a field name, expecting a value"

    const/4 v3, 0x4

    iget-byte v4, p0, Lc2/h;->q:B

    iget v5, p0, Lc2/h;->v:I

    const/4 v6, 0x1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lx1/a;->e:Lc2/d;

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/l;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lc2/d;->n(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_6

    if-ne v0, v6, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/f;->a:Lcom/fasterxml/jackson/core/k;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/k;->writeObjectEntrySeparator(Lcom/fasterxml/jackson/core/f;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/f;->a:Lcom/fasterxml/jackson/core/k;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/k;->beforeObjectEntries(Lcom/fasterxml/jackson/core/f;)V

    :goto_0
    iget-boolean v0, p0, Lc2/b;->l:Z

    xor-int/2addr v0, v6

    if-eqz v0, :cond_2

    iget v1, p0, Lc2/h;->u:I

    if-lt v1, v5, :cond_1

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_1
    iget-object v1, p0, Lc2/h;->t:[B

    iget v2, p0, Lc2/h;->u:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lc2/h;->u:I

    aput-byte v4, v1, v2

    :cond_2
    iget-object v1, p0, Lc2/h;->t:[B

    iget v2, p0, Lc2/h;->u:I

    invoke-interface {p1, v1, v2}, Lcom/fasterxml/jackson/core/l;->appendQuotedUTF8([BI)I

    move-result v1

    if-gez v1, :cond_3

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/l;->asQuotedUTF8()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lc2/h;->o1([B)V

    goto :goto_1

    :cond_3
    iget p1, p0, Lc2/h;->u:I

    add-int/2addr p1, v1

    iput p1, p0, Lc2/h;->u:I

    :goto_1
    if-eqz v0, :cond_5

    iget p1, p0, Lc2/h;->u:I

    if-lt p1, v5, :cond_4

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_4
    iget-object p1, p0, Lc2/h;->t:[B

    iget v0, p0, Lc2/h;->u:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc2/h;->u:I

    aput-byte v4, p1, v0

    :cond_5
    return-void

    :cond_6
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/f;->a(Ljava/lang/String;)V

    throw v1

    :cond_7
    iget-object v0, p0, Lx1/a;->e:Lc2/d;

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/l;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lc2/d;->n(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_f

    if-ne v0, v6, :cond_9

    iget v0, p0, Lc2/h;->u:I

    if-lt v0, v5, :cond_8

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_8
    iget-object v0, p0, Lc2/h;->t:[B

    iget v1, p0, Lc2/h;->u:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc2/h;->u:I

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    :cond_9
    iget-boolean v0, p0, Lc2/b;->l:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lc2/h;->t:[B

    iget v1, p0, Lc2/h;->u:I

    invoke-interface {p1, v0, v1}, Lcom/fasterxml/jackson/core/l;->appendQuotedUTF8([BI)I

    move-result v0

    if-gez v0, :cond_a

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/l;->asQuotedUTF8()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lc2/h;->o1([B)V

    goto :goto_2

    :cond_a
    iget p1, p0, Lc2/h;->u:I

    add-int/2addr p1, v0

    iput p1, p0, Lc2/h;->u:I

    :goto_2
    return-void

    :cond_b
    iget v0, p0, Lc2/h;->u:I

    if-lt v0, v5, :cond_c

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_c
    iget-object v0, p0, Lc2/h;->t:[B

    iget v1, p0, Lc2/h;->u:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc2/h;->u:I

    aput-byte v4, v0, v1

    invoke-interface {p1, v0, v2}, Lcom/fasterxml/jackson/core/l;->appendQuotedUTF8([BI)I

    move-result v0

    if-gez v0, :cond_d

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/l;->asQuotedUTF8()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lc2/h;->o1([B)V

    goto :goto_3

    :cond_d
    iget p1, p0, Lc2/h;->u:I

    add-int/2addr p1, v0

    iput p1, p0, Lc2/h;->u:I

    :goto_3
    iget p1, p0, Lc2/h;->u:I

    if-lt p1, v5, :cond_e

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_e
    iget-object p1, p0, Lc2/h;->t:[B

    iget v0, p0, Lc2/h;->u:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc2/h;->u:I

    aput-byte v4, p1, v0

    return-void

    :cond_f
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/f;->a(Ljava/lang/String;)V

    throw v1
.end method

.method public final z0(Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/fasterxml/jackson/core/f;->a:Lcom/fasterxml/jackson/core/k;

    const/4 v1, 0x0

    iget v2, p0, Lc2/h;->y:I

    const-string v3, "Can not write a field name, expecting a value"

    const/4 v4, 0x4

    iget v5, p0, Lc2/h;->w:I

    iget-byte v6, p0, Lc2/h;->q:B

    const/4 v7, 0x0

    iget v8, p0, Lc2/h;->v:I

    const/4 v9, 0x1

    if-eqz v0, :cond_a

    iget-object v0, p0, Lx1/a;->e:Lc2/d;

    invoke-virtual {v0, p1}, Lc2/d;->n(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_9

    if-ne v0, v9, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/f;->a:Lcom/fasterxml/jackson/core/k;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/k;->writeObjectEntrySeparator(Lcom/fasterxml/jackson/core/f;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/f;->a:Lcom/fasterxml/jackson/core/k;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/k;->beforeObjectEntries(Lcom/fasterxml/jackson/core/f;)V

    :goto_0
    iget-boolean v0, p0, Lc2/b;->l:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v7}, Lc2/h;->v1(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_2

    invoke-virtual {p0, p1, v9}, Lc2/h;->v1(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_2
    iget v1, p0, Lc2/h;->u:I

    if-lt v1, v8, :cond_3

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_3
    iget-object v1, p0, Lc2/h;->t:[B

    iget v2, p0, Lc2/h;->u:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lc2/h;->u:I

    aput-byte v6, v1, v2

    iget-object v1, p0, Lc2/h;->x:[C

    invoke-virtual {p1, v7, v0, v1, v7}, Ljava/lang/String;->getChars(II[CI)V

    if-gt v0, v5, :cond_5

    iget p1, p0, Lc2/h;->u:I

    add-int/2addr p1, v0

    if-le p1, v8, :cond_4

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_4
    iget-object p1, p0, Lc2/h;->x:[C

    invoke-virtual {p0, v7, p1, v0}, Lc2/h;->u1(I[CI)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lc2/h;->x:[C

    :cond_6
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lc2/h;->u:I

    add-int/2addr v2, v1

    if-le v2, v8, :cond_7

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_7
    invoke-virtual {p0, v7, p1, v1}, Lc2/h;->u1(I[CI)V

    add-int/2addr v7, v1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_6

    :goto_1
    iget p1, p0, Lc2/h;->u:I

    if-lt p1, v8, :cond_8

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_8
    iget-object p1, p0, Lc2/h;->t:[B

    iget v0, p0, Lc2/h;->u:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc2/h;->u:I

    aput-byte v6, p1, v0

    :goto_2
    return-void

    :cond_9
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/f;->a(Ljava/lang/String;)V

    throw v1

    :cond_a
    iget-object v0, p0, Lx1/a;->e:Lc2/d;

    invoke-virtual {v0, p1}, Lc2/d;->n(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_14

    if-ne v0, v9, :cond_c

    iget v0, p0, Lc2/h;->u:I

    if-lt v0, v8, :cond_b

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_b
    iget-object v0, p0, Lc2/h;->t:[B

    iget v1, p0, Lc2/h;->u:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lc2/h;->u:I

    const/16 v3, 0x2c

    aput-byte v3, v0, v1

    :cond_c
    iget-boolean v0, p0, Lc2/b;->l:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0, p1, v7}, Lc2/h;->v1(Ljava/lang/String;Z)V

    return-void

    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_e

    invoke-virtual {p0, p1, v9}, Lc2/h;->v1(Ljava/lang/String;Z)V

    return-void

    :cond_e
    iget v1, p0, Lc2/h;->u:I

    if-lt v1, v8, :cond_f

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_f
    iget-object v1, p0, Lc2/h;->t:[B

    iget v2, p0, Lc2/h;->u:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lc2/h;->u:I

    aput-byte v6, v1, v2

    if-gt v0, v5, :cond_11

    add-int/2addr v3, v0

    if-le v3, v8, :cond_10

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_10
    invoke-virtual {p0, v7, v0, p1}, Lc2/h;->t1(IILjava/lang/String;)V

    goto :goto_3

    :cond_11
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lc2/h;->u:I

    add-int/2addr v2, v1

    if-le v2, v8, :cond_12

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_12
    invoke-virtual {p0, v7, v1, p1}, Lc2/h;->t1(IILjava/lang/String;)V

    add-int/2addr v7, v1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_11

    :goto_3
    iget p1, p0, Lc2/h;->u:I

    if-lt p1, v8, :cond_13

    invoke-virtual {p0}, Lc2/h;->i1()V

    :cond_13
    iget-object p1, p0, Lc2/h;->t:[B

    iget v0, p0, Lc2/h;->u:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc2/h;->u:I

    aput-byte v6, p1, v0

    return-void

    :cond_14
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/f;->a(Ljava/lang/String;)V

    throw v1
.end method
