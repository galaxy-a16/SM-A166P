.class public abstract Lkotlinx/serialization/internal/d1;
.super Lkotlinx/serialization/internal/t;
.source "SourceFile"


# instance fields
.field public final b:Lkotlinx/serialization/internal/c1;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/c;)V
    .locals 1

    invoke-direct {p0, p1}, Lkotlinx/serialization/internal/t;-><init>(Lkotlinx/serialization/c;)V

    new-instance v0, Lkotlinx/serialization/internal/c1;

    invoke-interface {p1}, Lkotlinx/serialization/c;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object p1

    invoke-direct {v0, p1}, Lkotlinx/serialization/internal/c1;-><init>(Lkotlinx/serialization/descriptors/g;)V

    iput-object v0, p0, Lkotlinx/serialization/internal/d1;->b:Lkotlinx/serialization/internal/c1;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/d1;->j()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/internal/b1;

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lkotlinx/serialization/internal/b1;

    const-string p0, "<this>"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lkotlinx/serialization/internal/b1;->d()I

    move-result p0

    return p0
.end method

.method public final c(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This method lead to boxing and must not be used, use writeContents instead"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final deserialize(Lzb/c;)Ljava/lang/Object;
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/a;->e(Lzb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/g;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/d1;->b:Lkotlinx/serialization/internal/c1;

    return-object p0
.end method

.method public final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/serialization/internal/b1;

    const-string p0, "<this>"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lkotlinx/serialization/internal/b1;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final i(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lkotlinx/serialization/internal/b1;

    const-string p0, "<this>"

    invoke-static {p2, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This method lead to boxing and must not be used, use Builder.append instead"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract j()Ljava/lang/Object;
.end method

.method public abstract k(Lzb/b;Ljava/lang/Object;I)V
.end method

.method public final serialize(Lzb/d;Ljava/lang/Object;)V
    .locals 3

    const-string v0, "encoder"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lkotlinx/serialization/internal/a;->d(Ljava/lang/Object;)I

    move-result v0

    check-cast p1, Lp1/f;

    const-string v1, "descriptor"

    iget-object v2, p0, Lkotlinx/serialization/internal/d1;->b:Lkotlinx/serialization/internal/c1;

    invoke-static {v2, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lzb/d;->a(Lkotlinx/serialization/descriptors/g;)Lzb/b;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v0}, Lkotlinx/serialization/internal/d1;->k(Lzb/b;Ljava/lang/Object;I)V

    invoke-interface {p1, v2}, Lzb/b;->b(Lkotlinx/serialization/descriptors/g;)V

    return-void
.end method
