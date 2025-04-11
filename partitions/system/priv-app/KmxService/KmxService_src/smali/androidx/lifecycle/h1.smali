.class public interface abstract Landroidx/lifecycle/h1;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/lifecycle/f1;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Factory.create(String) is unsupported.  This Factory requires `CreationExtras` to be passed into `create` method."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d(Ljava/lang/Class;Ln0/e;)Landroidx/lifecycle/f1;
    .locals 0

    invoke-interface {p0, p1}, Landroidx/lifecycle/h1;->a(Ljava/lang/Class;)Landroidx/lifecycle/f1;

    move-result-object p0

    return-object p0
.end method
