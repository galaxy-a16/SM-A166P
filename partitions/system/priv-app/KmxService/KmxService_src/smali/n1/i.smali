.class public final Ln1/i;
.super Ln1/f;
.source "SourceFile"


# instance fields
.field public final f:Landroid/net/ConnectivityManager;

.field public final g:Ln1/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lp1/v;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ln1/f;-><init>(Landroid/content/Context;Lp1/v;)V

    iget-object p1, p0, Ln1/f;->b:Landroid/content/Context;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {p1, p2}, Li4/f;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Ln1/i;->f:Landroid/net/ConnectivityManager;

    new-instance p1, Ln1/h;

    invoke-direct {p1, p0}, Ln1/h;-><init>(Ln1/i;)V

    iput-object p1, p0, Ln1/i;->g:Ln1/h;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ln1/i;->f:Landroid/net/ConnectivityManager;

    invoke-static {p0}, Ln1/j;->a(Landroid/net/ConnectivityManager;)Ll1/a;

    move-result-object p0

    return-object p0
.end method

.method public final d()V
    .locals 4

    const-string v0, "Received exception while registering network callback"

    :try_start_0
    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v1

    sget-object v2, Ln1/j;->a:Ljava/lang/String;

    const-string v3, "Registering network callback"

    invoke-virtual {v1, v2, v3}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ln1/i;->f:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Ln1/i;->g:Ln1/h;

    invoke-static {v1, p0}, Lq1/j;->a(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v1

    :goto_0
    sget-object v2, Ln1/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p0}, Landroidx/work/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final e()V
    .locals 4

    const-string v0, "Received exception while unregistering network callback"

    :try_start_0
    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v1

    sget-object v2, Ln1/j;->a:Ljava/lang/String;

    const-string v3, "Unregistering network callback"

    invoke-virtual {v1, v2, v3}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ln1/i;->f:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Ln1/i;->g:Ln1/h;

    invoke-static {v1, p0}, Lq1/h;->c(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v1

    :goto_0
    sget-object v2, Ln1/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p0}, Landroidx/work/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
