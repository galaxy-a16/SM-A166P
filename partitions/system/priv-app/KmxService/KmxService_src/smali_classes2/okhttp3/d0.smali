.class public final Lokhttp3/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lokhttp3/u;

.field public b:Ljava/lang/String;

.field public c:Lokhttp3/r;

.field public d:Lokhttp3/i0;

.field public e:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lokhttp3/d0;->e:Ljava/util/LinkedHashMap;

    const-string v0, "GET"

    iput-object v0, p0, Lokhttp3/d0;->b:Ljava/lang/String;

    new-instance v0, Lokhttp3/r;

    invoke-direct {v0}, Lokhttp3/r;-><init>()V

    iput-object v0, p0, Lokhttp3/d0;->c:Lokhttp3/r;

    return-void
.end method

.method public constructor <init>(Lokhttp3/e0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lokhttp3/d0;->e:Ljava/util/LinkedHashMap;

    iget-object v0, p1, Lokhttp3/e0;->b:Lokhttp3/u;

    iput-object v0, p0, Lokhttp3/d0;->a:Lokhttp3/u;

    iget-object v0, p1, Lokhttp3/e0;->c:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/d0;->b:Ljava/lang/String;

    iget-object v0, p1, Lokhttp3/e0;->e:Lokhttp3/i0;

    iput-object v0, p0, Lokhttp3/d0;->d:Lokhttp3/i0;

    iget-object v0, p1, Lokhttp3/e0;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    .line 3
    :goto_0
    iput-object v0, p0, Lokhttp3/d0;->e:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lokhttp3/e0;->d:Lokhttp3/s;

    invoke-virtual {p1}, Lokhttp3/s;->e()Lokhttp3/r;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/d0;->c:Lokhttp3/r;

    return-void
.end method


# virtual methods
.method public final a()Lokhttp3/e0;
    .locals 6

    iget-object v1, p0, Lokhttp3/d0;->a:Lokhttp3/u;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lokhttp3/d0;->b:Ljava/lang/String;

    iget-object v0, p0, Lokhttp3/d0;->c:Lokhttp3/r;

    invoke-virtual {v0}, Lokhttp3/r;->c()Lokhttp3/s;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/d0;->d:Lokhttp3/i0;

    iget-object p0, p0, Lokhttp3/d0;->e:Ljava/util/LinkedHashMap;

    sget-object v0, Lac/c;->a:[B

    const-string v0, "$this$toImmutableMap"

    invoke-static {p0, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/collections/z;->k0()Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    const-string v0, "Collections.unmodifiableMap(LinkedHashMap(this))"

    invoke-static {p0, v0}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    move-object v5, p0

    new-instance p0, Lokhttp3/e0;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lokhttp3/e0;-><init>(Lokhttp3/u;Ljava/lang/String;Lokhttp3/s;Lokhttp3/i0;Ljava/util/Map;)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "url == null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lokhttp3/d0;->c:Lokhttp3/r;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lokhttp3/p;->a(Ljava/lang/String;)V

    invoke-static {p2, p1}, Lokhttp3/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lokhttp3/r;->d(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lokhttp3/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c(Ljava/lang/String;Lokhttp3/i0;)V
    .locals 4

    const-string v0, "method"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_6

    const-string v0, "method "

    if-nez p2, :cond_4

    const-string v3, "POST"

    invoke-static {p1, v3}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "PUT"

    invoke-static {p1, v3}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "PATCH"

    invoke-static {p1, v3}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "PROPPATCH"

    invoke-static {p1, v3}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "REPORT"

    invoke-static {p1, v3}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    xor-int/2addr v1, v2

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const-string p0, " must have a request body."

    invoke-static {v0, p1, p0}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-static {p1}, Lcom/fasterxml/jackson/annotation/i0;->B(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_1
    iput-object p1, p0, Lokhttp3/d0;->b:Ljava/lang/String;

    iput-object p2, p0, Lokhttp3/d0;->d:Lokhttp3/i0;

    return-void

    :cond_5
    const-string p0, " must not have a request body."

    invoke-static {v0, p1, p0}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "method.isEmpty() == true"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    iget-object p0, p0, Lokhttp3/d0;->e:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lokhttp3/d0;->e:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lokhttp3/d0;->e:Ljava/util/LinkedHashMap;

    :cond_1
    iget-object p0, p0, Lokhttp3/d0;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Li4/f;->M()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final e()V
    .locals 3

    const-string v0, "http://localhost/"

    const-string v1, "ws:"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/r;->N(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "p://localhost/"

    const-string v1, "http:"

    goto :goto_0

    :cond_0
    const-string v1, "wss:"

    invoke-static {v0, v1, v2}, Lkotlin/text/r;->N(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "://localhost/"

    const-string v1, "https:"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "$this$toHttpUrl"

    invoke-static {v0, v1}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lokhttp3/t;

    invoke-direct {v1}, Lokhttp3/t;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lokhttp3/t;->d(Lokhttp3/u;Ljava/lang/String;)V

    invoke-virtual {v1}, Lokhttp3/t;->a()Lokhttp3/u;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/d0;->a:Lokhttp3/u;

    return-void
.end method
