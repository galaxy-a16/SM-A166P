.class public interface abstract Lh8/b;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getCode()I
.end method

.method public isError()Z
    .locals 1

    invoke-interface {p0}, Lh8/b;->getCode()I

    move-result p0

    const/16 v0, 0x80

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
