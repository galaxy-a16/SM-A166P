.class public abstract Lkotlin/collections/o;
.super Ll9/b;
.source "SourceFile"


# direct methods
.method public static final P0(ILjava/lang/Iterable;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p0

    :cond_0
    return p0
.end method
