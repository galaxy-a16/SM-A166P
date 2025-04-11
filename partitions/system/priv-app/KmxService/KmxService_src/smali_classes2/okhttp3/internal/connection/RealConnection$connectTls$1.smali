.class final Lokhttp3/internal/connection/RealConnection$connectTls$1;
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
.field final synthetic $address:Lokhttp3/a;

.field final synthetic $certificatePinner:Lokhttp3/g;

.field final synthetic $unverifiedHandshake:Lokhttp3/q;


# direct methods
.method public constructor <init>(Lokhttp3/g;Lokhttp3/q;Lokhttp3/a;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection$connectTls$1;->$certificatePinner:Lokhttp3/g;

    iput-object p2, p0, Lokhttp3/internal/connection/RealConnection$connectTls$1;->$unverifiedHandshake:Lokhttp3/q;

    iput-object p3, p0, Lokhttp3/internal/connection/RealConnection$connectTls$1;->$address:Lokhttp3/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection$connectTls$1;->invoke()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection$connectTls$1;->$certificatePinner:Lokhttp3/g;

    .line 2
    iget-object v0, v0, Lokhttp3/g;->b:Lcom/fasterxml/jackson/annotation/i0;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection$connectTls$1;->$unverifiedHandshake:Lokhttp3/q;

    invoke-virtual {v1}, Lokhttp3/q;->a()Ljava/util/List;

    move-result-object v1

    iget-object p0, p0, Lokhttp3/internal/connection/RealConnection$connectTls$1;->$address:Lokhttp3/a;

    .line 4
    iget-object p0, p0, Lokhttp3/a;->a:Lokhttp3/u;

    .line 5
    iget-object p0, p0, Lokhttp3/u;->e:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, p0, v1}, Lcom/fasterxml/jackson/annotation/i0;->e(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Li4/f;->M()V

    const/4 p0, 0x0

    throw p0
.end method
