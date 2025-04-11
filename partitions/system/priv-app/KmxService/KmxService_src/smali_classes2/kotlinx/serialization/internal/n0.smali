.class public abstract Lkotlinx/serialization/internal/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/c;


# instance fields
.field public final a:Lkotlinx/serialization/c;

.field public final b:Lkotlinx/serialization/c;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/c;Lkotlinx/serialization/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/n0;->a:Lkotlinx/serialization/c;

    iput-object p2, p0, Lkotlinx/serialization/internal/n0;->b:Lkotlinx/serialization/c;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract b(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final deserialize(Lzb/c;)Ljava/lang/Object;
    .locals 5

    const-string v0, "decoder"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlinx/serialization/c;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object v0

    invoke-interface {p1, v0}, Lzb/c;->a(Lkotlinx/serialization/descriptors/g;)Lzb/a;

    move-result-object p1

    invoke-interface {p1}, Lzb/a;->n()V

    sget-object v0, Lkotlinx/serialization/internal/p1;->a:Ljava/lang/Object;

    move-object v1, v0

    :goto_0
    invoke-interface {p0}, Lkotlinx/serialization/c;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object v2

    invoke-interface {p1, v2}, Lzb/a;->m(Lkotlinx/serialization/descriptors/g;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    if-ne v2, v1, :cond_0

    invoke-interface {p0}, Lkotlinx/serialization/c;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object v2

    iget-object v4, p0, Lkotlinx/serialization/internal/n0;->b:Lkotlinx/serialization/c;

    invoke-interface {p1, v2, v1, v4, v3}, Lzb/a;->C(Lkotlinx/serialization/descriptors/g;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlinx/serialization/SerializationException;

    const-string p1, "Invalid index: "

    invoke-static {p1, v2}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-interface {p0}, Lkotlinx/serialization/c;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v4, p0, Lkotlinx/serialization/internal/n0;->a:Lkotlinx/serialization/c;

    invoke-interface {p1, v0, v2, v4, v3}, Lzb/a;->C(Lkotlinx/serialization/descriptors/g;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lkotlinx/serialization/c;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object v2

    invoke-interface {p1, v2}, Lzb/a;->b(Lkotlinx/serialization/descriptors/g;)V

    sget-object p1, Lkotlinx/serialization/internal/p1;->a:Ljava/lang/Object;

    if-eq v0, p1, :cond_4

    if-eq v1, p1, :cond_3

    invoke-virtual {p0, v0, v1}, Lkotlinx/serialization/internal/n0;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Lkotlinx/serialization/SerializationException;

    const-string p1, "Element \'value\' is missing"

    invoke-direct {p0, p1}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lkotlinx/serialization/SerializationException;

    const-string p1, "Element \'key\' is missing"

    invoke-direct {p0, p1}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final serialize(Lzb/d;Ljava/lang/Object;)V
    .locals 4

    const-string v0, "encoder"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlinx/serialization/c;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object v0

    invoke-interface {p1, v0}, Lzb/d;->a(Lkotlinx/serialization/descriptors/g;)Lzb/b;

    move-result-object p1

    invoke-interface {p0}, Lkotlinx/serialization/c;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object v0

    invoke-virtual {p0, p2}, Lkotlinx/serialization/internal/n0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast p1, Lp1/f;

    const/4 v2, 0x0

    iget-object v3, p0, Lkotlinx/serialization/internal/n0;->a:Lkotlinx/serialization/c;

    invoke-virtual {p1, v0, v2, v3, v1}, Lp1/f;->y(Lkotlinx/serialization/descriptors/g;ILkotlinx/serialization/c;Ljava/lang/Object;)V

    invoke-interface {p0}, Lkotlinx/serialization/c;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/internal/n0;->b:Lkotlinx/serialization/c;

    invoke-virtual {p0, p2}, Lkotlinx/serialization/internal/n0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1, p2}, Lp1/f;->y(Lkotlinx/serialization/descriptors/g;ILkotlinx/serialization/c;Ljava/lang/Object;)V

    invoke-interface {p0}, Lkotlinx/serialization/c;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object p0

    invoke-interface {p1, p0}, Lzb/b;->b(Lkotlinx/serialization/descriptors/g;)V

    return-void
.end method
