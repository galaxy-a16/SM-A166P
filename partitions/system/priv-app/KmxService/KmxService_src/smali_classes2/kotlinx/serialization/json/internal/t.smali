.class public final Lkotlinx/serialization/json/internal/t;
.super Lp1/f;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/json/o;


# instance fields
.field public final k:Lkotlinx/serialization/json/internal/e;

.field public final l:Lkotlinx/serialization/json/b;

.field public final m:Lkotlinx/serialization/json/internal/WriteMode;

.field public final n:[Lkotlinx/serialization/json/o;

.field public final p:Lkotlinx/serialization/modules/b;

.field public final q:Lkotlinx/serialization/json/i;

.field public t:Z

.field public u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/e;Lkotlinx/serialization/json/b;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/o;)V
    .locals 1

    const-string v0, "composer"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p3, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lp1/f;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/t;->k:Lkotlinx/serialization/json/internal/e;

    iput-object p2, p0, Lkotlinx/serialization/json/internal/t;->l:Lkotlinx/serialization/json/b;

    iput-object p3, p0, Lkotlinx/serialization/json/internal/t;->m:Lkotlinx/serialization/json/internal/WriteMode;

    iput-object p4, p0, Lkotlinx/serialization/json/internal/t;->n:[Lkotlinx/serialization/json/o;

    iget-object p1, p2, Lkotlinx/serialization/json/b;->b:Lkotlinx/serialization/modules/b;

    iput-object p1, p0, Lkotlinx/serialization/json/internal/t;->p:Lkotlinx/serialization/modules/b;

    iget-object p1, p2, Lkotlinx/serialization/json/b;->a:Lkotlinx/serialization/json/i;

    iput-object p1, p0, Lkotlinx/serialization/json/internal/t;->q:Lkotlinx/serialization/json/i;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p4, :cond_1

    aget-object p2, p4, p1

    if-nez p2, :cond_0

    if-eq p2, p0, :cond_1

    :cond_0
    aput-object p0, p4, p1

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/serialization/descriptors/g;)Lzb/b;
    .locals 4

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/t;->l:Lkotlinx/serialization/json/b;

    invoke-static {p1, v0}, Li4/f;->K(Lkotlinx/serialization/descriptors/g;Lkotlinx/serialization/json/b;)Lkotlinx/serialization/json/internal/WriteMode;

    move-result-object v1

    iget-char v2, v1, Lkotlinx/serialization/json/internal/WriteMode;->begin:C

    iget-object v3, p0, Lkotlinx/serialization/json/internal/t;->k:Lkotlinx/serialization/json/internal/e;

    if-eqz v2, :cond_0

    invoke-virtual {v3, v2}, Lkotlinx/serialization/json/internal/e;->d(C)V

    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/e;->a()V

    :cond_0
    iget-object v2, p0, Lkotlinx/serialization/json/internal/t;->u:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/e;->b()V

    iget-object v2, p0, Lkotlinx/serialization/json/internal/t;->u:Ljava/lang/String;

    invoke-static {v2}, Li4/f;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lkotlinx/serialization/json/internal/t;->r(Ljava/lang/String;)V

    const/16 v2, 0x3a

    invoke-virtual {v3, v2}, Lkotlinx/serialization/json/internal/e;->d(C)V

    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/e;->j()V

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/g;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/t;->r(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lkotlinx/serialization/json/internal/t;->u:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lkotlinx/serialization/json/internal/t;->m:Lkotlinx/serialization/json/internal/WriteMode;

    if-ne p1, v1, :cond_2

    return-object p0

    :cond_2
    iget-object p0, p0, Lkotlinx/serialization/json/internal/t;->n:[Lkotlinx/serialization/json/o;

    if-eqz p0, :cond_3

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, p0, p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Lkotlinx/serialization/json/internal/t;

    invoke-direct {p1, v3, v0, v1, p0}, Lkotlinx/serialization/json/internal/t;-><init>(Lkotlinx/serialization/json/internal/e;Lkotlinx/serialization/json/b;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/o;)V

    :goto_0
    return-object p1
.end method

.method public final b(Lkotlinx/serialization/descriptors/g;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lkotlinx/serialization/json/internal/t;->m:Lkotlinx/serialization/json/internal/WriteMode;

    iget-char v0, p1, Lkotlinx/serialization/json/internal/WriteMode;->end:C

    if-eqz v0, :cond_0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/t;->k:Lkotlinx/serialization/json/internal/e;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/e;->k()V

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/e;->b()V

    iget-char p1, p1, Lkotlinx/serialization/json/internal/WriteMode;->end:C

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/e;->d(C)V

    :cond_0
    return-void
.end method

.method public final c()Lkotlinx/serialization/modules/b;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/t;->p:Lkotlinx/serialization/modules/b;

    return-object p0
.end method

.method public final d()V
    .locals 1

    iget-object p0, p0, Lkotlinx/serialization/json/internal/t;->k:Lkotlinx/serialization/json/internal/e;

    const-string v0, "null"

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/e;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final e(D)V
    .locals 3

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/t;->t:Z

    iget-object v1, p0, Lkotlinx/serialization/json/internal/t;->k:Lkotlinx/serialization/json/internal/e;

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/t;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lkotlinx/serialization/json/internal/e;->a:Lkotlinx/serialization/json/internal/k;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlinx/serialization/json/internal/k;->c(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/t;->q:Lkotlinx/serialization/json/i;

    iget-boolean p0, p0, Lkotlinx/serialization/json/i;->k:Z

    if-nez p0, :cond_3

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iget-object p1, v1, Lkotlinx/serialization/json/internal/e;->a:Lkotlinx/serialization/json/internal/k;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/k;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lv9/a;->b(Ljava/lang/Number;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonEncodingException;

    move-result-object p0

    throw p0

    :cond_3
    :goto_2
    return-void
.end method

.method public final f(S)V
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/t;->t:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/t;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/t;->k:Lkotlinx/serialization/json/internal/e;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/e;->h(S)V

    :goto_0
    return-void
.end method

.method public final g(B)V
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/t;->t:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/t;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/t;->k:Lkotlinx/serialization/json/internal/e;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/e;->c(B)V

    :goto_0
    return-void
.end method

.method public final h(Z)V
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/t;->t:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/t;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/t;->k:Lkotlinx/serialization/json/internal/e;

    iget-object p0, p0, Lkotlinx/serialization/json/internal/e;->a:Lkotlinx/serialization/json/internal/k;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/k;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final i(Lkotlinx/serialization/descriptors/g;I)V
    .locals 1

    const-string v0, "enumDescriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/g;->e(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/t;->r(Ljava/lang/String;)V

    return-void
.end method

.method public final k(I)V
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/t;->t:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/t;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/t;->k:Lkotlinx/serialization/json/internal/e;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/e;->e(I)V

    :goto_0
    return-void
.end method

.method public final l(Lkotlinx/serialization/descriptors/g;)Lzb/d;
    .locals 3

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlinx/serialization/json/internal/u;->a(Lkotlinx/serialization/descriptors/g;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lkotlinx/serialization/json/internal/t;

    iget-object v0, p0, Lkotlinx/serialization/json/internal/t;->k:Lkotlinx/serialization/json/internal/e;

    instance-of v1, v0, Lkotlinx/serialization/json/internal/f;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/serialization/json/internal/f;

    iget-object v0, v0, Lkotlinx/serialization/json/internal/e;->a:Lkotlinx/serialization/json/internal/k;

    iget-boolean v2, p0, Lkotlinx/serialization/json/internal/t;->t:Z

    invoke-direct {v1, v0, v2}, Lkotlinx/serialization/json/internal/f;-><init>(Lkotlinx/serialization/json/internal/k;Z)V

    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lkotlinx/serialization/json/internal/t;->m:Lkotlinx/serialization/json/internal/WriteMode;

    const/4 v2, 0x0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/t;->l:Lkotlinx/serialization/json/b;

    invoke-direct {p1, v0, p0, v1, v2}, Lkotlinx/serialization/json/internal/t;-><init>(Lkotlinx/serialization/json/internal/e;Lkotlinx/serialization/json/b;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/o;)V

    move-object p0, p1

    :cond_1
    return-object p0
.end method

.method public final m(Lkotlinx/serialization/c;Ljava/lang/Object;)V
    .locals 3

    const-string v0, "serializer"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lkotlinx/serialization/internal/b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkotlinx/serialization/json/internal/t;->l:Lkotlinx/serialization/json/b;

    iget-object v1, v0, Lkotlinx/serialization/json/b;->a:Lkotlinx/serialization/json/i;

    iget-boolean v1, v1, Lkotlinx/serialization/json/i;->i:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p1

    check-cast v1, Lkotlinx/serialization/internal/b;

    invoke-interface {p1}, Lkotlinx/serialization/c;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object p1

    invoke-static {p1, v0}, Lp9/d;->o(Lkotlinx/serialization/descriptors/g;Lkotlinx/serialization/json/b;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {p2, v0}, Li4/f;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p0, p2}, Ll9/b;->Z(Lkotlinx/serialization/internal/b;Lzb/d;Ljava/lang/Object;)Lkotlinx/serialization/c;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/c;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/serialization/descriptors/g;->c()Lkotlinx/serialization/descriptors/n;

    move-result-object v1

    const-string v2, "kind"

    invoke-static {v1, v2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v2, v1, Lkotlinx/serialization/descriptors/m;

    if-nez v2, :cond_3

    instance-of v2, v1, Lkotlinx/serialization/descriptors/f;

    if-nez v2, :cond_2

    instance-of v1, v1, Lkotlinx/serialization/descriptors/d;

    if-nez v1, :cond_1

    iput-object p1, p0, Lkotlinx/serialization/json/internal/t;->u:Ljava/lang/String;

    invoke-interface {v0, p0, p2}, Lkotlinx/serialization/c;->serialize(Lzb/d;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Actual serializer for polymorphic cannot be polymorphic itself"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Primitives cannot be serialized polymorphically with \'type\' parameter. You can use \'JsonBuilder.useArrayPolymorphism\' instead"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Enums cannot be serialized polymorphically with \'type\' parameter. You can use \'JsonBuilder.useArrayPolymorphism\' instead"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/c;->serialize(Lzb/d;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final n(F)V
    .locals 3

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/t;->t:Z

    iget-object v1, p0, Lkotlinx/serialization/json/internal/t;->k:Lkotlinx/serialization/json/internal/e;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/t;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lkotlinx/serialization/json/internal/e;->a:Lkotlinx/serialization/json/internal/k;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlinx/serialization/json/internal/k;->c(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/t;->q:Lkotlinx/serialization/json/i;

    iget-boolean p0, p0, Lkotlinx/serialization/json/i;->k:Z

    if-nez p0, :cond_3

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iget-object p1, v1, Lkotlinx/serialization/json/internal/e;->a:Lkotlinx/serialization/json/internal/k;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/k;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lv9/a;->b(Ljava/lang/Number;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonEncodingException;

    move-result-object p0

    throw p0

    :cond_3
    :goto_2
    return-void
.end method

.method public final o(J)V
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/t;->t:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/t;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/t;->k:Lkotlinx/serialization/json/internal/e;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/e;->f(J)V

    :goto_0
    return-void
.end method

.method public final p(C)V
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/t;->r(Ljava/lang/String;)V

    return-void
.end method

.method public final q(Lkotlinx/serialization/descriptors/g;)Z
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/json/internal/t;->q:Lkotlinx/serialization/json/i;

    iget-boolean p0, p0, Lkotlinx/serialization/json/i;->a:Z

    return p0
.end method

.method public final r(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/json/internal/t;->k:Lkotlinx/serialization/json/internal/e;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/e;->i(Ljava/lang/String;)V

    return-void
.end method

.method public final w(Lkotlinx/serialization/descriptors/g;I)V
    .locals 6

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlinx/serialization/json/internal/s;->a:[I

    iget-object v1, p0, Lkotlinx/serialization/json/internal/t;->m:Lkotlinx/serialization/json/internal/WriteMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x2c

    const/4 v2, 0x1

    iget-object v3, p0, Lkotlinx/serialization/json/internal/t;->k:Lkotlinx/serialization/json/internal/e;

    if-eq v0, v2, :cond_6

    const/16 v4, 0x3a

    const/4 v5, 0x2

    if-eq v0, v5, :cond_3

    const/4 v5, 0x3

    if-eq v0, v5, :cond_1

    iget-boolean v0, v3, Lkotlinx/serialization/json/internal/e;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {v3, v1}, Lkotlinx/serialization/json/internal/e;->d(C)V

    :cond_0
    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/e;->b()V

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/g;->e(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/t;->r(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lkotlinx/serialization/json/internal/e;->d(C)V

    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/e;->j()V

    goto :goto_3

    :cond_1
    if-nez p2, :cond_2

    iput-boolean v2, p0, Lkotlinx/serialization/json/internal/t;->t:Z

    :cond_2
    if-ne p2, v2, :cond_8

    invoke-virtual {v3, v1}, Lkotlinx/serialization/json/internal/e;->d(C)V

    goto :goto_0

    :cond_3
    iget-boolean p1, v3, Lkotlinx/serialization/json/internal/e;->b:Z

    if-nez p1, :cond_5

    rem-int/2addr p2, v5

    if-nez p2, :cond_4

    invoke-virtual {v3, v1}, Lkotlinx/serialization/json/internal/e;->d(C)V

    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/e;->b()V

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v4}, Lkotlinx/serialization/json/internal/e;->d(C)V

    :goto_0
    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/e;->j()V

    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lkotlinx/serialization/json/internal/t;->t:Z

    goto :goto_3

    :cond_5
    iput-boolean v2, p0, Lkotlinx/serialization/json/internal/t;->t:Z

    goto :goto_2

    :cond_6
    iget-boolean p0, v3, Lkotlinx/serialization/json/internal/e;->b:Z

    if-nez p0, :cond_7

    invoke-virtual {v3, v1}, Lkotlinx/serialization/json/internal/e;->d(C)V

    :cond_7
    :goto_2
    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/e;->b()V

    :cond_8
    :goto_3
    return-void
.end method
