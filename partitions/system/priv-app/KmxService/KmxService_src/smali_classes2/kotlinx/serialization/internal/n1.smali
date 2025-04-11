.class public abstract Lkotlinx/serialization/internal/n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzb/c;
.implements Lzb/a;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkotlinx/serialization/internal/n1;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 0

    return-void
.end method

.method public final B()S
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/n1;->O()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/n1;->M(Ljava/lang/Object;)S

    move-result p0

    return p0
.end method

.method public final C(Lkotlinx/serialization/descriptors/g;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p3, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lkotlinx/serialization/json/internal/a;

    invoke-virtual {v0, p1, p2}, Lkotlinx/serialization/json/internal/a;->U(Lkotlinx/serialization/descriptors/g;I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lkotlinx/serialization/internal/TaggedDecoder$decodeSerializableElement$1;

    invoke-direct {p2, p0, p3, p4}, Lkotlinx/serialization/internal/TaggedDecoder$decodeSerializableElement$1;-><init>(Lkotlinx/serialization/internal/n1;Lkotlinx/serialization/b;Ljava/lang/Object;)V

    iget-object p3, p0, Lkotlinx/serialization/internal/n1;->a:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Lvb/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    iget-boolean p2, p0, Lkotlinx/serialization/internal/n1;->b:Z

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lkotlinx/serialization/internal/n1;->O()Ljava/lang/Object;

    :cond_0
    const/4 p2, 0x0

    iput-boolean p2, p0, Lkotlinx/serialization/internal/n1;->b:Z

    return-object p1
.end method

.method public final D()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/n1;->O()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/n1;->N(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final E()F
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/n1;->O()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/n1;->K(Ljava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public final F()D
    .locals 2

    invoke-virtual {p0}, Lkotlinx/serialization/internal/n1;->O()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/n1;->J(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public abstract G(Ljava/lang/Object;)Z
.end method

.method public abstract H(Ljava/lang/Object;)B
.end method

.method public abstract I(Ljava/lang/Object;)C
.end method

.method public abstract J(Ljava/lang/Object;)D
.end method

.method public abstract K(Ljava/lang/Object;)F
.end method

.method public abstract L(Ljava/lang/Object;Lkotlinx/serialization/descriptors/g;)Lzb/c;
.end method

.method public abstract M(Ljava/lang/Object;)S
.end method

.method public abstract N(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public final O()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lkotlinx/serialization/internal/n1;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ll9/b;->d0(Ljava/util/List;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lkotlinx/serialization/internal/n1;->b:Z

    return-object v0
.end method

.method public final d()J
    .locals 2

    invoke-virtual {p0}, Lkotlinx/serialization/internal/n1;->O()Ljava/lang/Object;

    move-result-object v0

    check-cast p0, Lkotlinx/serialization/json/internal/a;

    check-cast v0, Ljava/lang/String;

    const-string v1, "tag"

    invoke-static {v0, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/a;->T(Ljava/lang/String;)Lkotlinx/serialization/json/a0;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lkotlinx/serialization/json/a0;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-string v0, "long"

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/a;->W(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final e(Lkotlinx/serialization/internal/c1;I)S
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lkotlinx/serialization/json/internal/a;

    invoke-virtual {v0, p1, p2}, Lkotlinx/serialization/json/internal/a;->U(Lkotlinx/serialization/descriptors/g;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/n1;->M(Ljava/lang/Object;)S

    move-result p0

    return p0
.end method

.method public final f(Lkotlinx/serialization/internal/c1;I)F
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lkotlinx/serialization/json/internal/a;

    invoke-virtual {v0, p1, p2}, Lkotlinx/serialization/json/internal/a;->U(Lkotlinx/serialization/descriptors/g;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/n1;->K(Ljava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public final g()Z
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/n1;->O()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/n1;->G(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final h(Lkotlinx/serialization/descriptors/g;I)Ljava/lang/String;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lkotlinx/serialization/json/internal/a;

    invoke-virtual {v0, p1, p2}, Lkotlinx/serialization/json/internal/a;->U(Lkotlinx/serialization/descriptors/g;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/n1;->N(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract i()Z
.end method

.method public final j(Lkotlinx/serialization/internal/c1;I)C
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lkotlinx/serialization/json/internal/a;

    invoke-virtual {v0, p1, p2}, Lkotlinx/serialization/json/internal/a;->U(Lkotlinx/serialization/descriptors/g;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/n1;->I(Ljava/lang/Object;)C

    move-result p0

    return p0
.end method

.method public final k()C
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/n1;->O()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/n1;->I(Ljava/lang/Object;)C

    move-result p0

    return p0
.end method

.method public final l(Lkotlinx/serialization/descriptors/g;)I
    .locals 2

    const-string v0, "enumDescriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/internal/n1;->O()Ljava/lang/Object;

    move-result-object v0

    check-cast p0, Lkotlinx/serialization/json/internal/a;

    check-cast v0, Ljava/lang/String;

    const-string v1, "tag"

    invoke-static {v0, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/a;->T(Ljava/lang/String;)Lkotlinx/serialization/json/a0;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/a0;->c()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/a;->c:Lkotlinx/serialization/json/b;

    const-string v1, ""

    invoke-static {p1, p0, v0, v1}, Lkotlinx/serialization/json/internal/j;->c(Lkotlinx/serialization/descriptors/g;Lkotlinx/serialization/json/b;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final n()V
    .locals 0

    return-void
.end method

.method public final o(Lkotlinx/serialization/descriptors/g;I)J
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlinx/serialization/json/internal/a;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/a;->U(Lkotlinx/serialization/descriptors/g;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/a;->T(Ljava/lang/String;)Lkotlinx/serialization/json/a0;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Lkotlinx/serialization/json/a0;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    const-string p1, "long"

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/a;->W(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final p(Lkotlinx/serialization/internal/c1;I)B
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lkotlinx/serialization/json/internal/a;

    invoke-virtual {v0, p1, p2}, Lkotlinx/serialization/json/internal/a;->U(Lkotlinx/serialization/descriptors/g;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/n1;->H(Ljava/lang/Object;)B

    move-result p0

    return p0
.end method

.method public final q(Lkotlinx/serialization/internal/c1;I)Z
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lkotlinx/serialization/json/internal/a;

    invoke-virtual {v0, p1, p2}, Lkotlinx/serialization/json/internal/a;->U(Lkotlinx/serialization/descriptors/g;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/n1;->G(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final s(Lkotlinx/serialization/descriptors/g;)Lzb/c;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/internal/n1;->O()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/internal/n1;->L(Ljava/lang/Object;Lkotlinx/serialization/descriptors/g;)Lzb/c;

    move-result-object p0

    return-object p0
.end method

.method public final t(Lkotlinx/serialization/internal/c1;I)Lzb/c;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lkotlinx/serialization/json/internal/a;

    invoke-virtual {v0, p1, p2}, Lkotlinx/serialization/json/internal/a;->U(Lkotlinx/serialization/descriptors/g;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2}, Lkotlinx/serialization/internal/o0;->i(I)Lkotlinx/serialization/descriptors/g;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/internal/n1;->L(Ljava/lang/Object;Lkotlinx/serialization/descriptors/g;)Lzb/c;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lkotlinx/serialization/internal/c1;I)I
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlinx/serialization/json/internal/a;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/a;->U(Lkotlinx/serialization/descriptors/g;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/a;->T(Ljava/lang/String;)Lkotlinx/serialization/json/a0;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Lkotlinx/serialization/json/a0;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p1, "int"

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/a;->W(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final w()I
    .locals 2

    invoke-virtual {p0}, Lkotlinx/serialization/internal/n1;->O()Ljava/lang/Object;

    move-result-object v0

    check-cast p0, Lkotlinx/serialization/json/internal/a;

    check-cast v0, Ljava/lang/String;

    const-string v1, "tag"

    invoke-static {v0, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/a;->T(Ljava/lang/String;)Lkotlinx/serialization/json/a0;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lkotlinx/serialization/json/a0;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string v0, "int"

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/a;->W(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final y(Lkotlinx/serialization/internal/c1;I)D
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lkotlinx/serialization/json/internal/a;

    invoke-virtual {v0, p1, p2}, Lkotlinx/serialization/json/internal/a;->U(Lkotlinx/serialization/descriptors/g;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/n1;->J(Ljava/lang/Object;)D

    move-result-wide p0

    return-wide p0
.end method

.method public final z()B
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/n1;->O()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/n1;->H(Ljava/lang/Object;)B

    move-result p0

    return p0
.end method
