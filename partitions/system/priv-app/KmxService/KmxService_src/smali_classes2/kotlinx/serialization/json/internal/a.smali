.class public abstract Lkotlinx/serialization/json/internal/a;
.super Lkotlinx/serialization/internal/n1;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/json/j;


# instance fields
.field public final c:Lkotlinx/serialization/json/b;

.field public final d:Lkotlinx/serialization/json/i;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/b;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/serialization/internal/n1;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/a;->c:Lkotlinx/serialization/json/b;

    iget-object p1, p1, Lkotlinx/serialization/json/b;->a:Lkotlinx/serialization/json/i;

    iput-object p1, p0, Lkotlinx/serialization/json/internal/a;->d:Lkotlinx/serialization/json/i;

    return-void
.end method

.method public static P(Lkotlinx/serialization/json/a0;Ljava/lang/String;)Lkotlinx/serialization/json/q;
    .locals 1

    instance-of v0, p0, Lkotlinx/serialization/json/q;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlinx/serialization/json/q;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected \'null\' when "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was expected"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, -0x1

    invoke-static {p1, p0}, Lv9/a;->d(ILjava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final G(Ljava/lang/Object;)Z
    .locals 3

    check-cast p1, Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/a;->T(Ljava/lang/String;)Lkotlinx/serialization/json/a0;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/a;->c:Lkotlinx/serialization/json/b;

    iget-object v1, v1, Lkotlinx/serialization/json/b;->a:Lkotlinx/serialization/json/i;

    iget-boolean v1, v1, Lkotlinx/serialization/json/i;->c:Z

    const-string v2, "boolean"

    if-nez v1, :cond_1

    invoke-static {v0, v2}, Lkotlinx/serialization/json/internal/a;->P(Lkotlinx/serialization/json/a0;Ljava/lang/String;)Lkotlinx/serialization/json/q;

    move-result-object v1

    iget-boolean v1, v1, Lkotlinx/serialization/json/q;->a:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Boolean literal for key \'"

    const-string v1, "\' should be unquoted.\nUse \'isLenient = true\' in \'Json {}` builder to accept non-compliant JSON."

    invoke-static {v0, p1, v1}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->R()Lkotlinx/serialization/json/l;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {v0, p1, p0}, Lv9/a;->e(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    :try_start_0
    invoke-static {v0}, Lfc/e;->k(Lkotlinx/serialization/json/a0;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p0, v2}, Lkotlinx/serialization/json/internal/a;->W(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final H(Ljava/lang/Object;)B
    .locals 3

    check-cast p1, Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/a;->T(Ljava/lang/String;)Lkotlinx/serialization/json/a0;

    move-result-object p1

    const-string v0, "byte"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lkotlinx/serialization/json/a0;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v2, -0x80

    if-gt v2, p1, :cond_0

    const/16 v2, 0x7f

    if-gt p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    int-to-byte p1, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p0

    return p0

    :cond_2
    :try_start_1
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/a;->W(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/a;->W(Ljava/lang/String;)V

    throw v1
.end method

.method public final I(Ljava/lang/Object;)C
    .locals 2

    check-cast p1, Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/a;->T(Ljava/lang/String;)Lkotlinx/serialization/json/a0;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Lkotlinx/serialization/json/a0;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Char sequence has more than one element."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "Char sequence is empty."

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p1, "char"

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/a;->W(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final J(Ljava/lang/Object;)D
    .locals 3

    check-cast p1, Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/a;->T(Ljava/lang/String;)Lkotlinx/serialization/json/a0;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lkotlinx/serialization/json/a0;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lkotlinx/serialization/json/internal/a;->c:Lkotlinx/serialization/json/b;

    iget-object v2, v2, Lkotlinx/serialization/json/b;->a:Lkotlinx/serialization/json/i;

    iget-boolean v2, v2, Lkotlinx/serialization/json/i;->k:Z

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->R()Lkotlinx/serialization/json/l;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lv9/a;->a(Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0

    :cond_2
    :goto_1
    return-wide v0

    :catch_0
    const-string p1, "double"

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/a;->W(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final K(Ljava/lang/Object;)F
    .locals 2

    check-cast p1, Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/a;->T(Ljava/lang/String;)Lkotlinx/serialization/json/a0;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lkotlinx/serialization/json/a0;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/a;->c:Lkotlinx/serialization/json/b;

    iget-object v1, v1, Lkotlinx/serialization/json/b;->a:Lkotlinx/serialization/json/i;

    iget-boolean v1, v1, Lkotlinx/serialization/json/i;->k:Z

    if-nez v1, :cond_2

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->R()Lkotlinx/serialization/json/l;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lv9/a;->a(Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0

    :cond_2
    :goto_1
    return v0

    :catch_0
    const-string p1, "float"

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/a;->W(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final L(Ljava/lang/Object;Lkotlinx/serialization/descriptors/g;)Lzb/c;
    .locals 1

    check-cast p1, Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inlineDescriptor"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlinx/serialization/json/internal/u;->a(Lkotlinx/serialization/descriptors/g;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lkotlinx/serialization/json/internal/h;

    new-instance v0, Lkotlinx/serialization/json/internal/v;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/a;->T(Ljava/lang/String;)Lkotlinx/serialization/json/a0;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/serialization/json/a0;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lkotlinx/serialization/json/internal/v;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/json/internal/a;->c:Lkotlinx/serialization/json/b;

    invoke-direct {p2, v0, p0}, Lkotlinx/serialization/json/internal/h;-><init>(Lkotlinx/serialization/json/internal/v;Lkotlinx/serialization/json/b;)V

    move-object p0, p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lkotlinx/serialization/internal/n1;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object p0
.end method

.method public final M(Ljava/lang/Object;)S
    .locals 3

    check-cast p1, Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/a;->T(Ljava/lang/String;)Lkotlinx/serialization/json/a0;

    move-result-object p1

    const-string v0, "short"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lkotlinx/serialization/json/a0;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v2, -0x8000

    if-gt v2, p1, :cond_0

    const/16 v2, 0x7fff

    if-gt p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    int-to-short p1, p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p0

    return p0

    :cond_2
    :try_start_1
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/a;->W(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/a;->W(Ljava/lang/String;)V

    throw v1
.end method

.method public final N(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    check-cast p1, Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/a;->T(Ljava/lang/String;)Lkotlinx/serialization/json/a0;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/a;->c:Lkotlinx/serialization/json/b;

    iget-object v1, v1, Lkotlinx/serialization/json/b;->a:Lkotlinx/serialization/json/i;

    iget-boolean v1, v1, Lkotlinx/serialization/json/i;->c:Z

    const/4 v2, -0x1

    if-nez v1, :cond_1

    const-string v1, "string"

    invoke-static {v0, v1}, Lkotlinx/serialization/json/internal/a;->P(Lkotlinx/serialization/json/a0;Ljava/lang/String;)Lkotlinx/serialization/json/q;

    move-result-object v1

    iget-boolean v1, v1, Lkotlinx/serialization/json/q;->a:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "String literal for key \'"

    const-string v1, "\' should be quoted.\nUse \'isLenient = true\' in \'Json {}` builder to accept non-compliant JSON."

    invoke-static {v0, p1, v1}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->R()Lkotlinx/serialization/json/l;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p1, p0}, Lv9/a;->e(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    instance-of p1, v0, Lkotlinx/serialization/json/t;

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lkotlinx/serialization/json/a0;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->R()Lkotlinx/serialization/json/l;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unexpected \'null\' value instead of string literal"

    invoke-static {v2, p1, p0}, Lv9/a;->e(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0
.end method

.method public abstract Q(Ljava/lang/String;)Lkotlinx/serialization/json/l;
.end method

.method public final R()Lkotlinx/serialization/json/l;
    .locals 2

    iget-object v0, p0, Lkotlinx/serialization/internal/n1;->a:Ljava/util/ArrayList;

    const-string v1, "<this>"

    invoke-static {v0, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/a;->Q(Ljava/lang/String;)Lkotlinx/serialization/json/l;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->V()Lkotlinx/serialization/json/l;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public abstract S(Lkotlinx/serialization/descriptors/g;I)Ljava/lang/String;
.end method

.method public final T(Ljava/lang/String;)Lkotlinx/serialization/json/a0;
    .locals 3

    const-string v0, "tag"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/a;->Q(Ljava/lang/String;)Lkotlinx/serialization/json/l;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/serialization/json/a0;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/serialization/json/a0;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected JsonPrimitive at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", found "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->R()Lkotlinx/serialization/json/l;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {v0, p1, p0}, Lv9/a;->e(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0
.end method

.method public final U(Lkotlinx/serialization/descriptors/g;I)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/a;->S(Lkotlinx/serialization/descriptors/g;I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "nestedName"

    invoke-static {p1, p2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/internal/n1;->a:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Ljava/lang/String;

    return-object p1
.end method

.method public abstract V()Lkotlinx/serialization/json/l;
.end method

.method public final W(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to parse \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->R()Lkotlinx/serialization/json/l;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {v0, p1, p0}, Lv9/a;->e(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0
.end method

.method public a(Lkotlinx/serialization/descriptors/g;)Lzb/a;
    .locals 10

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->R()Lkotlinx/serialization/json/l;

    move-result-object v0

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/g;->c()Lkotlinx/serialization/descriptors/n;

    move-result-object v1

    sget-object v2, Lkotlinx/serialization/descriptors/o;->b:Lkotlinx/serialization/descriptors/o;

    invoke-static {v1, v2}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    instance-of v2, v1, Lkotlinx/serialization/descriptors/d;

    :goto_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/a;->c:Lkotlinx/serialization/json/b;

    const-class v3, Lkotlinx/serialization/json/d;

    const-string v4, ", but had "

    const-string v5, " as the serialized body of "

    const-string v6, "Expected "

    const/4 v7, -0x1

    if-eqz v2, :cond_2

    new-instance v1, Lkotlinx/serialization/json/internal/m;

    instance-of v2, v0, Lkotlinx/serialization/json/d;

    if-eqz v2, :cond_1

    check-cast v0, Lkotlinx/serialization/json/d;

    invoke-direct {v1, p0, v0}, Lkotlinx/serialization/json/internal/m;-><init>(Lkotlinx/serialization/json/b;Lkotlinx/serialization/json/d;)V

    goto/16 :goto_2

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/jvm/internal/o;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/j;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/g;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/o;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/j;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lv9/a;->d(ILjava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0

    :cond_2
    sget-object v2, Lkotlinx/serialization/descriptors/o;->c:Lkotlinx/serialization/descriptors/o;

    invoke-static {v1, v2}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-class v2, Lkotlinx/serialization/json/w;

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lkotlinx/serialization/descriptors/g;->i(I)Lkotlinx/serialization/descriptors/g;

    move-result-object v1

    iget-object v8, p0, Lkotlinx/serialization/json/b;->b:Lkotlinx/serialization/modules/b;

    invoke-static {v1, v8}, Li4/f;->d(Lkotlinx/serialization/descriptors/g;Lkotlinx/serialization/modules/b;)Lkotlinx/serialization/descriptors/g;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/serialization/descriptors/g;->c()Lkotlinx/serialization/descriptors/n;

    move-result-object v8

    instance-of v9, v8, Lkotlinx/serialization/descriptors/f;

    if-nez v9, :cond_6

    sget-object v9, Lkotlinx/serialization/descriptors/m;->a:Lkotlinx/serialization/descriptors/m;

    invoke-static {v8, v9}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lkotlinx/serialization/json/b;->a:Lkotlinx/serialization/json/i;

    iget-boolean v2, v2, Lkotlinx/serialization/json/i;->d:Z

    if-eqz v2, :cond_5

    new-instance v1, Lkotlinx/serialization/json/internal/m;

    instance-of v2, v0, Lkotlinx/serialization/json/d;

    if-eqz v2, :cond_4

    check-cast v0, Lkotlinx/serialization/json/d;

    invoke-direct {v1, p0, v0}, Lkotlinx/serialization/json/internal/m;-><init>(Lkotlinx/serialization/json/b;Lkotlinx/serialization/json/d;)V

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/jvm/internal/o;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/j;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/g;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/o;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/j;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lv9/a;->d(ILjava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0

    :cond_5
    invoke-static {v1}, Lv9/a;->c(Lkotlinx/serialization/descriptors/g;)Lkotlinx/serialization/json/internal/JsonEncodingException;

    move-result-object p0

    throw p0

    :cond_6
    :goto_1
    new-instance v1, Lkotlinx/serialization/json/internal/n;

    instance-of v3, v0, Lkotlinx/serialization/json/w;

    if-eqz v3, :cond_7

    check-cast v0, Lkotlinx/serialization/json/w;

    invoke-direct {v1, p0, v0}, Lkotlinx/serialization/json/internal/n;-><init>(Lkotlinx/serialization/json/b;Lkotlinx/serialization/json/w;)V

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/o;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/j;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/g;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/o;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/j;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lv9/a;->d(ILjava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0

    :cond_8
    new-instance v1, Lkotlinx/serialization/json/internal/l;

    instance-of v3, v0, Lkotlinx/serialization/json/w;

    if-eqz v3, :cond_9

    check-cast v0, Lkotlinx/serialization/json/w;

    const/4 p1, 0x0

    invoke-direct {v1, p0, v0, p1, p1}, Lkotlinx/serialization/json/internal/l;-><init>(Lkotlinx/serialization/json/b;Lkotlinx/serialization/json/w;Ljava/lang/String;Lkotlinx/serialization/descriptors/g;)V

    :goto_2
    return-object v1

    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/o;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/j;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/g;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/o;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/j;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lv9/a;->d(ILjava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0
.end method

.method public b(Lkotlinx/serialization/descriptors/g;)V
    .locals 0

    const-string p0, "descriptor"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final c()Lkotlinx/serialization/modules/b;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/a;->c:Lkotlinx/serialization/json/b;

    iget-object p0, p0, Lkotlinx/serialization/json/b;->b:Lkotlinx/serialization/modules/b;

    return-object p0
.end method

.method public i()Z
    .locals 0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->R()Lkotlinx/serialization/json/l;

    move-result-object p0

    instance-of p0, p0, Lkotlinx/serialization/json/t;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final r()Lkotlinx/serialization/json/b;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/a;->c:Lkotlinx/serialization/json/b;

    return-object p0
.end method

.method public final v()Lkotlinx/serialization/json/l;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->R()Lkotlinx/serialization/json/l;

    move-result-object p0

    return-object p0
.end method

.method public final x(Lkotlinx/serialization/b;)Ljava/lang/Object;
    .locals 1

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lp9/d;->A(Lkotlinx/serialization/json/j;Lkotlinx/serialization/b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
