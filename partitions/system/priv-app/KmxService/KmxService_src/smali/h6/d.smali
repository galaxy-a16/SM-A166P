.class public final Lh6/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/b;


# instance fields
.field public final a:Lob/a;

.field public final b:Lob/a;

.field public final c:Lob/a;

.field public final d:Lob/a;

.field public final e:Lob/a;

.field public final f:Lob/a;

.field public final g:Lob/a;

.field public final h:Lob/a;


# direct methods
.method public constructor <init>(Lob/a;Lob/a;Lob/a;Lob/a;Lob/a;Lob/a;Lob/a;Lob/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh6/d;->a:Lob/a;

    iput-object p2, p0, Lh6/d;->b:Lob/a;

    iput-object p3, p0, Lh6/d;->c:Lob/a;

    iput-object p4, p0, Lh6/d;->d:Lob/a;

    iput-object p5, p0, Lh6/d;->e:Lob/a;

    iput-object p6, p0, Lh6/d;->f:Lob/a;

    iput-object p7, p0, Lh6/d;->g:Lob/a;

    iput-object p8, p0, Lh6/d;->h:Lob/a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lh6/d;->a:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lw5/h;

    iget-object v0, p0, Lh6/d;->b:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lx6/a;

    iget-object v0, p0, Lh6/d;->c:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Li6/b;

    iget-object v0, p0, Lh6/d;->d:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lc6/a;

    iget-object v0, p0, Lh6/d;->e:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Li6/e;

    iget-object v0, p0, Lh6/d;->f:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lj6/g;

    iget-object v0, p0, Lh6/d;->g:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/hivemq/client/internal/mqtt/handler/auth/d;

    iget-object p0, p0, Lh6/d;->h:Lob/a;

    invoke-static {p0}, Ldagger/internal/a;->a(Lob/a;)Lcb/a;

    move-result-object v9

    new-instance p0, Lh6/c;

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lh6/c;-><init>(Lw5/h;Lx6/a;Li6/b;Lc6/a;Li6/e;Lj6/g;Lcom/hivemq/client/internal/mqtt/handler/auth/d;Lcb/a;)V

    return-object p0
.end method
