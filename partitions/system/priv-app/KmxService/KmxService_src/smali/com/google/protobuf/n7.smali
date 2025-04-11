.class public final Lcom/google/protobuf/n7;
.super Lcom/google/protobuf/p7;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/n7;->c:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/p7;-><init>()V

    return-void
.end method

.method public static d(IJLjava/lang/Object;)Ljava/util/List;
    .locals 3

    invoke-static {p3, p1, p2}, Lcom/google/protobuf/wb;->m(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, v0, Lcom/google/protobuf/m7;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/protobuf/l7;

    invoke-direct {v0, p0}, Lcom/google/protobuf/l7;-><init>(I)V

    goto :goto_2

    :cond_0
    instance-of v1, v0, Lcom/google/protobuf/p9;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lcom/google/protobuf/f7;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/protobuf/f7;

    invoke-interface {v0, p0}, Lcom/google/protobuf/f7;->x(I)Lcom/google/protobuf/f7;

    move-result-object p0

    :goto_0
    move-object v0, p0

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/n7;->c:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    move-object v0, v1

    goto :goto_2

    :cond_3
    instance-of v1, v0, Lcom/google/protobuf/sb;

    if-eqz v1, :cond_4

    new-instance v1, Lcom/google/protobuf/l7;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p0

    invoke-direct {v1, v2}, Lcom/google/protobuf/l7;-><init>(I)V

    check-cast v0, Lcom/google/protobuf/sb;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/l7;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :goto_2
    invoke-static {p3, p1, p2, v0}, Lcom/google/protobuf/wb;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    :cond_4
    instance-of v1, v0, Lcom/google/protobuf/p9;

    if-eqz v1, :cond_5

    instance-of v1, v0, Lcom/google/protobuf/f7;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/f7;

    move-object v2, v1

    check-cast v2, Lcom/google/protobuf/h;

    iget-boolean v2, v2, Lcom/google/protobuf/h;->a:Z

    if-nez v2, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p0

    invoke-interface {v1, v0}, Lcom/google/protobuf/f7;->x(I)Lcom/google/protobuf/f7;

    move-result-object p0

    goto :goto_0

    :cond_5
    :goto_3
    return-object v0
.end method


# virtual methods
.method public final a(JLjava/lang/Object;)V
    .locals 2

    invoke-static {p3, p1, p2}, Lcom/google/protobuf/wb;->m(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    instance-of v0, p0, Lcom/google/protobuf/m7;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/protobuf/m7;

    invoke-interface {p0}, Lcom/google/protobuf/m7;->O()Lcom/google/protobuf/m7;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/n7;->c:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    instance-of v0, p0, Lcom/google/protobuf/p9;

    if-eqz v0, :cond_3

    instance-of v0, p0, Lcom/google/protobuf/f7;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/google/protobuf/f7;

    check-cast p0, Lcom/google/protobuf/h;

    iget-boolean p1, p0, Lcom/google/protobuf/h;->a:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/protobuf/h;->a:Z

    :cond_2
    return-void

    :cond_3
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-static {p3, p1, p2, p0}, Lcom/google/protobuf/wb;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final b(JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    invoke-static {p4, p1, p2}, Lcom/google/protobuf/wb;->m(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p4

    invoke-static {p4, p1, p2, p3}, Lcom/google/protobuf/n7;->d(IJLjava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    invoke-interface {p4, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-lez v0, :cond_1

    move-object p0, p4

    :cond_1
    invoke-static {p3, p1, p2, p0}, Lcom/google/protobuf/wb;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final c(JLjava/lang/Object;)Ljava/util/List;
    .locals 0

    const/16 p0, 0xa

    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/n7;->d(IJLjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
