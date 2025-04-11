.class public interface abstract La5/d;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(La5/r;)Lj5/a;
.end method

.method public b(La5/r;)Ljava/util/Set;
    .locals 0

    invoke-interface {p0, p1}, La5/d;->c(La5/r;)Lj5/a;

    move-result-object p0

    invoke-interface {p0}, Lj5/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public abstract c(La5/r;)Lj5/a;
.end method

.method public d(La5/r;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, La5/d;->a(La5/r;)Lj5/a;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lj5/a;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public e(Ljava/lang/Class;)Lj5/a;
    .locals 0

    invoke-static {p1}, La5/r;->a(Ljava/lang/Class;)La5/r;

    move-result-object p1

    invoke-interface {p0, p1}, La5/d;->a(La5/r;)Lj5/a;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, La5/r;->a(Ljava/lang/Class;)La5/r;

    move-result-object p1

    invoke-interface {p0, p1}, La5/d;->d(La5/r;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
