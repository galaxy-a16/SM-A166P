.class public final Ll/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final a:I

.field public b:I

.field public c:I

.field public d:Z

.field public final synthetic e:Lh/e;


# direct methods
.method public constructor <init>(Lh/e;I)V
    .locals 1

    iput-object p1, p0, Ll/f;->e:Lh/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ll/f;->d:Z

    iput p2, p0, Ll/f;->a:I

    invoke-virtual {p1}, Lh/e;->h()I

    move-result p1

    iput p1, p0, Ll/f;->b:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Ll/f;->c:I

    iget p0, p0, Ll/f;->b:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Ll/f;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Ll/f;->c:I

    iget v1, p0, Ll/f;->a:I

    iget-object v2, p0, Ll/f;->e:Lh/e;

    invoke-virtual {v2, v0, v1}, Lh/e;->f(II)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ll/f;->c:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Ll/f;->c:I

    iput-boolean v2, p0, Ll/f;->d:Z

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 2

    iget-boolean v0, p0, Ll/f;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ll/f;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ll/f;->c:I

    iget v1, p0, Ll/f;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ll/f;->b:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Ll/f;->d:Z

    iget-object p0, p0, Ll/f;->e:Lh/e;

    invoke-virtual {p0, v0}, Lh/e;->l(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
