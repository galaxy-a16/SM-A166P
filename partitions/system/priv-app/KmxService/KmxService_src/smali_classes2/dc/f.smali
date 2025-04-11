.class public final Ldc/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkc/r;


# instance fields
.field public final a:Lkc/j;

.field public b:Z

.field public final synthetic c:Ldc/h;


# direct methods
.method public constructor <init>(Ldc/h;)V
    .locals 1

    iput-object p1, p0, Ldc/f;->c:Ldc/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkc/j;

    iget-object p1, p1, Ldc/h;->f:Lkc/f;

    invoke-interface {p1}, Lkc/r;->timeout()Lkc/v;

    move-result-object p1

    invoke-direct {v0, p1}, Lkc/j;-><init>(Lkc/v;)V

    iput-object v0, p0, Ldc/f;->a:Lkc/j;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    iget-boolean v0, p0, Ldc/f;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldc/f;->b:Z

    iget-object v0, p0, Ldc/f;->c:Ldc/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Ldc/f;->a:Lkc/j;

    iget-object v1, p0, Lkc/j;->e:Lkc/v;

    sget-object v2, Lkc/v;->d:Lkc/u;

    iput-object v2, p0, Lkc/j;->e:Lkc/v;

    invoke-virtual {v1}, Lkc/v;->a()Lkc/v;

    invoke-virtual {v1}, Lkc/v;->b()Lkc/v;

    const/4 p0, 0x3

    iput p0, v0, Ldc/h;->a:I

    return-void
.end method

.method public final f0(Lkc/e;J)V
    .locals 6

    const-string v0, "source"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Ldc/f;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lkc/e;->b:J

    sget-object v2, Lac/c;->a:[B

    const-wide/16 v2, 0x0

    or-long v4, v2, p2

    cmp-long v4, v4, v2

    if-ltz v4, :cond_0

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    sub-long/2addr v0, v2

    cmp-long v0, v0, p2

    if-ltz v0, :cond_0

    iget-object p0, p0, Ldc/f;->c:Ldc/h;

    iget-object p0, p0, Ldc/h;->f:Lkc/f;

    invoke-interface {p0, p1, p2, p3}, Lkc/r;->f0(Lkc/e;J)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final flush()V
    .locals 1

    iget-boolean v0, p0, Ldc/f;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Ldc/f;->c:Ldc/h;

    iget-object p0, p0, Ldc/h;->f:Lkc/f;

    invoke-interface {p0}, Lkc/f;->flush()V

    return-void
.end method

.method public final timeout()Lkc/v;
    .locals 0

    iget-object p0, p0, Ldc/f;->a:Lkc/j;

    return-object p0
.end method
