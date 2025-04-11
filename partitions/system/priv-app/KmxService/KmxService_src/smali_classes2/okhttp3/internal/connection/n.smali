.class public final Lokhttp3/internal/connection/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;

.field public b:I

.field public c:Ljava/util/List;

.field public final d:Ljava/util/ArrayList;

.field public final e:Lokhttp3/a;

.field public final f:Ll6/l;

.field public final g:Lokhttp3/e;

.field public final h:Le9/a;


# direct methods
.method public constructor <init>(Lokhttp3/a;Ll6/l;Lokhttp3/internal/connection/i;Le9/a;)V
    .locals 1

    const-string v0, "address"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "routeDatabase"

    invoke-static {p2, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p3, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p4, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/n;->e:Lokhttp3/a;

    iput-object p2, p0, Lokhttp3/internal/connection/n;->f:Ll6/l;

    iput-object p3, p0, Lokhttp3/internal/connection/n;->g:Lokhttp3/e;

    iput-object p4, p0, Lokhttp3/internal/connection/n;->h:Le9/a;

    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object p2, p0, Lokhttp3/internal/connection/n;->a:Ljava/util/List;

    iput-object p2, p0, Lokhttp3/internal/connection/n;->c:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lokhttp3/internal/connection/n;->d:Ljava/util/ArrayList;

    new-instance p2, Lokhttp3/internal/connection/RouteSelector$resetNextProxy$1;

    iget-object p3, p1, Lokhttp3/a;->j:Ljava/net/Proxy;

    iget-object p1, p1, Lokhttp3/a;->a:Lokhttp3/u;

    invoke-direct {p2, p0, p3, p1}, Lokhttp3/internal/connection/RouteSelector$resetNextProxy$1;-><init>(Lokhttp3/internal/connection/n;Ljava/net/Proxy;Lokhttp3/u;)V

    const-string p3, "url"

    invoke-static {p1, p3}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lokhttp3/internal/connection/RouteSelector$resetNextProxy$1;->invoke()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/connection/n;->a:Ljava/util/List;

    const/4 p2, 0x0

    iput p2, p0, Lokhttp3/internal/connection/n;->b:I

    const-string p0, "proxies"

    invoke-static {p1, p0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    iget v0, p0, Lokhttp3/internal/connection/n;->b:I

    iget-object v1, p0, Lokhttp3/internal/connection/n;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-nez v0, :cond_2

    iget-object p0, p0, Lokhttp3/internal/connection/n;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v2

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :cond_2
    :goto_1
    return v2
.end method
