.class public final Lcom/fasterxml/jackson/databind/deser/std/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/fasterxml/jackson/databind/deser/std/n;

.field public b:Z

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/util/LinkedHashMap;

.field public f:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/n;->a:Lcom/fasterxml/jackson/databind/deser/std/n;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/deser/std/n;->b:Z

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/deser/std/n;->c:Z

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/n;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/n;->a:Lcom/fasterxml/jackson/databind/deser/std/n;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/deser/std/n;->b:Z

    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/deser/std/n;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/n;->e:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/n;->e:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/std/n;->e:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/std/n;->e:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/n;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/n;->f:Ljava/util/ArrayList;

    :cond_0
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/std/n;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/n;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/n;->d:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/deser/std/n;->c:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/std/n;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/n;->e:Ljava/util/LinkedHashMap;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/n;->e:Ljava/util/LinkedHashMap;

    :cond_1
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/std/n;->e:Ljava/util/LinkedHashMap;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
