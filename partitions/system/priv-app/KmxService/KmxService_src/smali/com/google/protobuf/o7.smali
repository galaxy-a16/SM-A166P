.class public final Lcom/google/protobuf/o7;
.super Lcom/google/protobuf/p7;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/p7;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/Object;)V
    .locals 0

    invoke-static {p3, p1, p2}, Lcom/google/protobuf/wb;->m(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/f7;

    check-cast p0, Lcom/google/protobuf/h;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/protobuf/h;->a:Z

    return-void
.end method

.method public final b(JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    invoke-static {p3, p1, p2}, Lcom/google/protobuf/wb;->m(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/f7;

    invoke-static {p4, p1, p2}, Lcom/google/protobuf/wb;->m(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/protobuf/f7;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    move-object v2, p0

    check-cast v2, Lcom/google/protobuf/h;

    iget-boolean v2, v2, Lcom/google/protobuf/h;->a:Z

    if-nez v2, :cond_0

    add-int/2addr v1, v0

    invoke-interface {p0, v1}, Lcom/google/protobuf/f7;->x(I)Lcom/google/protobuf/f7;

    move-result-object p0

    :cond_0
    invoke-interface {p0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v0, :cond_2

    move-object p4, p0

    :cond_2
    invoke-static {p3, p1, p2, p4}, Lcom/google/protobuf/wb;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final c(JLjava/lang/Object;)Ljava/util/List;
    .locals 1

    invoke-static {p3, p1, p2}, Lcom/google/protobuf/wb;->m(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/f7;

    move-object v0, p0

    check-cast v0, Lcom/google/protobuf/h;

    iget-boolean v0, v0, Lcom/google/protobuf/h;->a:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    :goto_0
    invoke-interface {p0, v0}, Lcom/google/protobuf/f7;->x(I)Lcom/google/protobuf/f7;

    move-result-object p0

    invoke-static {p3, p1, p2, p0}, Lcom/google/protobuf/wb;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    return-object p0
.end method
