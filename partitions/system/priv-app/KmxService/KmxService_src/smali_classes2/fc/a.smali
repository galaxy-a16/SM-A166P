.class public final Lfc/a;
.super Lfc/m;
.source "SourceFile"


# static fields
.field public static final d:Z


# instance fields
.field public final c:Ljava/util/ArrayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/fasterxml/jackson/annotation/i0;->w()Z

    move-result v0

    sput-boolean v0, Lfc/a;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lfc/m;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lgc/l;

    invoke-static {}, Lcom/fasterxml/jackson/annotation/i0;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lgc/a;

    invoke-direct {v1}, Lgc/a;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lgc/k;

    sget-object v2, Lgc/f;->f:Lgc/e;

    invoke-direct {v1, v2}, Lgc/k;-><init>(Lgc/j;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lgc/k;

    sget-object v2, Lgc/i;->b:Lcom/google/gson/internal/c;

    invoke-virtual {v2}, Lcom/google/gson/internal/c;->c()Lgc/g;

    move-result-object v2

    invoke-direct {v1, v2}, Lgc/k;-><init>(Lgc/j;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lgc/k;

    sget-object v2, Lgc/h;->b:Lcom/google/gson/internal/c;

    invoke-virtual {v2}, Lcom/google/gson/internal/c;->c()Lgc/g;

    move-result-object v2

    invoke-direct {v1, v2}, Lgc/k;-><init>(Lgc/j;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/m;->l0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lgc/l;

    invoke-interface {v3}, Lgc/l;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iput-object v1, p0, Lfc/a;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final b(Ljavax/net/ssl/X509TrustManager;)Lcom/fasterxml/jackson/annotation/i0;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/net/http/X509TrustManagerExtensions;

    invoke-direct {v1, p1}, Landroid/net/http/X509TrustManagerExtensions;-><init>(Ljavax/net/ssl/X509TrustManager;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    new-instance v0, Lgc/b;

    invoke-direct {v0, p1, v1}, Lgc/b;-><init>(Ljavax/net/ssl/X509TrustManager;Landroid/net/http/X509TrustManagerExtensions;)V

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lic/a;

    invoke-virtual {p0, p1}, Lfc/m;->c(Ljavax/net/ssl/X509TrustManager;)Lic/d;

    move-result-object p0

    invoke-direct {v0, p0}, Lic/a;-><init>(Lic/d;)V

    :goto_1
    return-object v0
.end method

.method public final d(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    const-string v0, "protocols"

    invoke-static {p3, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lfc/a;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lgc/l;

    invoke-interface {v1, p1}, Lgc/l;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lgc/l;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2, p3}, Lgc/l;->d(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public final e(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lfc/a;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lgc/l;

    invoke-interface {v2, p1}, Lgc/l;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Lgc/l;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lgc/l;->b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "hostname"

    invoke-static {p1, p0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
