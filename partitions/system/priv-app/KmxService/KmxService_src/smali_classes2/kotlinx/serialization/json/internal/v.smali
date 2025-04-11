.class public final Lkotlinx/serialization/json/internal/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Lv/c;

.field public c:Ljava/lang/String;

.field public final d:Ljava/lang/StringBuilder;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lv/c;

    invoke-direct {v0}, Lv/c;-><init>()V

    iput-object v0, p0, Lkotlinx/serialization/json/internal/v;->b:Lv/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lkotlinx/serialization/json/internal/v;->d:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lkotlinx/serialization/json/internal/v;->e:Ljava/lang/String;

    return-void
.end method

.method public static synthetic p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    iget p2, p0, Lkotlinx/serialization/json/internal/v;->a:I

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const-string p3, ""

    :cond_1
    invoke-virtual {p0, p2, p1, p3}, Lkotlinx/serialization/json/internal/v;->o(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a(ILjava/lang/String;)I
    .locals 3

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    iput p1, p0, Lkotlinx/serialization/json/internal/v;->a:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v0, p1, :cond_0

    iget p1, p0, Lkotlinx/serialization/json/internal/v;->a:I

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/v;->a(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x6

    const-string v0, "Unexpected EOF during unicode escape"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1, p2}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/v;->r(ILjava/lang/String;)I

    move-result v1

    shl-int/lit8 v1, v1, 0xc

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2, p2}, Lkotlinx/serialization/json/internal/v;->r(ILjava/lang/String;)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2, p2}, Lkotlinx/serialization/json/internal/v;->r(ILjava/lang/String;)I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/v;->r(ILjava/lang/String;)I

    move-result p1

    add-int/2addr p1, v1

    int-to-char p1, p1

    iget-object p0, p0, Lkotlinx/serialization/json/internal/v;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    return v0
.end method

.method public final b()Z
    .locals 4

    iget v0, p0, Lkotlinx/serialization/json/internal/v;->a:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    :goto_0
    iget-object v1, p0, Lkotlinx/serialization/json/internal/v;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x20

    if-eq v1, v3, :cond_8

    const/16 v3, 0xa

    if-eq v1, v3, :cond_8

    const/16 v3, 0xd

    if-eq v1, v3, :cond_8

    const/16 v3, 0x9

    if-ne v1, v3, :cond_1

    goto :goto_6

    :cond_1
    iput v0, p0, Lkotlinx/serialization/json/internal/v;->a:I

    const/16 p0, 0x7d

    const/4 v0, 0x1

    if-ne v1, p0, :cond_2

    goto :goto_1

    :cond_2
    const/16 p0, 0x5d

    if-ne v1, p0, :cond_3

    :goto_1
    move p0, v0

    goto :goto_2

    :cond_3
    move p0, v2

    :goto_2
    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    const/16 p0, 0x3a

    if-ne v1, p0, :cond_5

    :goto_3
    move p0, v0

    goto :goto_4

    :cond_5
    move p0, v2

    :goto_4
    if-eqz p0, :cond_6

    goto :goto_5

    :cond_6
    const/16 p0, 0x2c

    if-ne v1, p0, :cond_7

    :goto_5
    move v2, v0

    :cond_7
    xor-int p0, v0, v2

    return p0

    :cond_8
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    iput v0, p0, Lkotlinx/serialization/json/internal/v;->a:I

    return v2
.end method

.method public final c(I)Z
    .locals 5

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/v;->t(I)I

    move-result p1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/v;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ge p1, v1, :cond_2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    or-int/lit8 p1, p1, 0x20

    const/16 v0, 0x66

    if-eq p1, v0, :cond_1

    const/16 v0, 0x74

    if-ne p1, v0, :cond_0

    const-string p1, "rue"

    invoke-virtual {p0, v1, p1}, Lkotlinx/serialization/json/internal/v;->d(ILjava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Expected valid boolean literal prefix, but had \'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3, v4, v2}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v4

    :cond_1
    const-string p1, "alse"

    invoke-virtual {p0, v1, p1}, Lkotlinx/serialization/json/internal/v;->d(ILjava/lang/String;)V

    :goto_0
    return v3

    :cond_2
    const-string p1, "EOF"

    invoke-static {p0, p1, v3, v4, v2}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v4
.end method

.method public final d(ILjava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lkotlinx/serialization/json/internal/v;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-lt v1, v2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int v7, p1, v2

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    or-int/lit8 v7, v7, 0x20

    if-ne v6, v7, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Expected valid boolean literal prefix, but had \'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v;->l()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x27

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v4, v5, v3}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Lkotlinx/serialization/json/internal/v;->a:I

    return-void

    :cond_2
    const-string p1, "Unexpected end of boolean literal"

    invoke-static {p0, p1, v4, v5, v3}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5
.end method

.method public final e()Ljava/lang/String;
    .locals 14

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/v;->i(C)V

    iget v1, p0, Lkotlinx/serialization/json/internal/v;->a:I

    iget-object v2, p0, Lkotlinx/serialization/json/internal/v;->e:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v2, v0, v1, v3, v4}, Lkotlin/text/s;->T(Ljava/lang/CharSequence;CIZI)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-eq v5, v7, :cond_c

    move v9, v1

    :goto_0
    if-ge v9, v5, :cond_b

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x5c

    if-ne v10, v11, :cond_a

    iget v1, p0, Lkotlinx/serialization/json/internal/v;->a:I

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v10, v3

    :goto_1
    if-eq v5, v0, :cond_8

    const-string v12, "EOF"

    iget-object v13, p0, Lkotlinx/serialization/json/internal/v;->d:Ljava/lang/StringBuilder;

    if-ne v5, v11, :cond_5

    invoke-virtual {v13, v2, v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p0, v9}, Lkotlinx/serialization/json/internal/v;->t(I)I

    move-result v1

    const/4 v5, 0x6

    if-eq v1, v7, :cond_4

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v10, 0x75

    if-ne v1, v10, :cond_0

    invoke-virtual {p0, v9, v2}, Lkotlinx/serialization/json/internal/v;->a(ILjava/lang/String;)I

    move-result v9

    goto :goto_3

    :cond_0
    if-ge v1, v10, :cond_1

    sget-object v10, Lkotlinx/serialization/json/internal/d;->a:[C

    aget-char v10, v10, v1

    goto :goto_2

    :cond_1
    move v10, v3

    :goto_2
    if-eqz v10, :cond_3

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {p0, v9}, Lkotlinx/serialization/json/internal/v;->t(I)I

    move-result v1

    if-eq v1, v7, :cond_2

    goto :goto_4

    :cond_2
    invoke-static {p0, v12, v1, v6, v4}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v6

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid escaped char \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3, v6, v5}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v6

    :cond_4
    const-string v0, "Expected escape sequence to continue, got EOF"

    invoke-static {p0, v0, v3, v6, v5}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v6

    :cond_5
    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v9, v5, :cond_7

    invoke-virtual {v13, v2, v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Lkotlinx/serialization/json/internal/v;->t(I)I

    move-result v1

    if-eq v1, v7, :cond_6

    :goto_4
    move v9, v1

    move v10, v8

    goto :goto_5

    :cond_6
    invoke-static {p0, v12, v1, v6, v4}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v6

    :cond_7
    :goto_5
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_1

    :cond_8
    if-nez v10, :cond_9

    invoke-virtual {v2, v1, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_9
    invoke-virtual {p0, v1, v9}, Lkotlinx/serialization/json/internal/v;->n(II)Ljava/lang/String;

    move-result-object v0

    :goto_6
    add-int/2addr v9, v8

    iput v9, p0, Lkotlinx/serialization/json/internal/v;->a:I

    return-object v0

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v0, v5, 0x1

    iput v0, p0, Lkotlinx/serialization/json/internal/v;->a:I

    invoke-virtual {v2, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p0, v0}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_c
    invoke-virtual {p0, v8}, Lkotlinx/serialization/json/internal/v;->q(B)V

    throw v6
.end method

.method public final f(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    const-string v0, "keyToMatch"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lkotlinx/serialization/json/internal/v;->a:I

    :try_start_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v;->g()B

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    iput v0, p0, Lkotlinx/serialization/json/internal/v;->a:I

    return-object v3

    :cond_0
    if-eqz p2, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v;->e()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v;->m()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1, p1}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v;->g()B

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    iput v0, p0, Lkotlinx/serialization/json/internal/v;->a:I

    return-object v3

    :cond_2
    if-eqz p2, :cond_3

    :try_start_2
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v;->k()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v;->m()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    iput v0, p0, Lkotlinx/serialization/json/internal/v;->a:I

    return-object p1

    :cond_4
    iput v0, p0, Lkotlinx/serialization/json/internal/v;->a:I

    return-object v3

    :catchall_0
    move-exception p1

    iput v0, p0, Lkotlinx/serialization/json/internal/v;->a:I

    throw p1
.end method

.method public final g()B
    .locals 3

    :cond_0
    iget v0, p0, Lkotlinx/serialization/json/internal/v;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lkotlinx/serialization/json/internal/v;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget v0, p0, Lkotlinx/serialization/json/internal/v;->a:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lkotlinx/serialization/json/internal/v;->a:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lh3/a;->i(C)B

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return v0

    :cond_1
    const/16 p0, 0xa

    return p0
.end method

.method public final h(B)B
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v;->g()B

    move-result v0

    if-ne v0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/v;->q(B)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final i(C)V
    .locals 4

    iget v0, p0, Lkotlinx/serialization/json/internal/v;->a:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    :cond_0
    :goto_0
    iget v0, p0, Lkotlinx/serialization/json/internal/v;->a:I

    iget-object v1, p0, Lkotlinx/serialization/json/internal/v;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget v0, p0, Lkotlinx/serialization/json/internal/v;->a:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lkotlinx/serialization/json/internal/v;->a:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/v;->y(C)V

    throw v2

    :cond_3
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/v;->y(C)V

    throw v2

    :cond_4
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/v;->y(C)V

    throw v2
.end method

.method public final j()J
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/v;->u()I

    move-result v1

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/v;->t(I)I

    move-result v1

    iget-object v2, v0, Lkotlinx/serialization/json/internal/v;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "EOF"

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-ge v1, v3, :cond_10

    const/4 v3, -0x1

    if-eq v1, v3, :cond_10

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v8, 0x22

    if-ne v3, v8, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, v4, v6, v7, v5}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v7

    :cond_1
    move v3, v6

    :goto_0
    move v13, v1

    move v14, v6

    const-wide/16 v8, 0x0

    const/4 v12, 0x1

    :goto_1
    const-string v15, "Numeric value overflow"

    if-eqz v12, :cond_8

    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_3

    if-ne v13, v1, :cond_2

    add-int/lit8 v13, v13, 0x1

    const/4 v14, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "Unexpected symbol \'-\' in numeric literal"

    invoke-static {v0, v1, v6, v7, v5}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v7

    :cond_3
    invoke-static {v10}, Lh3/a;->i(C)B

    move-result v11

    if-nez v11, :cond_8

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-eq v13, v11, :cond_4

    const/4 v12, 0x1

    goto :goto_2

    :cond_4
    move v12, v6

    :goto_2
    add-int/lit8 v11, v10, -0x30

    const/16 v5, 0xa

    if-ltz v11, :cond_5

    if-ge v11, v5, :cond_5

    const/16 v16, 0x1

    goto :goto_3

    :cond_5
    move/from16 v16, v6

    :goto_3
    if-eqz v16, :cond_7

    int-to-long v6, v5

    mul-long/2addr v8, v6

    int-to-long v5, v11

    sub-long/2addr v8, v5

    const-wide/16 v5, 0x0

    cmp-long v7, v8, v5

    if-gtz v7, :cond_6

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_1

    :cond_6
    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v0, v15, v8, v9, v7}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v9

    :cond_7
    move v8, v6

    move-object v9, v7

    const/4 v7, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected symbol \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\' in numeric literal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8, v9, v7}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v9

    :cond_8
    if-eq v1, v13, :cond_f

    if-eqz v14, :cond_9

    add-int/lit8 v5, v13, -0x1

    if-eq v1, v5, :cond_f

    :cond_9
    if-eqz v3, :cond_c

    if-eqz v12, :cond_b

    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_a

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_a
    const-string v1, "Expected closing quotation mark"

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v1, v3, v5, v2}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5

    :cond_b
    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v4, v3, v5, v2}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5

    :cond_c
    :goto_4
    const/4 v5, 0x0

    iput v13, v0, Lkotlinx/serialization/json/internal/v;->a:I

    if-eqz v14, :cond_d

    goto :goto_5

    :cond_d
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v1, v8, v1

    if-eqz v1, :cond_e

    neg-long v8, v8

    :goto_5
    return-wide v8

    :cond_e
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v0, v15, v2, v5, v1}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5

    :cond_f
    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v5, 0x0

    const-string v3, "Expected numeric literal"

    invoke-static {v0, v3, v2, v5, v1}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5

    :cond_10
    move v1, v5

    move v2, v6

    move-object v5, v7

    invoke-static {v0, v4, v2, v5, v1}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5
.end method

.method public final k()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lkotlinx/serialization/json/internal/v;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Li4/f;->g(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lkotlinx/serialization/json/internal/v;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v;->e()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lkotlinx/serialization/json/internal/v;->c:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Li4/f;->g(Ljava/lang/Object;)V

    iput-object v1, p0, Lkotlinx/serialization/json/internal/v;->c:Ljava/lang/String;

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v;->u()I

    move-result v0

    iget-object v2, p0, Lkotlinx/serialization/json/internal/v;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_7

    const/4 v3, -0x1

    if-eq v0, v3, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lh3/a;->i(C)B

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    if-nez v4, :cond_6

    move v1, v6

    :cond_2
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lh3/a;->i(C)B

    move-result v4

    if-nez v4, :cond_4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_2

    iget v1, p0, Lkotlinx/serialization/json/internal/v;->a:I

    iget-object v4, p0, Lkotlinx/serialization/json/internal/v;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/v;->t(I)I

    move-result v1

    if-ne v1, v3, :cond_3

    iput v0, p0, Lkotlinx/serialization/json/internal/v;->a:I

    invoke-virtual {p0, v6, v6}, Lkotlinx/serialization/json/internal/v;->n(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move v0, v1

    move v1, v5

    goto :goto_0

    :cond_4
    iget v3, p0, Lkotlinx/serialization/json/internal/v;->a:I

    if-nez v1, :cond_5

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v3, v0}, Lkotlinx/serialization/json/internal/v;->n(II)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput v0, p0, Lkotlinx/serialization/json/internal/v;->a:I

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected beginning of the string, but got "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {p0, v0, v6, v1, v2}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v1

    :cond_7
    const-string v2, "EOF"

    const/4 v3, 0x4

    invoke-static {p0, v2, v0, v1, v3}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v1
.end method

.method public final m()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-static {v0, v1}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lkotlinx/serialization/json/internal/v;->a:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget-object v3, p0, Lkotlinx/serialization/json/internal/v;->e:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x22

    const/4 v4, 0x0

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "Unexpected \'null\' value instead of string literal"

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p0, v0, v4, v2, v1}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v2

    :cond_2
    :goto_1
    return-object v0
.end method

.method public final n(II)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/v;->e:Ljava/lang/String;

    iget-object p0, p0, Lkotlinx/serialization/json/internal/v;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "escapedString.toString()"

    invoke-static {p1, p2}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    return-object p1
.end method

.method public final o(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hint"

    invoke-static {p3, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string p3, ""

    goto :goto_1

    :cond_1
    const-string v0, "\n"

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_1
    const-string v0, " at path: "

    invoke-static {p2, v0}, Landroidx/activity/b;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lkotlinx/serialization/json/internal/v;->b:Lv/c;

    invoke-virtual {v0}, Lv/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lkotlinx/serialization/json/internal/v;->e:Ljava/lang/String;

    invoke-static {p1, p2, p0}, Lv9/a;->e(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0
.end method

.method public final q(B)V
    .locals 5

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string p1, "quotation mark \'\"\'"

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    const-string p1, "comma \',\'"

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    if-ne p1, v2, :cond_2

    const-string p1, "colon \':\'"

    goto :goto_0

    :cond_2
    const/4 v2, 0x6

    if-ne p1, v2, :cond_3

    const-string p1, "start of the object \'{\'"

    goto :goto_0

    :cond_3
    const/4 v2, 0x7

    if-ne p1, v2, :cond_4

    const-string p1, "end of the object \'}\'"

    goto :goto_0

    :cond_4
    const/16 v2, 0x8

    if-ne p1, v2, :cond_5

    const-string p1, "start of the array \'[\'"

    goto :goto_0

    :cond_5
    const/16 v2, 0x9

    if-ne p1, v2, :cond_6

    const-string p1, "end of the array \']\'"

    goto :goto_0

    :cond_6
    const-string p1, "valid token"

    :goto_0
    iget v2, p0, Lkotlinx/serialization/json/internal/v;->a:I

    iget-object v3, p0, Lkotlinx/serialization/json/internal/v;->e:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v2, v4, :cond_8

    iget v2, p0, Lkotlinx/serialization/json/internal/v;->a:I

    if-gtz v2, :cond_7

    goto :goto_1

    :cond_7
    sub-int/2addr v2, v1

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_8
    :goto_1
    const-string v1, "EOF"

    :goto_2
    const-string v2, "Expected "

    const-string v3, ", but had \'"

    const-string v4, "\' instead"

    invoke-static {v2, p1, v3, v1, v4}, Landroidx/activity/b;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lkotlinx/serialization/json/internal/v;->a:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v2
.end method

.method public final r(ILjava/lang/String;)I
    .locals 3

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/16 v1, 0x30

    if-gt v1, p1, :cond_0

    const/16 v2, 0x3a

    if-ge p1, v2, :cond_0

    move v2, p2

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    sub-int/2addr p1, v1

    goto :goto_4

    :cond_1
    const/16 v1, 0x61

    if-gt v1, p1, :cond_2

    const/16 v2, 0x67

    if-ge p1, v2, :cond_2

    move v2, p2

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    const/16 v1, 0x41

    if-gt v1, p1, :cond_4

    const/16 v2, 0x47

    if-ge p1, v2, :cond_4

    goto :goto_2

    :cond_4
    move p2, v0

    :goto_2
    if-eqz p2, :cond_5

    :goto_3
    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0xa

    :goto_4
    return p1

    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Invalid toHexChar char \'"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\' in unicode escape"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v1
.end method

.method public final s()B
    .locals 4

    iget v0, p0, Lkotlinx/serialization/json/internal/v;->a:I

    :goto_0
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/v;->t(I)I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0xa

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lkotlinx/serialization/json/internal/v;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x20

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iput v0, p0, Lkotlinx/serialization/json/internal/v;->a:I

    invoke-static {v1}, Lh3/a;->i(C)B

    move-result v2

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput v0, p0, Lkotlinx/serialization/json/internal/v;->a:I

    :goto_2
    return v2
.end method

.method public final t(I)I
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/v;->e:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ge p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v;->v()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()I
    .locals 3

    iget v0, p0, Lkotlinx/serialization/json/internal/v;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lkotlinx/serialization/json/internal/v;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput v0, p0, Lkotlinx/serialization/json/internal/v;->a:I

    return v0
.end method

.method public final v()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JsonReader(source=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkotlinx/serialization/json/internal/v;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', currentPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lkotlinx/serialization/json/internal/v;->a:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/activity/b;->q(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final w()Z
    .locals 4

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v;->u()I

    move-result v0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/v;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_1

    iget v0, p0, Lkotlinx/serialization/json/internal/v;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lkotlinx/serialization/json/internal/v;->a:I

    return v1

    :cond_1
    :goto_0
    return v3
.end method

.method public final x()Z
    .locals 9

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v;->u()I

    move-result v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/v;->t(I)I

    move-result v0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/v;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-lt v2, v3, :cond_4

    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_2

    const-string v7, "null"

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int v8, v0, v6

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    if-le v2, v3, :cond_3

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lh3/a;->i(C)B

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    add-int/2addr v0, v3

    iput v0, p0, Lkotlinx/serialization/json/internal/v;->a:I

    move v4, v5

    :cond_4
    :goto_1
    return v4
.end method

.method public final y(C)V
    .locals 3

    iget v0, p0, Lkotlinx/serialization/json/internal/v;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlinx/serialization/json/internal/v;->a:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/16 v0, 0x22

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v;->l()Ljava/lang/String;

    move-result-object v0

    const-string v2, "null"

    invoke-static {v0, v2}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p0, Lkotlinx/serialization/json/internal/v;->a:I

    add-int/lit8 p1, p1, -0x4

    const-string v0, "Use \'coerceInputValues = true\' in \'Json {}` builder to coerce nulls to default values."

    const-string v2, "Expected string literal but \'null\' literal was found"

    invoke-virtual {p0, p1, v2, v0}, Lkotlinx/serialization/json/internal/v;->o(ILjava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p1}, Lh3/a;->i(C)B

    move-result p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/v;->q(B)V

    throw v1
.end method
