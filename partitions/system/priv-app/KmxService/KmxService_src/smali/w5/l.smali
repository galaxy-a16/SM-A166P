.class public final Lw5/l;
.super Lcom/google/android/gms/measurement/internal/z5;
.source "SourceFile"


# instance fields
.field public final g:Ljava/util/function/Function;


# direct methods
.method public constructor <init>(Lw5/k;Lw5/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/z5;-><init>(Lw5/k;)V

    iput-object p2, p0, Lw5/l;->g:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/Object;
    .locals 8

    new-instance v7, Lw5/k;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z5;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/KeyManagerFactory;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z5;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljavax/net/ssl/TrustManagerFactory;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z5;->d:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lv7/t;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z5;->e:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lv7/t;

    iget v5, p0, Lcom/google/android/gms/measurement/internal/z5;->a:I

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z5;->f:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljavax/net/ssl/HostnameVerifier;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lw5/k;-><init>(Ljavax/net/ssl/KeyManagerFactory;Ljavax/net/ssl/TrustManagerFactory;Lv7/t;Lv7/t;ILjavax/net/ssl/HostnameVerifier;)V

    iget-object p0, p0, Lw5/l;->g:Ljava/util/function/Function;

    invoke-interface {p0, v7}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
