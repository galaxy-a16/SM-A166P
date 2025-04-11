.class public final Lokhttp3/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lokhttp3/e0;

.field public b:Lokhttp3/Protocol;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Lokhttp3/q;

.field public f:Lokhttp3/r;

.field public g:Lokhttp3/o0;

.field public h:Lokhttp3/k0;

.field public i:Lokhttp3/k0;

.field public j:Lokhttp3/k0;

.field public k:J

.field public l:J

.field public m:Lokhttp3/internal/connection/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lokhttp3/j0;->c:I

    new-instance v0, Lokhttp3/r;

    invoke-direct {v0}, Lokhttp3/r;-><init>()V

    iput-object v0, p0, Lokhttp3/j0;->f:Lokhttp3/r;

    return-void
.end method

.method public constructor <init>(Lokhttp3/k0;)V
    .locals 2

    .line 2
    const-string v0, "response"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lokhttp3/k0;->a:Lokhttp3/e0;

    iput-object v0, p0, Lokhttp3/j0;->a:Lokhttp3/e0;

    iget-object v0, p1, Lokhttp3/k0;->b:Lokhttp3/Protocol;

    iput-object v0, p0, Lokhttp3/j0;->b:Lokhttp3/Protocol;

    iget v0, p1, Lokhttp3/k0;->d:I

    iput v0, p0, Lokhttp3/j0;->c:I

    iget-object v0, p1, Lokhttp3/k0;->c:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/j0;->d:Ljava/lang/String;

    iget-object v0, p1, Lokhttp3/k0;->e:Lokhttp3/q;

    iput-object v0, p0, Lokhttp3/j0;->e:Lokhttp3/q;

    iget-object v0, p1, Lokhttp3/k0;->f:Lokhttp3/s;

    invoke-virtual {v0}, Lokhttp3/s;->e()Lokhttp3/r;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/j0;->f:Lokhttp3/r;

    iget-object v0, p1, Lokhttp3/k0;->g:Lokhttp3/o0;

    iput-object v0, p0, Lokhttp3/j0;->g:Lokhttp3/o0;

    iget-object v0, p1, Lokhttp3/k0;->h:Lokhttp3/k0;

    iput-object v0, p0, Lokhttp3/j0;->h:Lokhttp3/k0;

    iget-object v0, p1, Lokhttp3/k0;->i:Lokhttp3/k0;

    iput-object v0, p0, Lokhttp3/j0;->i:Lokhttp3/k0;

    iget-object v0, p1, Lokhttp3/k0;->j:Lokhttp3/k0;

    iput-object v0, p0, Lokhttp3/j0;->j:Lokhttp3/k0;

    iget-wide v0, p1, Lokhttp3/k0;->k:J

    iput-wide v0, p0, Lokhttp3/j0;->k:J

    iget-wide v0, p1, Lokhttp3/k0;->l:J

    iput-wide v0, p0, Lokhttp3/j0;->l:J

    iget-object p1, p1, Lokhttp3/k0;->m:Lokhttp3/internal/connection/d;

    iput-object p1, p0, Lokhttp3/j0;->m:Lokhttp3/internal/connection/d;

    return-void
.end method

.method public static b(Ljava/lang/String;Lokhttp3/k0;)V
    .locals 3

    if-eqz p1, :cond_8

    iget-object v0, p1, Lokhttp3/k0;->g:Lokhttp3/o0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_7

    iget-object v0, p1, Lokhttp3/k0;->h:Lokhttp3/k0;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_6

    iget-object v0, p1, Lokhttp3/k0;->i:Lokhttp3/k0;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    if-eqz v0, :cond_5

    iget-object p1, p1, Lokhttp3/k0;->j:Lokhttp3/k0;

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    const-string p1, ".priorResponse != null"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const-string p1, ".cacheResponse != null"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const-string p1, ".networkResponse != null"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    const-string p1, ".body != null"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_4
    return-void
.end method


# virtual methods
.method public final a()Lokhttp3/k0;
    .locals 17

    move-object/from16 v0, p0

    iget v4, v0, Lokhttp3/j0;->c:I

    if-ltz v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    iget-object v1, v0, Lokhttp3/j0;->a:Lokhttp3/e0;

    if-eqz v1, :cond_3

    iget-object v2, v0, Lokhttp3/j0;->b:Lokhttp3/Protocol;

    if-eqz v2, :cond_2

    iget-object v3, v0, Lokhttp3/j0;->d:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v5, v0, Lokhttp3/j0;->e:Lokhttp3/q;

    iget-object v6, v0, Lokhttp3/j0;->f:Lokhttp3/r;

    invoke-virtual {v6}, Lokhttp3/r;->c()Lokhttp3/s;

    move-result-object v6

    iget-object v7, v0, Lokhttp3/j0;->g:Lokhttp3/o0;

    iget-object v8, v0, Lokhttp3/j0;->h:Lokhttp3/k0;

    iget-object v9, v0, Lokhttp3/j0;->i:Lokhttp3/k0;

    iget-object v10, v0, Lokhttp3/j0;->j:Lokhttp3/k0;

    iget-wide v11, v0, Lokhttp3/j0;->k:J

    iget-wide v13, v0, Lokhttp3/j0;->l:J

    iget-object v15, v0, Lokhttp3/j0;->m:Lokhttp3/internal/connection/d;

    new-instance v16, Lokhttp3/k0;

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v15}, Lokhttp3/k0;-><init>(Lokhttp3/e0;Lokhttp3/Protocol;Ljava/lang/String;ILokhttp3/q;Lokhttp3/s;Lokhttp3/o0;Lokhttp3/k0;Lokhttp3/k0;Lokhttp3/k0;JJLokhttp3/internal/connection/d;)V

    return-object v16

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lokhttp3/j0;->c:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final c(Lokhttp3/s;)V
    .locals 1

    const-string v0, "headers"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokhttp3/s;->e()Lokhttp3/r;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/j0;->f:Lokhttp3/r;

    return-void
.end method

.method public final d(Lokhttp3/Protocol;)V
    .locals 1

    const-string v0, "protocol"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp3/j0;->b:Lokhttp3/Protocol;

    return-void
.end method
