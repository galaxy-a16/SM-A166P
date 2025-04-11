.class public final Ln1/h;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ln1/i;


# direct methods
.method public constructor <init>(Ln1/i;)V
    .locals 0

    iput-object p1, p0, Ln1/h;->a:Ln1/i;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 3

    const-string v0, "network"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "capabilities"

    invoke-static {p2, p1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object p1

    sget-object v0, Ln1/j;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Network capabilities changed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Ln1/h;->a:Ln1/i;

    iget-object p1, p0, Ln1/i;->f:Landroid/net/ConnectivityManager;

    invoke-static {p1}, Ln1/j;->a(Landroid/net/ConnectivityManager;)Ll1/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln1/f;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 2

    const-string v0, "network"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object p1

    sget-object v0, Ln1/j;->a:Ljava/lang/String;

    const-string v1, "Network connection lost"

    invoke-virtual {p1, v0, v1}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Ln1/h;->a:Ln1/i;

    iget-object p1, p0, Ln1/i;->f:Landroid/net/ConnectivityManager;

    invoke-static {p1}, Ln1/j;->a(Landroid/net/ConnectivityManager;)Ll1/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln1/f;->c(Ljava/lang/Object;)V

    return-void
.end method
