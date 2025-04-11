.class public final Lkotlinx/serialization/json/internal/r;
.super Ll9/b;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/json/j;


# instance fields
.field public final h:Lkotlinx/serialization/json/b;

.field public final i:Lkotlinx/serialization/json/internal/WriteMode;

.field public final j:Lkotlinx/serialization/json/internal/v;

.field public final k:Lkotlinx/serialization/modules/b;

.field public l:I

.field public m:Ll6/l;

.field public final n:Lkotlinx/serialization/json/i;

.field public final o:Lkotlinx/serialization/json/internal/i;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/b;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/v;Lkotlinx/serialization/descriptors/g;Ll6/l;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lexer"

    invoke-static {p3, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p4, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ll9/b;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/r;->h:Lkotlinx/serialization/json/b;

    iput-object p2, p0, Lkotlinx/serialization/json/internal/r;->i:Lkotlinx/serialization/json/internal/WriteMode;

    iput-object p3, p0, Lkotlinx/serialization/json/internal/r;->j:Lkotlinx/serialization/json/internal/v;

    iget-object p2, p1, Lkotlinx/serialization/json/b;->b:Lkotlinx/serialization/modules/b;

    iput-object p2, p0, Lkotlinx/serialization/json/internal/r;->k:Lkotlinx/serialization/modules/b;

    const/4 p2, -0x1

    iput p2, p0, Lkotlinx/serialization/json/internal/r;->l:I

    iput-object p5, p0, Lkotlinx/serialization/json/internal/r;->m:Ll6/l;

    iget-object p1, p1, Lkotlinx/serialization/json/b;->a:Lkotlinx/serialization/json/i;

    iput-object p1, p0, Lkotlinx/serialization/json/internal/r;->n:Lkotlinx/serialization/json/i;

    iget-boolean p1, p1, Lkotlinx/serialization/json/i;->f:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlinx/serialization/json/internal/i;

    invoke-direct {p1, p4}, Lkotlinx/serialization/json/internal/i;-><init>(Lkotlinx/serialization/descriptors/g;)V

    :goto_0
    iput-object p1, p0, Lkotlinx/serialization/json/internal/r;->o:Lkotlinx/serialization/json/internal/i;

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 0

    return-void
.end method

.method public final B()S
    .locals 5

    iget-object p0, p0, Lkotlinx/serialization/json/internal/r;->j:Lkotlinx/serialization/json/internal/v;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v;->j()J

    move-result-wide v0

    long-to-int v2, v0

    int-to-short v2, v2

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse short for input \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v3, v2}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3
.end method

.method public final C(Lkotlinx/serialization/descriptors/g;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p3, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/r;->i:Lkotlinx/serialization/json/internal/WriteMode;

    sget-object v1, Lkotlinx/serialization/json/internal/WriteMode;->MAP:Lkotlinx/serialization/json/internal/WriteMode;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x2

    iget-object v3, p0, Lkotlinx/serialization/json/internal/r;->j:Lkotlinx/serialization/json/internal/v;

    if-eqz v0, :cond_1

    iget-object v4, v3, Lkotlinx/serialization/json/internal/v;->b:Lv/c;

    iget-object v5, v4, Lv/c;->d:Ljava/lang/Object;

    check-cast v5, [I

    iget v6, v4, Lv/c;->b:I

    aget v5, v5, v6

    if-ne v5, v1, :cond_1

    iget-object v4, v4, Lv/c;->c:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    sget-object v5, Le9/a;->d:Le9/a;

    aput-object v5, v4, v6

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Ll9/b;->C(Lkotlinx/serialization/descriptors/g;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz v0, :cond_3

    iget-object p1, v3, Lkotlinx/serialization/json/internal/v;->b:Lv/c;

    iget-object p2, p1, Lv/c;->d:Ljava/lang/Object;

    check-cast p2, [I

    iget p3, p1, Lv/c;->b:I

    aget p2, p2, p3

    if-eq p2, v1, :cond_2

    add-int/2addr p3, v2

    iput p3, p1, Lv/c;->b:I

    iget-object p2, p1, Lv/c;->c:Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    array-length p2, p2

    if-ne p3, p2, :cond_2

    invoke-virtual {p1}, Lv/c;->e()V

    :cond_2
    iget-object p2, p1, Lv/c;->c:Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    iget p3, p1, Lv/c;->b:I

    aput-object p0, p2, p3

    iget-object p1, p1, Lv/c;->d:Ljava/lang/Object;

    check-cast p1, [I

    aput v1, p1, p3

    :cond_3
    return-object p0
.end method

.method public final D()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/r;->n:Lkotlinx/serialization/json/i;

    iget-boolean v0, v0, Lkotlinx/serialization/json/i;->c:Z

    iget-object p0, p0, Lkotlinx/serialization/json/internal/r;->j:Lkotlinx/serialization/json/internal/v;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v;->m()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v;->k()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final E()F
    .locals 5

    iget-object v0, p0, Lkotlinx/serialization/json/internal/r;->j:Lkotlinx/serialization/json/internal/v;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/v;->l()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/r;->h:Lkotlinx/serialization/json/b;

    iget-object p0, p0, Lkotlinx/serialization/json/b;->a:Lkotlinx/serialization/json/i;

    iget-boolean p0, p0, Lkotlinx/serialization/json/i;->k:Z

    if-nez p0, :cond_2

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {v0, p0}, Lv9/a;->c0(Lkotlinx/serialization/json/internal/v;Ljava/lang/Number;)V

    throw v3

    :cond_2
    :goto_0
    return v1

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v4, "Failed to parse type \'float\' for input \'"

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x6

    invoke-static {v0, p0, v2, v3, v1}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3
.end method

.method public final F()D
    .locals 6

    iget-object v0, p0, Lkotlinx/serialization/json/internal/r;->j:Lkotlinx/serialization/json/internal/v;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/v;->l()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/r;->h:Lkotlinx/serialization/json/b;

    iget-object p0, p0, Lkotlinx/serialization/json/b;->a:Lkotlinx/serialization/json/i;

    iget-boolean p0, p0, Lkotlinx/serialization/json/i;->k:Z

    if-nez p0, :cond_2

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {v0, p0}, Lv9/a;->c0(Lkotlinx/serialization/json/internal/v;Ljava/lang/Number;)V

    throw v3

    :cond_2
    :goto_0
    return-wide v4

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v4, "Failed to parse type \'double\' for input \'"

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x6

    invoke-static {v0, p0, v2, v3, v1}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3
.end method

.method public final a(Lkotlinx/serialization/descriptors/g;)Lzb/a;
    .locals 7

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/r;->h:Lkotlinx/serialization/json/b;

    invoke-static {p1, v0}, Li4/f;->K(Lkotlinx/serialization/descriptors/g;Lkotlinx/serialization/json/b;)Lkotlinx/serialization/json/internal/WriteMode;

    move-result-object v3

    iget-object v1, p0, Lkotlinx/serialization/json/internal/r;->j:Lkotlinx/serialization/json/internal/v;

    iget-object v2, v1, Lkotlinx/serialization/json/internal/v;->b:Lv/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v2, Lv/c;->b:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v2, Lv/c;->b:I

    iget-object v6, v2, Lv/c;->c:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    array-length v6, v6

    if-ne v4, v6, :cond_0

    invoke-virtual {v2}, Lv/c;->e()V

    :cond_0
    iget-object v2, v2, Lv/c;->c:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    iget-char v2, v3, Lkotlinx/serialization/json/internal/WriteMode;->begin:C

    invoke-virtual {v1, v2}, Lkotlinx/serialization/json/internal/v;->i(C)V

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/v;->s()B

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_3

    sget-object v1, Lkotlinx/serialization/json/internal/q;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v5, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lkotlinx/serialization/json/internal/r;->i:Lkotlinx/serialization/json/internal/WriteMode;

    if-ne v1, v3, :cond_1

    iget-object v0, v0, Lkotlinx/serialization/json/b;->a:Lkotlinx/serialization/json/i;

    iget-boolean v0, v0, Lkotlinx/serialization/json/i;->f:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lkotlinx/serialization/json/internal/r;

    iget-object v2, p0, Lkotlinx/serialization/json/internal/r;->h:Lkotlinx/serialization/json/b;

    iget-object v4, p0, Lkotlinx/serialization/json/internal/r;->j:Lkotlinx/serialization/json/internal/v;

    iget-object v6, p0, Lkotlinx/serialization/json/internal/r;->m:Ll6/l;

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/json/internal/r;-><init>(Lkotlinx/serialization/json/b;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/v;Lkotlinx/serialization/descriptors/g;Ll6/l;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lkotlinx/serialization/json/internal/r;

    iget-object v2, p0, Lkotlinx/serialization/json/internal/r;->h:Lkotlinx/serialization/json/b;

    iget-object v4, p0, Lkotlinx/serialization/json/internal/r;->j:Lkotlinx/serialization/json/internal/v;

    iget-object v6, p0, Lkotlinx/serialization/json/internal/r;->m:Ll6/l;

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/json/internal/r;-><init>(Lkotlinx/serialization/json/b;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/v;Lkotlinx/serialization/descriptors/g;Ll6/l;)V

    :goto_0
    move-object p0, v0

    :goto_1
    return-object p0

    :cond_3
    const/4 p0, 0x0

    const/4 p1, 0x6

    const-string v0, "Unexpected leading comma"

    const/4 v2, 0x0

    invoke-static {v1, v0, p0, v2, p1}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v2
.end method

.method public final b(Lkotlinx/serialization/descriptors/g;)V
    .locals 4

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/r;->h:Lkotlinx/serialization/json/b;

    iget-object v0, v0, Lkotlinx/serialization/json/b;->a:Lkotlinx/serialization/json/i;

    iget-boolean v0, v0, Lkotlinx/serialization/json/i;->b:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/g;->d()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/r;->m(Lkotlinx/serialization/descriptors/g;)I

    move-result v0

    if-ne v0, v1, :cond_0

    :cond_1
    iget-object p1, p0, Lkotlinx/serialization/json/internal/r;->i:Lkotlinx/serialization/json/internal/WriteMode;

    iget-char p1, p1, Lkotlinx/serialization/json/internal/WriteMode;->end:C

    iget-object p0, p0, Lkotlinx/serialization/json/internal/r;->j:Lkotlinx/serialization/json/internal/v;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/v;->i(C)V

    iget-object p0, p0, Lkotlinx/serialization/json/internal/v;->b:Lv/c;

    iget p1, p0, Lv/c;->b:I

    iget-object v0, p0, Lv/c;->d:Ljava/lang/Object;

    check-cast v0, [I

    aget v2, v0, p1

    const/4 v3, -0x2

    if-ne v2, v3, :cond_2

    aput v1, v0, p1

    add-int/2addr p1, v1

    iput p1, p0, Lv/c;->b:I

    :cond_2
    iget p1, p0, Lv/c;->b:I

    if-eq p1, v1, :cond_3

    add-int/2addr p1, v1

    iput p1, p0, Lv/c;->b:I

    :cond_3
    return-void
.end method

.method public final c()Lkotlinx/serialization/modules/b;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/r;->k:Lkotlinx/serialization/modules/b;

    return-object p0
.end method

.method public final d()J
    .locals 2

    iget-object p0, p0, Lkotlinx/serialization/json/internal/r;->j:Lkotlinx/serialization/json/internal/v;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()Z
    .locals 10

    iget-object v0, p0, Lkotlinx/serialization/json/internal/r;->n:Lkotlinx/serialization/json/i;

    iget-boolean v0, v0, Lkotlinx/serialization/json/i;->c:Z

    iget-object p0, p0, Lkotlinx/serialization/json/internal/r;->j:Lkotlinx/serialization/json/internal/v;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v;->u()I

    move-result v0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/v;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "EOF"

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eq v0, v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v7, 0x1

    const/16 v8, 0x22

    if-ne v2, v8, :cond_0

    add-int/lit8 v0, v0, 0x1

    move v2, v7

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/v;->c(I)Z

    move-result v0

    if-eqz v2, :cond_5

    iget v2, p0, Lkotlinx/serialization/json/internal/v;->a:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v2, v9, :cond_2

    iget v2, p0, Lkotlinx/serialization/json/internal/v;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_1

    iget v1, p0, Lkotlinx/serialization/json/internal/v;->a:I

    add-int/2addr v1, v7

    iput v1, p0, Lkotlinx/serialization/json/internal/v;->a:I

    goto :goto_1

    :cond_1
    const-string v0, "Expected closing quotation mark"

    invoke-static {p0, v0, v5, v6, v4}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v6

    :cond_2
    invoke-static {p0, v3, v5, v6, v4}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v6

    :cond_3
    invoke-static {p0, v3, v5, v6, v4}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v6

    :cond_4
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v;->u()I

    move-result v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/v;->c(I)Z

    move-result v0

    :cond_5
    :goto_1
    return v0
.end method

.method public final i()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/r;->o:Lkotlinx/serialization/json/internal/i;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lkotlinx/serialization/json/internal/i;->b:Z

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-nez v1, :cond_1

    iget-object p0, p0, Lkotlinx/serialization/json/internal/r;->j:Lkotlinx/serialization/json/internal/v;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v;->x()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final k()C
    .locals 4

    iget-object p0, p0, Lkotlinx/serialization/json/internal/r;->j:Lkotlinx/serialization/json/internal/v;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected single char, but got \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p0, v0, v3, v2, v1}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v2
.end method

.method public final l(Lkotlinx/serialization/descriptors/g;)I
    .locals 3

    const-string v0, "enumDescriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/r;->D()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/r;->j:Lkotlinx/serialization/json/internal/v;

    iget-object v1, v1, Lkotlinx/serialization/json/internal/v;->b:Lv/c;

    invoke-virtual {v1}, Lv/c;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, " at path "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lkotlinx/serialization/json/internal/r;->h:Lkotlinx/serialization/json/b;

    invoke-static {p1, p0, v0, v1}, Lkotlinx/serialization/json/internal/j;->c(Lkotlinx/serialization/descriptors/g;Lkotlinx/serialization/json/b;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final m(Lkotlinx/serialization/descriptors/g;)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "descriptor"

    invoke-static {v1, v2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlinx/serialization/json/internal/q;->a:[I

    iget-object v3, v0, Lkotlinx/serialization/json/internal/r;->i:Lkotlinx/serialization/json/internal/WriteMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    const/16 v4, 0x3a

    const-string v5, "Unexpected trailing comma"

    const/4 v6, 0x4

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    iget-object v11, v0, Lkotlinx/serialization/json/internal/r;->j:Lkotlinx/serialization/json/internal/v;

    const/4 v12, -0x1

    const/4 v13, 0x1

    if-eq v2, v10, :cond_28

    if-eq v2, v6, :cond_4

    invoke-virtual {v11}, Lkotlinx/serialization/json/internal/v;->w()Z

    move-result v1

    invoke-virtual {v11}, Lkotlinx/serialization/json/internal/v;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v0, Lkotlinx/serialization/json/internal/r;->l:I

    if-eq v2, v12, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Expected end of the array or comma"

    invoke-static {v11, v0, v8, v9, v7}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v9

    :cond_1
    :goto_0
    add-int/lit8 v12, v2, 0x1

    iput v12, v0, Lkotlinx/serialization/json/internal/r;->l:I

    goto/16 :goto_1b

    :cond_2
    if-nez v1, :cond_3

    goto/16 :goto_1b

    :cond_3
    invoke-static {v11, v5, v8, v9, v7}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v9

    :cond_4
    invoke-virtual {v11}, Lkotlinx/serialization/json/internal/v;->w()Z

    move-result v2

    :goto_1
    invoke-virtual {v11}, Lkotlinx/serialization/json/internal/v;->b()Z

    move-result v6

    iget-object v7, v0, Lkotlinx/serialization/json/internal/r;->o:Lkotlinx/serialization/json/internal/i;

    if-eqz v6, :cond_21

    iget-object v2, v0, Lkotlinx/serialization/json/internal/r;->n:Lkotlinx/serialization/json/i;

    iget-boolean v6, v2, Lkotlinx/serialization/json/i;->c:Z

    if-eqz v6, :cond_5

    invoke-virtual {v11}, Lkotlinx/serialization/json/internal/v;->m()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_5
    invoke-virtual {v11}, Lkotlinx/serialization/json/internal/v;->e()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v11, v4}, Lkotlinx/serialization/json/internal/v;->i(C)V

    iget-object v4, v0, Lkotlinx/serialization/json/internal/r;->h:Lkotlinx/serialization/json/b;

    invoke-static {v1, v4, v6}, Lkotlinx/serialization/json/internal/j;->b(Lkotlinx/serialization/descriptors/g;Lkotlinx/serialization/json/b;Ljava/lang/String;)I

    move-result v8

    iget-boolean v9, v2, Lkotlinx/serialization/json/i;->c:Z

    const/4 v12, -0x3

    if-eq v8, v12, :cond_f

    iget-boolean v14, v2, Lkotlinx/serialization/json/i;->h:Z

    if-eqz v14, :cond_c

    invoke-interface {v1, v8}, Lkotlinx/serialization/descriptors/g;->i(I)Lkotlinx/serialization/descriptors/g;

    move-result-object v14

    invoke-interface {v14}, Lkotlinx/serialization/descriptors/g;->g()Z

    move-result v15

    if-nez v15, :cond_6

    invoke-virtual {v11}, Lkotlinx/serialization/json/internal/v;->x()Z

    move-result v15

    xor-int/2addr v15, v13

    if-eqz v15, :cond_6

    goto :goto_6

    :cond_6
    invoke-interface {v14}, Lkotlinx/serialization/descriptors/g;->c()Lkotlinx/serialization/descriptors/n;

    move-result-object v15

    sget-object v10, Lkotlinx/serialization/descriptors/m;->a:Lkotlinx/serialization/descriptors/m;

    invoke-static {v15, v10}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {v11}, Lkotlinx/serialization/json/internal/v;->s()B

    move-result v10

    if-eqz v9, :cond_8

    if-eq v10, v13, :cond_7

    if-eqz v10, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v11}, Lkotlinx/serialization/json/internal/v;->l()Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :cond_8
    if-eq v10, v13, :cond_9

    :goto_3
    const/4 v10, 0x0

    goto :goto_5

    :cond_9
    invoke-virtual {v11}, Lkotlinx/serialization/json/internal/v;->k()Ljava/lang/String;

    move-result-object v10

    :goto_4
    iput-object v10, v11, Lkotlinx/serialization/json/internal/v;->c:Ljava/lang/String;

    :goto_5
    if-nez v10, :cond_a

    goto :goto_7

    :cond_a
    invoke-static {v14, v4, v10}, Lkotlinx/serialization/json/internal/j;->b(Lkotlinx/serialization/descriptors/g;Lkotlinx/serialization/json/b;Ljava/lang/String;)I

    move-result v4

    if-ne v4, v12, :cond_b

    invoke-virtual {v11}, Lkotlinx/serialization/json/internal/v;->k()Ljava/lang/String;

    :goto_6
    move v4, v13

    goto :goto_8

    :cond_b
    :goto_7
    const/4 v4, 0x0

    :goto_8
    if-eqz v4, :cond_c

    invoke-virtual {v11}, Lkotlinx/serialization/json/internal/v;->w()Z

    move-result v4

    move v7, v4

    const/4 v4, 0x0

    goto :goto_a

    :cond_c
    if-eqz v7, :cond_e

    iget-object v0, v7, Lkotlinx/serialization/json/internal/i;->a:Lkotlinx/serialization/internal/z;

    const/16 v1, 0x40

    if-ge v8, v1, :cond_d

    iget-wide v1, v0, Lkotlinx/serialization/internal/z;->c:J

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v8

    or-long/2addr v1, v4

    iput-wide v1, v0, Lkotlinx/serialization/internal/z;->c:J

    goto :goto_9

    :cond_d
    const-wide/16 v4, 0x1

    ushr-int/lit8 v1, v8, 0x6

    const/4 v2, -0x1

    add-int/2addr v1, v2

    and-int/lit8 v2, v8, 0x3f

    iget-object v0, v0, Lkotlinx/serialization/internal/z;->d:[J

    aget-wide v6, v0, v1

    shl-long/2addr v4, v2

    or-long/2addr v4, v6

    aput-wide v4, v0, v1

    :cond_e
    :goto_9
    move v12, v8

    goto/16 :goto_1b

    :cond_f
    move v4, v13

    const/4 v7, 0x0

    :goto_a
    if-eqz v4, :cond_20

    iget-boolean v2, v2, Lkotlinx/serialization/json/i;->b:Z

    iget-object v4, v11, Lkotlinx/serialization/json/internal/v;->e:Ljava/lang/String;

    if-nez v2, :cond_13

    iget-object v2, v0, Lkotlinx/serialization/json/internal/r;->m:Ll6/l;

    if-nez v2, :cond_10

    goto :goto_b

    :cond_10
    iget-object v7, v2, Ll6/l;->a:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, v6}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    const/4 v7, 0x0

    iput-object v7, v2, Ll6/l;->a:Ljava/lang/Object;

    move v2, v13

    goto :goto_c

    :cond_11
    :goto_b
    const/4 v2, 0x0

    :goto_c
    if-eqz v2, :cond_12

    goto :goto_d

    :cond_12
    iget v0, v11, Lkotlinx/serialization/json/internal/v;->a:I

    const/4 v1, 0x0

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v6, v1}, Lkotlin/text/s;->X(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered an unknown key \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Use \'ignoreUnknownKeys = true\' in \'Json {}\' builder to ignore unknown keys."

    invoke-virtual {v11, v0, v1, v2}, Lkotlinx/serialization/json/internal/v;->o(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_13
    :goto_d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11}, Lkotlinx/serialization/json/internal/v;->s()B

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_14

    const/4 v8, 0x6

    if-eq v6, v8, :cond_14

    invoke-virtual {v11}, Lkotlinx/serialization/json/internal/v;->l()Ljava/lang/String;

    goto/16 :goto_13

    :cond_14
    :goto_e
    invoke-virtual {v11}, Lkotlinx/serialization/json/internal/v;->s()B

    move-result v6

    if-ne v6, v13, :cond_16

    if-eqz v9, :cond_15

    invoke-virtual {v11}, Lkotlinx/serialization/json/internal/v;->l()Ljava/lang/String;

    goto :goto_e

    :cond_15
    invoke-virtual {v11}, Lkotlinx/serialization/json/internal/v;->e()Ljava/lang/String;

    goto :goto_e

    :cond_16
    if-ne v6, v7, :cond_17

    goto :goto_f

    :cond_17
    const/4 v8, 0x6

    if-ne v6, v8, :cond_18

    :goto_f
    move v8, v13

    goto :goto_10

    :cond_18
    const/4 v8, 0x0

    :goto_10
    if-eqz v8, :cond_19

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_19
    const/16 v8, 0x9

    iget-object v10, v11, Lkotlinx/serialization/json/internal/v;->b:Lv/c;

    if-ne v6, v8, :cond_1b

    invoke-static {v2}, Lkotlin/collections/r;->W0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->byteValue()B

    move-result v6

    if-ne v6, v7, :cond_1a

    goto :goto_11

    :cond_1a
    iget v0, v11, Lkotlinx/serialization/json/internal/v;->a:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "found ] instead of } at path: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lv9/a;->e(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v0

    throw v0

    :cond_1b
    const/4 v8, 0x7

    if-ne v6, v8, :cond_1e

    invoke-static {v2}, Lkotlin/collections/r;->W0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->byteValue()B

    move-result v6

    const/4 v8, 0x6

    if-ne v6, v8, :cond_1d

    :goto_11
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1c

    invoke-static {v2}, Ll9/b;->d0(Ljava/util/List;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_12

    :cond_1c
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "List is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    iget v0, v11, Lkotlinx/serialization/json/internal/v;->a:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "found } instead of ] at path: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lv9/a;->e(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v0

    throw v0

    :cond_1e
    const/16 v8, 0xa

    if-eq v6, v8, :cond_1f

    :goto_12
    invoke-virtual {v11}, Lkotlinx/serialization/json/internal/v;->g()B

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_14

    :goto_13
    invoke-virtual {v11}, Lkotlinx/serialization/json/internal/v;->w()Z

    move-result v2

    goto :goto_14

    :cond_1f
    const-string v0, "Unexpected end of input due to malformed JSON during ignoring unknown keys"

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v11, v0, v2, v3, v1}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3

    :cond_20
    move v2, v7

    :goto_14
    const/16 v4, 0x3a

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, -0x1

    goto/16 :goto_1

    :cond_21
    if-nez v2, :cond_27

    if-eqz v7, :cond_26

    iget-object v0, v7, Lkotlinx/serialization/json/internal/i;->a:Lkotlinx/serialization/internal/z;

    iget-object v1, v0, Lkotlinx/serialization/internal/z;->a:Lkotlinx/serialization/descriptors/g;

    invoke-interface {v1}, Lkotlinx/serialization/descriptors/g;->d()I

    move-result v2

    :cond_22
    iget-wide v4, v0, Lkotlinx/serialization/internal/z;->c:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    iget-object v9, v0, Lkotlinx/serialization/internal/z;->b:Lvb/c;

    if-eqz v8, :cond_23

    not-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v4

    iget-wide v5, v0, Lkotlinx/serialization/internal/z;->c:J

    const-wide/16 v7, 0x1

    shl-long v12, v7, v4

    or-long/2addr v5, v12

    iput-wide v5, v0, Lkotlinx/serialization/internal/z;->c:J

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v1, v5}, Lvb/c;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_22

    goto/16 :goto_1a

    :cond_23
    const/16 v4, 0x40

    if-le v2, v4, :cond_26

    iget-object v0, v0, Lkotlinx/serialization/internal/z;->d:[J

    array-length v2, v0

    const/4 v8, 0x0

    :goto_15
    if-ge v8, v2, :cond_26

    add-int/lit8 v4, v8, 0x1

    mul-int/lit8 v5, v4, 0x40

    aget-wide v12, v0, v8

    :goto_16
    cmp-long v10, v12, v6

    if-eqz v10, :cond_25

    not-long v14, v12

    invoke-static {v14, v15}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v10

    const-wide/16 v14, 0x1

    shl-long v16, v14, v10

    or-long v12, v12, v16

    add-int/2addr v10, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v9, v1, v6}, Lvb/c;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_24

    aput-wide v12, v0, v8

    move v12, v10

    goto :goto_1b

    :cond_24
    const-wide/16 v6, -0x1

    goto :goto_16

    :cond_25
    const-wide/16 v14, 0x1

    aput-wide v12, v0, v8

    move v8, v4

    const-wide/16 v6, -0x1

    goto :goto_15

    :cond_26
    const/4 v12, -0x1

    goto :goto_1b

    :cond_27
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v11, v5, v1, v2, v0}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v2

    :cond_28
    iget v1, v0, Lkotlinx/serialization/json/internal/r;->l:I

    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_29

    move v2, v13

    goto :goto_17

    :cond_29
    const/4 v2, 0x0

    :goto_17
    if-eqz v2, :cond_2a

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2b

    invoke-virtual {v11}, Lkotlinx/serialization/json/internal/v;->w()Z

    move-result v1

    goto :goto_18

    :cond_2a
    const/16 v1, 0x3a

    const/4 v4, -0x1

    invoke-virtual {v11, v1}, Lkotlinx/serialization/json/internal/v;->i(C)V

    :cond_2b
    const/4 v1, 0x0

    :goto_18
    invoke-virtual {v11}, Lkotlinx/serialization/json/internal/v;->b()Z

    move-result v7

    if-eqz v7, :cond_30

    if-eqz v2, :cond_2f

    iget v2, v0, Lkotlinx/serialization/json/internal/r;->l:I

    if-ne v2, v4, :cond_2d

    xor-int/2addr v1, v13

    iget v2, v11, Lkotlinx/serialization/json/internal/v;->a:I

    if-eqz v1, :cond_2c

    goto :goto_19

    :cond_2c
    const/4 v4, 0x0

    invoke-static {v11, v5, v2, v4, v6}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v4

    :cond_2d
    const/4 v4, 0x0

    iget v2, v11, Lkotlinx/serialization/json/internal/v;->a:I

    if-eqz v1, :cond_2e

    goto :goto_19

    :cond_2e
    const-string v0, "Expected comma after the key-value pair"

    invoke-static {v11, v0, v2, v4, v6}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v4

    :cond_2f
    :goto_19
    iget v1, v0, Lkotlinx/serialization/json/internal/r;->l:I

    add-int/lit8 v12, v1, 0x1

    iput v12, v0, Lkotlinx/serialization/json/internal/r;->l:I

    goto :goto_1b

    :cond_30
    if-nez v1, :cond_32

    :goto_1a
    move v12, v4

    :goto_1b
    sget-object v0, Lkotlinx/serialization/json/internal/WriteMode;->MAP:Lkotlinx/serialization/json/internal/WriteMode;

    if-eq v3, v0, :cond_31

    iget-object v0, v11, Lkotlinx/serialization/json/internal/v;->b:Lv/c;

    iget-object v1, v0, Lv/c;->d:Ljava/lang/Object;

    check-cast v1, [I

    iget v0, v0, Lv/c;->b:I

    aput v12, v1, v0

    :cond_31
    return v12

    :cond_32
    const-string v0, "Expected \'}\', but had \',\' instead"

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v11, v0, v2, v3, v1}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3
.end method

.method public final r()Lkotlinx/serialization/json/b;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/r;->h:Lkotlinx/serialization/json/b;

    return-object p0
.end method

.method public final s(Lkotlinx/serialization/descriptors/g;)Lzb/c;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlinx/serialization/json/internal/u;->a(Lkotlinx/serialization/descriptors/g;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lkotlinx/serialization/json/internal/h;

    iget-object v0, p0, Lkotlinx/serialization/json/internal/r;->j:Lkotlinx/serialization/json/internal/v;

    iget-object p0, p0, Lkotlinx/serialization/json/internal/r;->h:Lkotlinx/serialization/json/b;

    invoke-direct {p1, v0, p0}, Lkotlinx/serialization/json/internal/h;-><init>(Lkotlinx/serialization/json/internal/v;Lkotlinx/serialization/json/b;)V

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method public final v()Lkotlinx/serialization/json/l;
    .locals 2

    new-instance v0, Lkotlinx/serialization/json/internal/o;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/r;->h:Lkotlinx/serialization/json/b;

    iget-object v1, v1, Lkotlinx/serialization/json/b;->a:Lkotlinx/serialization/json/i;

    iget-object p0, p0, Lkotlinx/serialization/json/internal/r;->j:Lkotlinx/serialization/json/internal/v;

    invoke-direct {v0, v1, p0}, Lkotlinx/serialization/json/internal/o;-><init>(Lkotlinx/serialization/json/i;Lkotlinx/serialization/json/internal/v;)V

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/o;->b()Lkotlinx/serialization/json/l;

    move-result-object p0

    return-object p0
.end method

.method public final w()I
    .locals 5

    iget-object p0, p0, Lkotlinx/serialization/json/internal/r;->j:Lkotlinx/serialization/json/internal/v;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v;->j()J

    move-result-wide v0

    long-to-int v2, v0

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse int for input \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v3, v2}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3
.end method

.method public final x(Lkotlinx/serialization/b;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lkotlinx/serialization/json/internal/r;->h:Lkotlinx/serialization/json/b;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/r;->j:Lkotlinx/serialization/json/internal/v;

    const-string v2, "deserializer"

    invoke-static {p1, v2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    instance-of v2, p1, Lkotlinx/serialization/internal/b;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lkotlinx/serialization/json/b;->a:Lkotlinx/serialization/json/i;

    iget-boolean v2, v2, Lkotlinx/serialization/json/i;->i:Z

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lkotlinx/serialization/b;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object v2

    invoke-static {v2, v0}, Lp9/d;->o(Lkotlinx/serialization/descriptors/g;Lkotlinx/serialization/json/b;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lkotlinx/serialization/json/internal/r;->n:Lkotlinx/serialization/json/i;

    iget-boolean v2, v2, Lkotlinx/serialization/json/i;->c:Z

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/json/internal/v;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v3, p1

    check-cast v3, Lkotlinx/serialization/internal/b;

    invoke-virtual {v3, p0, v2}, Lkotlinx/serialization/internal/b;->a(Lzb/a;Ljava/lang/String;)Lkotlinx/serialization/b;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    invoke-static {p0, p1}, Lp9/d;->A(Lkotlinx/serialization/json/j;Lkotlinx/serialization/b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p1, Ll6/l;

    invoke-direct {p1, v0}, Ll6/l;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/r;->m:Ll6/l;

    invoke-interface {v2, p0}, Lkotlinx/serialization/b;->deserialize(Lzb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    invoke-interface {p1, p0}, Lkotlinx/serialization/b;->deserialize(Lzb/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lkotlinx/serialization/MissingFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    invoke-virtual {p0}, Lkotlinx/serialization/MissingFieldException;->getMissingFields()Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lkotlinx/serialization/json/internal/v;->b:Lv/c;

    invoke-virtual {v1}, Lv/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1, p0}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final z()B
    .locals 5

    iget-object p0, p0, Lkotlinx/serialization/json/internal/r;->j:Lkotlinx/serialization/json/internal/v;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v;->j()J

    move-result-wide v0

    long-to-int v2, v0

    int-to-byte v2, v2

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse byte for input \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v3, v2}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3
.end method
