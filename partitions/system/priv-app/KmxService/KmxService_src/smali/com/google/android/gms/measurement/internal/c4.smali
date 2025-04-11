.class public final Lcom/google/android/gms/measurement/internal/c4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:J

.field public B:Ljava/lang/String;

.field public C:Z

.field public D:J

.field public E:J

.field public final a:Lcom/google/android/gms/measurement/internal/t3;

.field public final b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:J

.field public h:J

.field public i:J

.field public j:Ljava/lang/String;

.field public k:J

.field public l:Ljava/lang/String;

.field public m:J

.field public n:J

.field public o:Z

.field public p:Z

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/Boolean;

.field public s:J

.field public t:Ljava/util/ArrayList;

.field public u:Ljava/lang/String;

.field public v:J

.field public w:J

.field public x:J

.field public y:J

.field public z:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/t3;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-static {p2}, Lva/n;->f(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/c4;->b:Ljava/lang/String;

    iget-object p0, p1, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    return-void
.end method


# virtual methods
.method public final A()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/c4;->s:J

    return-wide v0
.end method

.method public final B()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/c4;->q:Ljava/lang/String;

    return-object p0
.end method

.method public final C()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->B:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/c4;->r(Ljava/lang/String;)V

    return-object v0
.end method

.method public final D()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/c4;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final E()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/c4;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final F()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/c4;->j:Ljava/lang/String;

    return-object p0
.end method

.method public final G()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/c4;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final H()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/c4;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/c4;->q:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/fasterxml/jackson/annotation/i0;->P(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c4;->q:Ljava/lang/String;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c4;->c:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/fasterxml/jackson/annotation/i0;->P(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c4;->c:Ljava/lang/String;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c4;->l:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/fasterxml/jackson/annotation/i0;->P(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c4;->l:Ljava/lang/String;

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c4;->j:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/fasterxml/jackson/annotation/i0;->P(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c4;->j:Ljava/lang/String;

    return-void
.end method

.method public final e(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/c4;->k:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/c4;->k:J

    return-void
.end method

.method public final f(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/c4;->D:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/c4;->D:J

    return-void
.end method

.method public final g(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/c4;->y:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/c4;->y:J

    return-void
.end method

.method public final h(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/c4;->z:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/c4;->z:J

    return-void
.end method

.method public final i(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/c4;->x:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/c4;->x:J

    return-void
.end method

.method public final j(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/c4;->w:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/c4;->w:J

    return-void
.end method

.method public final k(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/c4;->A:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/c4;->A:J

    return-void
.end method

.method public final l(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/c4;->v:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/c4;->v:J

    return-void
.end method

.method public final m(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/c4;->n:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/c4;->n:J

    return-void
.end method

.method public final n(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/c4;->s:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/c4;->s:J

    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c4;->f:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/fasterxml/jackson/annotation/i0;->P(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c4;->f:Ljava/lang/String;

    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/c4;->d:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/fasterxml/jackson/annotation/i0;->P(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c4;->d:Ljava/lang/String;

    return-void
.end method

.method public final q(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/c4;->m:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/c4;->m:J

    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c4;->B:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/fasterxml/jackson/annotation/i0;->P(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c4;->B:Ljava/lang/String;

    return-void
.end method

.method public final s(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/c4;->i:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/c4;->i:J

    return-void
.end method

.method public final t(J)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lva/n;->c(Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/c4;->g:J

    cmp-long v3, v3, p1

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/c4;->g:J

    return-void
.end method

.method public final u(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/c4;->h:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/c4;->h:J

    return-void
.end method

.method public final v(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/c4;->o:Z

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/c4;->o:Z

    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c4;->e:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/fasterxml/jackson/annotation/i0;->P(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c4;->e:Ljava/lang/String;

    return-void
.end method

.method public final x(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->t:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/annotation/i0;->P(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c4;->C:Z

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->t:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public final y()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-boolean p0, p0, Lcom/google/android/gms/measurement/internal/c4;->p:Z

    return p0
.end method

.method public final z()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/c4;->k:J

    return-wide v0
.end method
