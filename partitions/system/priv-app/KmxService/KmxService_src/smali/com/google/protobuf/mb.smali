.class public final Lcom/google/protobuf/mb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/protobuf/nb;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/protobuf/nb;

    invoke-direct {v0}, Lcom/google/protobuf/nb;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/ByteString;)V
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object v1, v0, Lcom/google/protobuf/nb;->d:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/protobuf/nb;->d:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object p0, p0, Lcom/google/protobuf/nb;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Lcom/google/protobuf/nb;
    .locals 3

    new-instance v0, Lcom/google/protobuf/nb;

    invoke-direct {v0}, Lcom/google/protobuf/nb;-><init>()V

    iget-object v1, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object v1, v1, Lcom/google/protobuf/nb;->a:Ljava/util/List;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object v2, v2, Lcom/google/protobuf/nb;->a:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/google/protobuf/nb;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object v1, v1, Lcom/google/protobuf/nb;->b:Ljava/util/List;

    if-nez v1, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object v2, v2, Lcom/google/protobuf/nb;->b:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :goto_1
    iput-object v1, v0, Lcom/google/protobuf/nb;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object v1, v1, Lcom/google/protobuf/nb;->c:Ljava/util/List;

    if-nez v1, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object v2, v2, Lcom/google/protobuf/nb;->c:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :goto_2
    iput-object v1, v0, Lcom/google/protobuf/nb;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object v1, v1, Lcom/google/protobuf/nb;->d:Ljava/util/List;

    if-nez v1, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object v2, v2, Lcom/google/protobuf/nb;->d:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :goto_3
    iput-object v1, v0, Lcom/google/protobuf/nb;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object v1, v1, Lcom/google/protobuf/nb;->e:Ljava/util/List;

    if-nez v1, :cond_4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_4

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object p0, p0, Lcom/google/protobuf/nb;->e:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    :goto_4
    iput-object p0, v0, Lcom/google/protobuf/nb;->e:Ljava/util/List;

    return-object v0
.end method

.method public final c()Lcom/google/protobuf/mb;
    .locals 4

    new-instance v0, Lcom/google/protobuf/nb;

    invoke-direct {v0}, Lcom/google/protobuf/nb;-><init>()V

    iget-object v1, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object v1, v1, Lcom/google/protobuf/nb;->a:Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iput-object v2, v0, Lcom/google/protobuf/nb;->a:Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object v3, v3, Lcom/google/protobuf/nb;->a:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/protobuf/nb;->a:Ljava/util/List;

    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object v1, v1, Lcom/google/protobuf/nb;->b:Ljava/util/List;

    if-nez v1, :cond_1

    iput-object v2, v0, Lcom/google/protobuf/nb;->b:Ljava/util/List;

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object v3, v3, Lcom/google/protobuf/nb;->b:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/protobuf/nb;->b:Ljava/util/List;

    :goto_1
    iget-object v1, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object v1, v1, Lcom/google/protobuf/nb;->c:Ljava/util/List;

    if-nez v1, :cond_2

    iput-object v2, v0, Lcom/google/protobuf/nb;->c:Ljava/util/List;

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object v3, v3, Lcom/google/protobuf/nb;->c:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/protobuf/nb;->c:Ljava/util/List;

    :goto_2
    iget-object v1, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object v1, v1, Lcom/google/protobuf/nb;->d:Ljava/util/List;

    if-nez v1, :cond_3

    iput-object v2, v0, Lcom/google/protobuf/nb;->d:Ljava/util/List;

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object v3, v3, Lcom/google/protobuf/nb;->d:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/protobuf/nb;->d:Ljava/util/List;

    :goto_3
    iget-object v1, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object v1, v1, Lcom/google/protobuf/nb;->e:Ljava/util/List;

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object p0, p0, Lcom/google/protobuf/nb;->e:Ljava/util/List;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_4
    iput-object v2, v0, Lcom/google/protobuf/nb;->e:Ljava/util/List;

    new-instance p0, Lcom/google/protobuf/mb;

    invoke-direct {p0}, Lcom/google/protobuf/mb;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    return-object p0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/mb;->c()Lcom/google/protobuf/mb;

    move-result-object p0

    return-object p0
.end method

.method public final d(Lcom/google/protobuf/nb;)V
    .locals 2

    iget-object v0, p1, Lcom/google/protobuf/nb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object v1, v0, Lcom/google/protobuf/nb;->a:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/protobuf/nb;->a:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object v0, v0, Lcom/google/protobuf/nb;->a:Ljava/util/List;

    iget-object v1, p1, Lcom/google/protobuf/nb;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v0, p1, Lcom/google/protobuf/nb;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object v1, v0, Lcom/google/protobuf/nb;->b:Ljava/util/List;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/protobuf/nb;->b:Ljava/util/List;

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object v0, v0, Lcom/google/protobuf/nb;->b:Ljava/util/List;

    iget-object v1, p1, Lcom/google/protobuf/nb;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    iget-object v0, p1, Lcom/google/protobuf/nb;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object v1, v0, Lcom/google/protobuf/nb;->c:Ljava/util/List;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/protobuf/nb;->c:Ljava/util/List;

    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object v0, v0, Lcom/google/protobuf/nb;->c:Ljava/util/List;

    iget-object v1, p1, Lcom/google/protobuf/nb;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    iget-object v0, p1, Lcom/google/protobuf/nb;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object v1, v0, Lcom/google/protobuf/nb;->d:Ljava/util/List;

    if-nez v1, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/protobuf/nb;->d:Ljava/util/List;

    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object v0, v0, Lcom/google/protobuf/nb;->d:Ljava/util/List;

    iget-object v1, p1, Lcom/google/protobuf/nb;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    iget-object v0, p1, Lcom/google/protobuf/nb;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object v1, v0, Lcom/google/protobuf/nb;->e:Ljava/util/List;

    if-nez v1, :cond_8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/protobuf/nb;->e:Ljava/util/List;

    :cond_8
    iget-object p0, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object p0, p0, Lcom/google/protobuf/nb;->e:Ljava/util/List;

    iget-object p1, p1, Lcom/google/protobuf/nb;->e:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_9
    return-void
.end method
