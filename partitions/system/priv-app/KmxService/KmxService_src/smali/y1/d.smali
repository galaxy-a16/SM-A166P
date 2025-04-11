.class public final Ly1/d;
.super Lcom/fasterxml/jackson/core/i;
.source "SourceFile"


# instance fields
.field public final c:Ly1/d;

.field public d:Ly1/d;

.field public e:Ljava/lang/String;

.field public f:Ly1/c;

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(ILy1/d;Ly1/c;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/i;-><init>()V

    iput p1, p0, Lcom/fasterxml/jackson/core/i;->a:I

    iput-object p2, p0, Ly1/d;->c:Ly1/d;

    iput-object p3, p0, Ly1/d;->f:Ly1/c;

    const/4 p1, -0x1

    iput p1, p0, Lcom/fasterxml/jackson/core/i;->b:I

    iput-boolean p4, p0, Ly1/d;->g:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Ly1/d;->h:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ly1/d;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final c()Lcom/fasterxml/jackson/core/i;
    .locals 0

    iget-object p0, p0, Ly1/d;->c:Ly1/d;

    return-object p0
.end method

.method public final d()Z
    .locals 0

    iget-object p0, p0, Ly1/d;->e:Ljava/lang/String;

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

    return-void
.end method

.method public final j(Ljava/lang/StringBuilder;)V
    .locals 2

    iget-object v0, p0, Ly1/d;->c:Ly1/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ly1/d;->j(Ljava/lang/StringBuilder;)V

    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/i;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ly1/d;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ly1/d;->e:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 p0, 0x3f

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    const/16 p0, 0x7d

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/fasterxml/jackson/core/i;->b:I

    if-gez p0, :cond_3

    const/4 p0, 0x0

    :cond_3
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    :goto_1
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const-string p0, "/"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    return-void
.end method

.method public final k(Ly1/c;)Ly1/c;
    .locals 3

    iget v0, p0, Lcom/fasterxml/jackson/core/i;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/core/i;->b:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/fasterxml/jackson/core/i;->b:I

    if-ne v0, v2, :cond_1

    invoke-virtual {p1, v1}, Ly1/c;->d(I)Ly1/c;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public final l(Ly1/c;Z)Ly1/d;
    .locals 2

    iget-object v0, p0, Ly1/d;->d:Ly1/d;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Ly1/d;

    invoke-direct {v0, v1, p0, p1, p2}, Ly1/d;-><init>(ILy1/d;Ly1/c;Z)V

    iput-object v0, p0, Ly1/d;->d:Ly1/d;

    return-object v0

    :cond_0
    iput v1, v0, Lcom/fasterxml/jackson/core/i;->a:I

    iput-object p1, v0, Ly1/d;->f:Ly1/c;

    const/4 p0, -0x1

    iput p0, v0, Lcom/fasterxml/jackson/core/i;->b:I

    const/4 p0, 0x0

    iput-object p0, v0, Ly1/d;->e:Ljava/lang/String;

    iput-boolean p2, v0, Ly1/d;->g:Z

    const/4 p0, 0x0

    iput-boolean p0, v0, Ly1/d;->h:Z

    return-object v0
.end method

.method public final m(Ly1/c;Z)Ly1/d;
    .locals 2

    iget-object v0, p0, Ly1/d;->d:Ly1/d;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    new-instance v0, Ly1/d;

    invoke-direct {v0, v1, p0, p1, p2}, Ly1/d;-><init>(ILy1/d;Ly1/c;Z)V

    iput-object v0, p0, Ly1/d;->d:Ly1/d;

    return-object v0

    :cond_0
    iput v1, v0, Lcom/fasterxml/jackson/core/i;->a:I

    iput-object p1, v0, Ly1/d;->f:Ly1/c;

    const/4 p0, -0x1

    iput p0, v0, Lcom/fasterxml/jackson/core/i;->b:I

    const/4 p0, 0x0

    iput-object p0, v0, Ly1/d;->e:Ljava/lang/String;

    iput-boolean p2, v0, Ly1/d;->g:Z

    const/4 p0, 0x0

    iput-boolean p0, v0, Ly1/d;->h:Z

    return-object v0
.end method

.method public final n()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2

    iget-boolean v0, p0, Ly1/d;->g:Z

    const/4 v1, 0x2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ly1/d;->g:Z

    iget p0, p0, Lcom/fasterxml/jackson/core/i;->a:I

    if-ne p0, v1, :cond_0

    sget-object p0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0

    :cond_0
    sget-object p0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0

    :cond_1
    iget-boolean v0, p0, Ly1/d;->h:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/fasterxml/jackson/core/i;->a:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Ly1/d;->h:Z

    sget-object p0, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Ly1/d;->j(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
