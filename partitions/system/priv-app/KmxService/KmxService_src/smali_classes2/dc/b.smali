.class public abstract Ldc/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkc/t;


# instance fields
.field public final a:Lkc/j;

.field public b:Z

.field public final synthetic c:Ldc/h;


# direct methods
.method public constructor <init>(Ldc/h;)V
    .locals 1

    iput-object p1, p0, Ldc/b;->c:Ldc/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkc/j;

    iget-object p1, p1, Ldc/h;->e:Lkc/g;

    invoke-interface {p1}, Lkc/t;->timeout()Lkc/v;

    move-result-object p1

    invoke-direct {v0, p1}, Lkc/j;-><init>(Lkc/v;)V

    iput-object v0, p0, Ldc/b;->a:Lkc/j;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Ldc/b;->c:Ldc/h;

    iget v1, v0, Ldc/h;->a:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    iget-object p0, p0, Ldc/b;->a:Lkc/j;

    iget-object v1, p0, Lkc/j;->e:Lkc/v;

    sget-object v3, Lkc/v;->d:Lkc/u;

    iput-object v3, p0, Lkc/j;->e:Lkc/v;

    invoke-virtual {v1}, Lkc/v;->a()Lkc/v;

    invoke-virtual {v1}, Lkc/v;->b()Lkc/v;

    iput v2, v0, Ldc/h;->a:I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Ldc/h;->a:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public read(Lkc/e;J)J
    .locals 2

    iget-object v0, p0, Ldc/b;->c:Ldc/h;

    const-string v1, "sink"

    invoke-static {p1, v1}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, v0, Ldc/h;->e:Lkc/g;

    invoke-interface {v1, p1, p2, p3}, Lkc/t;->read(Lkc/e;J)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p1

    iget-object p2, v0, Ldc/h;->d:Lokhttp3/internal/connection/k;

    invoke-virtual {p2}, Lokhttp3/internal/connection/k;->k()V

    invoke-virtual {p0}, Ldc/b;->a()V

    throw p1
.end method

.method public final timeout()Lkc/v;
    .locals 0

    iget-object p0, p0, Ldc/b;->a:Lkc/j;

    return-object p0
.end method
