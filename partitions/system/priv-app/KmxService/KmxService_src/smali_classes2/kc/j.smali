.class public final Lkc/j;
.super Lkc/v;
.source "SourceFile"


# instance fields
.field public e:Lkc/v;


# direct methods
.method public constructor <init>(Lkc/v;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkc/v;-><init>()V

    iput-object p1, p0, Lkc/j;->e:Lkc/v;

    return-void
.end method


# virtual methods
.method public final a()Lkc/v;
    .locals 0

    iget-object p0, p0, Lkc/j;->e:Lkc/v;

    invoke-virtual {p0}, Lkc/v;->a()Lkc/v;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lkc/v;
    .locals 0

    iget-object p0, p0, Lkc/j;->e:Lkc/v;

    invoke-virtual {p0}, Lkc/v;->b()Lkc/v;

    move-result-object p0

    return-object p0
.end method

.method public final c()J
    .locals 2

    iget-object p0, p0, Lkc/j;->e:Lkc/v;

    invoke-virtual {p0}, Lkc/v;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(J)Lkc/v;
    .locals 0

    iget-object p0, p0, Lkc/j;->e:Lkc/v;

    invoke-virtual {p0, p1, p2}, Lkc/v;->d(J)Lkc/v;

    move-result-object p0

    return-object p0
.end method

.method public final e()Z
    .locals 0

    iget-object p0, p0, Lkc/j;->e:Lkc/v;

    invoke-virtual {p0}, Lkc/v;->e()Z

    move-result p0

    return p0
.end method

.method public final f()V
    .locals 0

    iget-object p0, p0, Lkc/j;->e:Lkc/v;

    invoke-virtual {p0}, Lkc/v;->f()V

    return-void
.end method

.method public final g(JLjava/util/concurrent/TimeUnit;)Lkc/v;
    .locals 1

    const-string v0, "unit"

    invoke-static {p3, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkc/j;->e:Lkc/v;

    invoke-virtual {p0, p1, p2, p3}, Lkc/v;->g(JLjava/util/concurrent/TimeUnit;)Lkc/v;

    move-result-object p0

    return-object p0
.end method
