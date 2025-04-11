.class final Lokhttp3/CertificatePinner$check$1;
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
.field final synthetic $hostname:Ljava/lang/String;

.field final synthetic $peerCertificates:Ljava/util/List;

.field final synthetic this$0:Lokhttp3/g;


# direct methods
.method public constructor <init>(Lokhttp3/g;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/CertificatePinner$check$1;->this$0:Lokhttp3/g;

    iput-object p2, p0, Lokhttp3/CertificatePinner$check$1;->$peerCertificates:Ljava/util/List;

    iput-object p3, p0, Lokhttp3/CertificatePinner$check$1;->$hostname:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lokhttp3/CertificatePinner$check$1;->invoke()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/CertificatePinner$check$1;->this$0:Lokhttp3/g;

    .line 2
    iget-object v0, v0, Lokhttp3/g;->b:Lcom/fasterxml/jackson/annotation/i0;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lokhttp3/CertificatePinner$check$1;->$peerCertificates:Ljava/util/List;

    iget-object v2, p0, Lokhttp3/CertificatePinner$check$1;->$hostname:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/annotation/i0;->e(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lokhttp3/CertificatePinner$check$1;->$peerCertificates:Ljava/util/List;

    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v1, v0}, Lkotlin/collections/o;->P0(ILjava/lang/Iterable;)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    if-eqz v1, :cond_1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object p0
.end method
