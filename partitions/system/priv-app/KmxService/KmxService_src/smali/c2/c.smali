.class public final Lc2/c;
.super Lcom/fasterxml/jackson/core/i;
.source "SourceFile"


# instance fields
.field public final c:Lc2/c;

.field public d:Lva/e;

.field public e:Lc2/c;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Object;

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>(Lc2/c;Lva/e;III)V
    .locals 0

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/i;-><init>()V

    iput-object p1, p0, Lc2/c;->c:Lc2/c;

    iput-object p2, p0, Lc2/c;->d:Lva/e;

    iput p3, p0, Lcom/fasterxml/jackson/core/i;->a:I

    iput p4, p0, Lc2/c;->h:I

    iput p5, p0, Lc2/c;->i:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/fasterxml/jackson/core/i;->b:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lc2/c;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lc2/c;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public final c()Lcom/fasterxml/jackson/core/i;
    .locals 0

    iget-object p0, p0, Lc2/c;->c:Lc2/c;

    return-object p0
.end method

.method public final d()Z
    .locals 0

    iget-object p0, p0, Lc2/c;->f:Ljava/lang/String;

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

    iput-object p1, p0, Lc2/c;->g:Ljava/lang/Object;

    return-void
.end method

.method public final j(II)Lc2/c;
    .locals 8

    iget-object v0, p0, Lc2/c;->e:Lc2/c;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Lc2/c;

    iget-object v2, p0, Lc2/c;->d:Lva/e;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lva/e;->c()Lva/e;

    move-result-object v1

    :goto_0
    move-object v4, v1

    const/4 v5, 0x1

    move-object v2, v0

    move-object v3, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lc2/c;-><init>(Lc2/c;Lva/e;III)V

    iput-object v0, p0, Lc2/c;->e:Lc2/c;

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    iput p0, v0, Lcom/fasterxml/jackson/core/i;->a:I

    const/4 p0, -0x1

    iput p0, v0, Lcom/fasterxml/jackson/core/i;->b:I

    iput p1, v0, Lc2/c;->h:I

    iput p2, v0, Lc2/c;->i:I

    iput-object v1, v0, Lc2/c;->f:Ljava/lang/String;

    iput-object v1, v0, Lc2/c;->g:Ljava/lang/Object;

    iget-object p0, v0, Lc2/c;->d:Lva/e;

    if-eqz p0, :cond_2

    iput-object v1, p0, Lva/e;->b:Ljava/lang/Object;

    iput-object v1, p0, Lva/e;->c:Ljava/lang/Object;

    iput-object v1, p0, Lva/e;->d:Ljava/lang/Object;

    :cond_2
    :goto_1
    return-object v0
.end method

.method public final k(II)Lc2/c;
    .locals 8

    iget-object v0, p0, Lc2/c;->e:Lc2/c;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Lc2/c;

    iget-object v2, p0, Lc2/c;->d:Lva/e;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lva/e;->c()Lva/e;

    move-result-object v1

    :goto_0
    move-object v4, v1

    const/4 v5, 0x2

    move-object v2, v0

    move-object v3, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lc2/c;-><init>(Lc2/c;Lva/e;III)V

    iput-object v0, p0, Lc2/c;->e:Lc2/c;

    return-object v0

    :cond_1
    const/4 p0, 0x2

    iput p0, v0, Lcom/fasterxml/jackson/core/i;->a:I

    const/4 p0, -0x1

    iput p0, v0, Lcom/fasterxml/jackson/core/i;->b:I

    iput p1, v0, Lc2/c;->h:I

    iput p2, v0, Lc2/c;->i:I

    iput-object v1, v0, Lc2/c;->f:Ljava/lang/String;

    iput-object v1, v0, Lc2/c;->g:Ljava/lang/Object;

    iget-object p0, v0, Lc2/c;->d:Lva/e;

    if-eqz p0, :cond_2

    iput-object v1, p0, Lva/e;->b:Ljava/lang/Object;

    iput-object v1, p0, Lva/e;->c:Ljava/lang/Object;

    iput-object v1, p0, Lva/e;->d:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final l()Z
    .locals 2

    iget v0, p0, Lcom/fasterxml/jackson/core/i;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/i;->b:I

    iget p0, p0, Lcom/fasterxml/jackson/core/i;->a:I

    if-eqz p0, :cond_0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final m(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lc2/c;->f:Ljava/lang/String;

    iget-object p0, p0, Lc2/c;->d:Lva/e;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lva/e;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    iget-object p0, p0, Lva/e;->a:Ljava/lang/Object;

    instance-of v1, p0, Lcom/fasterxml/jackson/core/g;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/fasterxml/jackson/core/g;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v1, "Duplicate field \'"

    const-string v2, "\'"

    invoke-static {v1, p1, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/g;Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method
