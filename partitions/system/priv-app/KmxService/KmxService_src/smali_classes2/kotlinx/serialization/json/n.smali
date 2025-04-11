.class public final Lkotlinx/serialization/json/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/descriptors/g;


# instance fields
.field public final a:Lkotlin/f;


# direct methods
.method public constructor <init>(Lvb/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lkotlin/h;->d(Lvb/a;)Lkotlin/f;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/n;->a:Lkotlin/f;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/json/n;->f()Lkotlinx/serialization/descriptors/g;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/g;->a(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/serialization/json/n;->f()Lkotlinx/serialization/descriptors/g;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/g;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lkotlinx/serialization/descriptors/n;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/serialization/json/n;->f()Lkotlinx/serialization/descriptors/g;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/g;->c()Lkotlinx/serialization/descriptors/n;

    move-result-object p0

    return-object p0
.end method

.method public final d()I
    .locals 0

    invoke-virtual {p0}, Lkotlinx/serialization/json/n;->f()Lkotlinx/serialization/descriptors/g;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/g;->d()I

    move-result p0

    return p0
.end method

.method public final e(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/serialization/json/n;->f()Lkotlinx/serialization/descriptors/g;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/g;->e(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final f()Lkotlinx/serialization/descriptors/g;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/n;->a:Lkotlin/f;

    invoke-interface {p0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/descriptors/g;

    return-object p0
.end method

.method public final g()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getAnnotations()Ljava/util/List;
    .locals 0

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public final h(I)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/serialization/json/n;->f()Lkotlinx/serialization/descriptors/g;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/g;->h(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final i(I)Lkotlinx/serialization/descriptors/g;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/serialization/json/n;->f()Lkotlinx/serialization/descriptors/g;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/g;->i(I)Lkotlinx/serialization/descriptors/g;

    move-result-object p0

    return-object p0
.end method

.method public final isInline()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final j(I)Z
    .locals 0

    invoke-virtual {p0}, Lkotlinx/serialization/json/n;->f()Lkotlinx/serialization/descriptors/g;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/g;->j(I)Z

    move-result p0

    return p0
.end method
