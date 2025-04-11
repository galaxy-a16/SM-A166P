.class public final Lokhttp3/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lokhttp3/d;


# static fields
.field public static final C:Ljava/util/List;

.field public static final E:Ljava/util/List;


# instance fields
.field public final A:I

.field public final B:Ll6/l;

.field public final a:La5/b;

.field public final b:Lxa/d;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;

.field public final e:Lac/a;

.field public final f:Z

.field public final g:Lokhttp3/b;

.field public final h:Z

.field public final i:Z

.field public final j:Lokhttp3/l;

.field public final k:Lokhttp3/m;

.field public final l:Ljava/net/ProxySelector;

.field public final m:Lokhttp3/b;

.field public final n:Ljavax/net/SocketFactory;

.field public final p:Ljavax/net/ssl/SSLSocketFactory;

.field public final q:Ljavax/net/ssl/X509TrustManager;

.field public final t:Ljava/util/List;

.field public final u:Ljava/util/List;

.field public final v:Ljavax/net/ssl/HostnameVerifier;

.field public final w:Lokhttp3/g;

.field public final x:Lcom/fasterxml/jackson/annotation/i0;

.field public final y:I

.field public final z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Lokhttp3/Protocol;

    sget-object v2, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lac/c;->j([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lokhttp3/b0;->C:Ljava/util/List;

    new-array v0, v0, [Lokhttp3/j;

    sget-object v1, Lokhttp3/j;->e:Lokhttp3/j;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/j;->f:Lokhttp3/j;

    aput-object v1, v0, v4

    invoke-static {v0}, Lac/c;->j([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/b0;->E:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lokhttp3/a0;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lokhttp3/a0;->a:La5/b;

    iput-object v0, p0, Lokhttp3/b0;->a:La5/b;

    iget-object v0, p1, Lokhttp3/a0;->b:Lxa/d;

    iput-object v0, p0, Lokhttp3/b0;->b:Lxa/d;

    iget-object v0, p1, Lokhttp3/a0;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Lac/c;->u(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/b0;->c:Ljava/util/List;

    iget-object v0, p1, Lokhttp3/a0;->d:Ljava/util/ArrayList;

    invoke-static {v0}, Lac/c;->u(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/b0;->d:Ljava/util/List;

    iget-object v0, p1, Lokhttp3/a0;->e:Lac/a;

    iput-object v0, p0, Lokhttp3/b0;->e:Lac/a;

    iget-boolean v0, p1, Lokhttp3/a0;->f:Z

    iput-boolean v0, p0, Lokhttp3/b0;->f:Z

    iget-object v0, p1, Lokhttp3/a0;->g:Le9/a;

    iput-object v0, p0, Lokhttp3/b0;->g:Lokhttp3/b;

    iget-boolean v0, p1, Lokhttp3/a0;->h:Z

    iput-boolean v0, p0, Lokhttp3/b0;->h:Z

    iget-boolean v0, p1, Lokhttp3/a0;->i:Z

    iput-boolean v0, p0, Lokhttp3/b0;->i:Z

    iget-object v0, p1, Lokhttp3/a0;->j:Ll4/e;

    iput-object v0, p0, Lokhttp3/b0;->j:Lokhttp3/l;

    iget-object v0, p1, Lokhttp3/a0;->k:Lc3/l;

    iput-object v0, p0, Lokhttp3/b0;->k:Lokhttp3/m;

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lhc/a;->a:Lhc/a;

    :goto_0
    iput-object v0, p0, Lokhttp3/b0;->l:Ljava/net/ProxySelector;

    iget-object v0, p1, Lokhttp3/a0;->l:Le9/a;

    iput-object v0, p0, Lokhttp3/b0;->m:Lokhttp3/b;

    iget-object v0, p1, Lokhttp3/a0;->m:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lokhttp3/b0;->n:Ljavax/net/SocketFactory;

    iget-object v0, p1, Lokhttp3/a0;->n:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/b0;->t:Ljava/util/List;

    iget-object v1, p1, Lokhttp3/a0;->o:Ljava/util/List;

    iput-object v1, p0, Lokhttp3/b0;->u:Ljava/util/List;

    iget-object v1, p1, Lokhttp3/a0;->p:Lic/c;

    iput-object v1, p0, Lokhttp3/b0;->v:Ljavax/net/ssl/HostnameVerifier;

    iget v1, p1, Lokhttp3/a0;->r:I

    iput v1, p0, Lokhttp3/b0;->y:I

    iget v1, p1, Lokhttp3/a0;->s:I

    iput v1, p0, Lokhttp3/b0;->z:I

    iget v1, p1, Lokhttp3/a0;->t:I

    iput v1, p0, Lokhttp3/b0;->A:I

    new-instance v1, Ll6/l;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ll6/l;-><init>(I)V

    iput-object v1, p0, Lokhttp3/b0;->B:Ll6/l;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/j;

    iget-boolean v1, v1, Lokhttp3/j;->a:Z

    if-eqz v1, :cond_2

    move v0, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v3

    :goto_2
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iput-object v1, p0, Lokhttp3/b0;->p:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v1, p0, Lokhttp3/b0;->x:Lcom/fasterxml/jackson/annotation/i0;

    iput-object v1, p0, Lokhttp3/b0;->q:Ljavax/net/ssl/X509TrustManager;

    sget-object p1, Lokhttp3/g;->c:Lokhttp3/g;

    goto :goto_3

    :cond_4
    sget-object v0, Lfc/m;->a:Lfc/m;

    sget-object v0, Lfc/m;->a:Lfc/m;

    invoke-virtual {v0}, Lfc/m;->j()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/b0;->q:Ljavax/net/ssl/X509TrustManager;

    sget-object v4, Lfc/m;->a:Lfc/m;

    if-eqz v0, :cond_19

    invoke-virtual {v4, v0}, Lfc/m;->i(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    iput-object v4, p0, Lokhttp3/b0;->p:Ljavax/net/ssl/SSLSocketFactory;

    sget-object v4, Lfc/m;->a:Lfc/m;

    invoke-virtual {v4, v0}, Lfc/m;->b(Ljavax/net/ssl/X509TrustManager;)Lcom/fasterxml/jackson/annotation/i0;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/b0;->x:Lcom/fasterxml/jackson/annotation/i0;

    iget-object p1, p1, Lokhttp3/a0;->q:Lokhttp3/g;

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p1, Lokhttp3/g;->b:Lcom/fasterxml/jackson/annotation/i0;

    invoke-static {v4, v0}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    new-instance v4, Lokhttp3/g;

    iget-object p1, p1, Lokhttp3/g;->a:Ljava/util/Set;

    invoke-direct {v4, p1, v0}, Lokhttp3/g;-><init>(Ljava/util/Set;Lcom/fasterxml/jackson/annotation/i0;)V

    move-object p1, v4

    :goto_3
    iput-object p1, p0, Lokhttp3/b0;->w:Lokhttp3/g;

    iget-object p1, p0, Lokhttp3/b0;->c:Ljava/util/List;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>"

    if-eqz p1, :cond_17

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v3

    if-eqz v4, :cond_16

    iget-object p1, p0, Lokhttp3/b0;->d:Ljava/util/List;

    if-eqz p1, :cond_15

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_14

    iget-object p1, p0, Lokhttp3/b0;->t:Ljava/util/List;

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/j;

    iget-boolean v0, v0, Lokhttp3/j;->a:Z

    if-eqz v0, :cond_7

    move p1, v2

    goto :goto_5

    :cond_8
    :goto_4
    move p1, v3

    :goto_5
    iget-object v0, p0, Lokhttp3/b0;->q:Ljavax/net/ssl/X509TrustManager;

    iget-object v1, p0, Lokhttp3/b0;->x:Lcom/fasterxml/jackson/annotation/i0;

    iget-object v4, p0, Lokhttp3/b0;->p:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz p1, :cond_10

    if-nez v4, :cond_9

    move p1, v3

    goto :goto_6

    :cond_9
    move p1, v2

    :goto_6
    const-string v4, "Check failed."

    if-eqz p1, :cond_f

    if-nez v1, :cond_a

    move p1, v3

    goto :goto_7

    :cond_a
    move p1, v2

    :goto_7
    if-eqz p1, :cond_e

    if-nez v0, :cond_b

    move v2, v3

    :cond_b
    if-eqz v2, :cond_d

    iget-object p0, p0, Lokhttp3/b0;->w:Lokhttp3/g;

    sget-object p1, Lokhttp3/g;->c:Lokhttp3/g;

    invoke-static {p0, p1}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_8

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    if-eqz v4, :cond_13

    if-eqz v1, :cond_12

    if-eqz v0, :cond_11

    :goto_8
    return-void

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "x509TrustManager == null"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "certificateChainCleaner == null"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "sslSocketFactory == null"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Null network interceptor: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Null interceptor: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    invoke-static {}, Li4/f;->M()V

    throw v1

    :cond_19
    invoke-static {}, Li4/f;->M()V

    throw v1
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
