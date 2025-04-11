.class public final Lc2/d;
.super Lcom/fasterxml/jackson/core/i;
.source "SourceFile"


# instance fields
.field public final c:Lc2/d;

.field public d:Lva/e;

.field public e:Lc2/d;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Object;

.field public h:Z


# direct methods
.method public constructor <init>(ILc2/d;Lva/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/i;-><init>()V

    iput p1, p0, Lcom/fasterxml/jackson/core/i;->a:I

    iput-object p2, p0, Lc2/d;->c:Lc2/d;

    iput-object p3, p0, Lc2/d;->d:Lva/e;

    const/4 p1, -0x1

    iput p1, p0, Lcom/fasterxml/jackson/core/i;->b:I

    return-void
.end method

.method public constructor <init>(ILc2/d;Lva/e;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/i;-><init>()V

    iput p1, p0, Lcom/fasterxml/jackson/core/i;->a:I

    iput-object p2, p0, Lc2/d;->c:Lc2/d;

    iput-object p3, p0, Lc2/d;->d:Lva/e;

    const/4 p1, -0x1

    iput p1, p0, Lcom/fasterxml/jackson/core/i;->b:I

    iput-object p4, p0, Lc2/d;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lc2/d;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lc2/d;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public final c()Lcom/fasterxml/jackson/core/i;
    .locals 0

    iget-object p0, p0, Lc2/d;->c:Lc2/d;

    return-object p0
.end method

.method public final d()Z
    .locals 0

    iget-object p0, p0, Lc2/d;->f:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final h(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lc2/d;->g:Ljava/lang/Object;

    return-void
.end method

.method public final j()Lc2/d;
    .locals 4

    iget-object v0, p0, Lc2/d;->e:Lc2/d;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    new-instance v0, Lc2/d;

    iget-object v3, p0, Lc2/d;->d:Lva/e;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lva/e;->c()Lva/e;

    move-result-object v1

    :goto_0
    invoke-direct {v0, v2, p0, v1}, Lc2/d;-><init>(ILc2/d;Lva/e;)V

    iput-object v0, p0, Lc2/d;->e:Lc2/d;

    return-object v0

    :cond_1
    iput v2, v0, Lcom/fasterxml/jackson/core/i;->a:I

    const/4 p0, -0x1

    iput p0, v0, Lcom/fasterxml/jackson/core/i;->b:I

    iput-object v1, v0, Lc2/d;->f:Ljava/lang/String;

    const/4 p0, 0x0

    iput-boolean p0, v0, Lc2/d;->h:Z

    iput-object v1, v0, Lc2/d;->g:Ljava/lang/Object;

    iget-object p0, v0, Lc2/d;->d:Lva/e;

    if-eqz p0, :cond_2

    iput-object v1, p0, Lva/e;->b:Ljava/lang/Object;

    iput-object v1, p0, Lva/e;->c:Ljava/lang/Object;

    iput-object v1, p0, Lva/e;->d:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final k(Ljava/lang/Object;)Lc2/d;
    .locals 4

    iget-object v0, p0, Lc2/d;->e:Lc2/d;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    new-instance v0, Lc2/d;

    iget-object v3, p0, Lc2/d;->d:Lva/e;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lva/e;->c()Lva/e;

    move-result-object v1

    :goto_0
    invoke-direct {v0, v2, p0, v1, p1}, Lc2/d;-><init>(ILc2/d;Lva/e;Ljava/lang/Object;)V

    iput-object v0, p0, Lc2/d;->e:Lc2/d;

    return-object v0

    :cond_1
    iput v2, v0, Lcom/fasterxml/jackson/core/i;->a:I

    const/4 p0, -0x1

    iput p0, v0, Lcom/fasterxml/jackson/core/i;->b:I

    iput-object v1, v0, Lc2/d;->f:Ljava/lang/String;

    const/4 p0, 0x0

    iput-boolean p0, v0, Lc2/d;->h:Z

    iput-object p1, v0, Lc2/d;->g:Ljava/lang/Object;

    iget-object p0, v0, Lc2/d;->d:Lva/e;

    if-eqz p0, :cond_2

    iput-object v1, p0, Lva/e;->b:Ljava/lang/Object;

    iput-object v1, p0, Lva/e;->c:Ljava/lang/Object;

    iput-object v1, p0, Lva/e;->d:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final l()Lc2/d;
    .locals 4

    iget-object v0, p0, Lc2/d;->e:Lc2/d;

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez v0, :cond_1

    new-instance v0, Lc2/d;

    iget-object v3, p0, Lc2/d;->d:Lva/e;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lva/e;->c()Lva/e;

    move-result-object v1

    :goto_0
    invoke-direct {v0, v2, p0, v1}, Lc2/d;-><init>(ILc2/d;Lva/e;)V

    iput-object v0, p0, Lc2/d;->e:Lc2/d;

    return-object v0

    :cond_1
    iput v2, v0, Lcom/fasterxml/jackson/core/i;->a:I

    const/4 p0, -0x1

    iput p0, v0, Lcom/fasterxml/jackson/core/i;->b:I

    iput-object v1, v0, Lc2/d;->f:Ljava/lang/String;

    const/4 p0, 0x0

    iput-boolean p0, v0, Lc2/d;->h:Z

    iput-object v1, v0, Lc2/d;->g:Ljava/lang/Object;

    iget-object p0, v0, Lc2/d;->d:Lva/e;

    if-eqz p0, :cond_2

    iput-object v1, p0, Lva/e;->b:Ljava/lang/Object;

    iput-object v1, p0, Lva/e;->c:Ljava/lang/Object;

    iput-object v1, p0, Lva/e;->d:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final m(Ljava/lang/Object;)Lc2/d;
    .locals 4

    iget-object v0, p0, Lc2/d;->e:Lc2/d;

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez v0, :cond_1

    new-instance v0, Lc2/d;

    iget-object v3, p0, Lc2/d;->d:Lva/e;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lva/e;->c()Lva/e;

    move-result-object v1

    :goto_0
    invoke-direct {v0, v2, p0, v1, p1}, Lc2/d;-><init>(ILc2/d;Lva/e;Ljava/lang/Object;)V

    iput-object v0, p0, Lc2/d;->e:Lc2/d;

    return-object v0

    :cond_1
    iput v2, v0, Lcom/fasterxml/jackson/core/i;->a:I

    const/4 p0, -0x1

    iput p0, v0, Lcom/fasterxml/jackson/core/i;->b:I

    iput-object v1, v0, Lc2/d;->f:Ljava/lang/String;

    const/4 p0, 0x0

    iput-boolean p0, v0, Lc2/d;->h:Z

    iput-object p1, v0, Lc2/d;->g:Ljava/lang/Object;

    iget-object p0, v0, Lc2/d;->d:Lva/e;

    if-eqz p0, :cond_2

    iput-object v1, p0, Lva/e;->b:Ljava/lang/Object;

    iput-object v1, p0, Lva/e;->c:Ljava/lang/Object;

    iput-object v1, p0, Lva/e;->d:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final n(Ljava/lang/String;)I
    .locals 3

    iget v0, p0, Lcom/fasterxml/jackson/core/i;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lc2/d;->h:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc2/d;->h:Z

    iput-object p1, p0, Lc2/d;->f:Ljava/lang/String;

    iget-object v1, p0, Lc2/d;->d:Lva/e;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lva/e;->k(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance p0, Lcom/fasterxml/jackson/core/JsonGenerationException;

    const-string v0, "Duplicate field \'"

    const-string v2, "\'"

    invoke-static {v0, p1, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, v1, Lva/e;->a:Ljava/lang/Object;

    instance-of v1, v0, Lcom/fasterxml/jackson/core/f;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/fasterxml/jackson/core/f;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerationException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/f;)V

    throw p0

    :cond_2
    iget p0, p0, Lcom/fasterxml/jackson/core/i;->b:I

    if-gez p0, :cond_3

    const/4 v0, 0x0

    :cond_3
    return v0

    :cond_4
    :goto_1
    const/4 p0, 0x4

    return p0
.end method

.method public final o()I
    .locals 4

    iget v0, p0, Lcom/fasterxml/jackson/core/i;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-boolean v0, p0, Lc2/d;->h:Z

    if-nez v0, :cond_0

    const/4 p0, 0x5

    return p0

    :cond_0
    iput-boolean v1, p0, Lc2/d;->h:Z

    iget v0, p0, Lcom/fasterxml/jackson/core/i;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/fasterxml/jackson/core/i;->b:I

    return v3

    :cond_1
    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/fasterxml/jackson/core/i;->b:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/i;->b:I

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1

    :cond_3
    iget v0, p0, Lcom/fasterxml/jackson/core/i;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/fasterxml/jackson/core/i;->b:I

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x3

    :goto_1
    return v1
.end method
