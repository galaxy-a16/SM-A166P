.class public final Lcom/google/protobuf/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/b;


# instance fields
.field public a:Lcom/google/protobuf/b;

.field public b:Lcom/google/protobuf/a;

.field public c:Lcom/google/protobuf/c;

.field public d:Z


# direct methods
.method public constructor <init>(Lcom/google/protobuf/c;Lcom/google/protobuf/b;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/protobuf/g7;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/protobuf/ba;->c:Lcom/google/protobuf/c;

    iput-object p2, p0, Lcom/google/protobuf/ba;->a:Lcom/google/protobuf/b;

    iput-boolean p3, p0, Lcom/google/protobuf/ba;->d:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/ba;->g()V

    return-void
.end method

.method public final b()Lcom/google/protobuf/c;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/ba;->d:Z

    invoke-virtual {p0}, Lcom/google/protobuf/ba;->d()Lcom/google/protobuf/c;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lcom/google/protobuf/a;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/ba;->b:Lcom/google/protobuf/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/ba;->c:Lcom/google/protobuf/c;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/c;->newBuilderForType(Lcom/google/protobuf/b;)Lcom/google/protobuf/m8;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/a;

    iput-object v0, p0, Lcom/google/protobuf/ba;->b:Lcom/google/protobuf/a;

    iget-object v1, p0, Lcom/google/protobuf/ba;->c:Lcom/google/protobuf/c;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/a;->mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/a;

    iget-object v0, p0, Lcom/google/protobuf/ba;->b:Lcom/google/protobuf/a;

    invoke-virtual {v0}, Lcom/google/protobuf/a;->markClean()V

    :cond_0
    iget-object p0, p0, Lcom/google/protobuf/ba;->b:Lcom/google/protobuf/a;

    return-object p0
.end method

.method public final d()Lcom/google/protobuf/c;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/ba;->c:Lcom/google/protobuf/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/ba;->b:Lcom/google/protobuf/a;

    invoke-interface {v0}, Lcom/google/protobuf/m8;->buildPartial()Lcom/google/protobuf/n8;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/c;

    iput-object v0, p0, Lcom/google/protobuf/ba;->c:Lcom/google/protobuf/c;

    :cond_0
    iget-object p0, p0, Lcom/google/protobuf/ba;->c:Lcom/google/protobuf/c;

    return-object p0
.end method

.method public final e()Lcom/google/protobuf/t8;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/ba;->b:Lcom/google/protobuf/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/google/protobuf/ba;->c:Lcom/google/protobuf/c;

    return-object p0
.end method

.method public final f(Lcom/google/protobuf/c;)V
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/ba;->b:Lcom/google/protobuf/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/ba;->c:Lcom/google/protobuf/c;

    invoke-interface {v0}, Lcom/google/protobuf/t8;->getDefaultInstanceForType()Lcom/google/protobuf/n8;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/google/protobuf/ba;->c:Lcom/google/protobuf/c;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/ba;->c()Lcom/google/protobuf/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/a;->mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/a;

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/ba;->g()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/ba;->b:Lcom/google/protobuf/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/ba;->c:Lcom/google/protobuf/c;

    :cond_0
    iget-boolean v0, p0, Lcom/google/protobuf/ba;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/ba;->a:Lcom/google/protobuf/b;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/protobuf/b;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/ba;->d:Z

    :cond_1
    return-void
.end method

.method public final h(Lcom/google/protobuf/c;)V
    .locals 1

    sget-object v0, Lcom/google/protobuf/g7;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/protobuf/ba;->c:Lcom/google/protobuf/c;

    iget-object p1, p0, Lcom/google/protobuf/ba;->b:Lcom/google/protobuf/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/a;->dispose()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/protobuf/ba;->b:Lcom/google/protobuf/a;

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/ba;->g()V

    return-void
.end method
