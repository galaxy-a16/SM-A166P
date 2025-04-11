.class final Lokhttp3/internal/connection/RouteSelector$resetNextProxy$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lvb/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lvb/a;"
    }
.end annotation


# instance fields
.field final synthetic $proxy:Ljava/net/Proxy;

.field final synthetic $url:Lokhttp3/u;

.field final synthetic this$0:Lokhttp3/internal/connection/n;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/n;Ljava/net/Proxy;Lokhttp3/u;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/connection/RouteSelector$resetNextProxy$1;->this$0:Lokhttp3/internal/connection/n;

    iput-object p2, p0, Lokhttp3/internal/connection/RouteSelector$resetNextProxy$1;->$proxy:Ljava/net/Proxy;

    iput-object p3, p0, Lokhttp3/internal/connection/RouteSelector$resetNextProxy$1;->$url:Lokhttp3/u;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lokhttp3/internal/connection/RouteSelector$resetNextProxy$1;->invoke()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/connection/RouteSelector$resetNextProxy$1;->$proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ll9/b;->o0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/RouteSelector$resetNextProxy$1;->$url:Lokhttp3/u;

    invoke-virtual {v0}, Lokhttp3/u;->g()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    new-array p0, v3, [Ljava/net/Proxy;

    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object v0, p0, v2

    invoke-static {p0}, Lac/c;->j([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lokhttp3/internal/connection/RouteSelector$resetNextProxy$1;->this$0:Lokhttp3/internal/connection/n;

    .line 2
    iget-object p0, p0, Lokhttp3/internal/connection/n;->e:Lokhttp3/a;

    .line 3
    iget-object p0, p0, Lokhttp3/a;->k:Ljava/net/ProxySelector;

    .line 4
    invoke-virtual {p0, v0}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v3

    :goto_1
    if-eqz v0, :cond_4

    new-array p0, v3, [Ljava/net/Proxy;

    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object v0, p0, v2

    invoke-static {p0}, Lac/c;->j([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {p0}, Lac/c;->u(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
