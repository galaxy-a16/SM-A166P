.class public final Lr6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ldagger/internal/c;

.field public b:Ldagger/internal/c;

.field public c:Lob/a;

.field public d:Lob/a;

.field public e:Lob/a;

.field public f:Lob/a;

.field public g:Lob/a;


# direct methods
.method public constructor <init>(Ln2/l;Lx6/a;Li6/b;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldagger/internal/c;

    const-string v1, "instance cannot be null"

    if-eqz p2, :cond_1

    invoke-direct {v0, p2}, Ldagger/internal/c;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lr6/a;->a:Ldagger/internal/c;

    new-instance p2, Ldagger/internal/c;

    if-eqz p3, :cond_0

    invoke-direct {p2, p3}, Ldagger/internal/c;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lr6/a;->b:Ldagger/internal/c;

    iget-object p2, p1, Ln2/l;->a:Ljava/lang/Object;

    check-cast p2, Lob/a;

    iget-object p3, p1, Ln2/l;->g:Ljava/lang/Object;

    check-cast p3, Lr6/b;

    iget-object v0, p3, Lr6/b;->l:Lob/a;

    iget-object p3, p3, Lr6/b;->u:Lob/a;

    new-instance v1, Ly5/b;

    const/4 v2, 0x1

    invoke-direct {v1, p2, v0, p3, v2}, Ly5/b;-><init>(Lob/a;Lob/a;Lob/a;I)V

    invoke-static {v1}, Ldagger/internal/a;->b(Ldagger/internal/b;)Lob/a;

    move-result-object p2

    new-instance p3, Lc6/b;

    const/4 v0, 0x0

    invoke-direct {p3, p2, v0}, Lc6/b;-><init>(Lob/a;I)V

    invoke-static {p3}, Ldagger/internal/a;->b(Ldagger/internal/b;)Lob/a;

    move-result-object p2

    iput-object p2, p0, Lr6/a;->c:Lob/a;

    iget-object p2, p1, Ln2/l;->a:Ljava/lang/Object;

    check-cast p2, Lob/a;

    iget-object p3, p1, Ln2/l;->g:Ljava/lang/Object;

    check-cast p3, Lr6/b;

    iget-object v1, p3, Lr6/b;->F:Lob/a;

    iget-object p3, p3, Lr6/b;->N:Lob/a;

    new-instance v3, Ly5/b;

    invoke-direct {v3, p2, v1, p3, v0}, Ly5/b;-><init>(Lob/a;Lob/a;Lob/a;I)V

    invoke-static {v3}, Ldagger/internal/a;->b(Ldagger/internal/b;)Lob/a;

    move-result-object p2

    iget-object p3, p1, Ln2/l;->a:Ljava/lang/Object;

    check-cast p3, Lob/a;

    iget-object v1, p0, Lr6/a;->a:Ldagger/internal/c;

    new-instance v3, Ly5/b;

    const/4 v4, 0x2

    invoke-direct {v3, p2, p3, v1, v4}, Ly5/b;-><init>(Lob/a;Lob/a;Lob/a;I)V

    invoke-static {v3}, Ldagger/internal/a;->b(Ldagger/internal/b;)Lob/a;

    move-result-object v10

    iget-object v6, p0, Lr6/a;->a:Ldagger/internal/c;

    iget-object v7, p0, Lr6/a;->b:Ldagger/internal/c;

    iget-object p2, p1, Ln2/l;->a:Ljava/lang/Object;

    move-object v8, p2

    check-cast v8, Lob/a;

    iget-object p2, p1, Ln2/l;->d:Ljava/lang/Object;

    move-object v9, p2

    check-cast v9, Lob/a;

    new-instance p2, Li6/f;

    move-object v5, p2

    invoke-direct/range {v5 .. v10}, Li6/f;-><init>(Lob/a;Lob/a;Lob/a;Lob/a;Lob/a;)V

    invoke-static {p2}, Ldagger/internal/a;->b(Ldagger/internal/b;)Lob/a;

    move-result-object p2

    iput-object p2, p0, Lr6/a;->d:Lob/a;

    iget-object p2, p1, Ln2/l;->a:Ljava/lang/Object;

    check-cast p2, Lob/a;

    iget-object p3, p1, Ln2/l;->d:Ljava/lang/Object;

    check-cast p3, Lob/a;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/auth/h;

    invoke-direct {v1, p2, p3, v2}, Lcom/hivemq/client/internal/mqtt/handler/auth/h;-><init>(Lob/a;Lob/a;I)V

    invoke-static {v1}, Ldagger/internal/a;->b(Ldagger/internal/b;)Lob/a;

    move-result-object p2

    iput-object p2, p0, Lr6/a;->e:Lob/a;

    iget-object p2, p1, Ln2/l;->a:Ljava/lang/Object;

    check-cast p2, Lob/a;

    iget-object p3, p0, Lr6/a;->a:Ldagger/internal/c;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/auth/h;

    invoke-direct {v1, p2, p3, v0}, Lcom/hivemq/client/internal/mqtt/handler/auth/h;-><init>(Lob/a;Lob/a;I)V

    invoke-static {v1}, Ldagger/internal/a;->b(Ldagger/internal/b;)Lob/a;

    move-result-object p2

    iget-object p3, p0, Lr6/a;->a:Ldagger/internal/c;

    iget-object v0, p1, Ln2/l;->g:Ljava/lang/Object;

    check-cast v0, Lr6/b;

    iget-object v0, v0, Lr6/b;->O:Lob/a;

    new-instance v1, Ly5/b;

    const/4 v2, 0x4

    invoke-direct {v1, p3, p2, v0, v2}, Ly5/b;-><init>(Lob/a;Lob/a;Lob/a;I)V

    invoke-static {v1}, Ldagger/internal/a;->b(Ldagger/internal/b;)Lob/a;

    move-result-object p2

    iput-object p2, p0, Lr6/a;->f:Lob/a;

    iget-object p2, p1, Ln2/l;->g:Ljava/lang/Object;

    check-cast p2, Lr6/b;

    iget-object p2, p2, Lr6/b;->P:Lob/a;

    new-instance p3, Lc6/b;

    const/4 v0, 0x3

    invoke-direct {p3, p2, v0}, Lc6/b;-><init>(Lob/a;I)V

    invoke-static {p3}, Ldagger/internal/a;->b(Ldagger/internal/b;)Lob/a;

    move-result-object v9

    iget-object p1, p1, Ln2/l;->a:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lob/a;

    iget-object v3, p0, Lr6/a;->a:Ldagger/internal/c;

    iget-object v4, p0, Lr6/a;->b:Ldagger/internal/c;

    iget-object v5, p0, Lr6/a;->c:Lob/a;

    iget-object v6, p0, Lr6/a;->d:Lob/a;

    iget-object v7, p0, Lr6/a;->e:Lob/a;

    iget-object v8, p0, Lr6/a;->f:Lob/a;

    new-instance p1, Lh6/d;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lh6/d;-><init>(Lob/a;Lob/a;Lob/a;Lob/a;Lob/a;Lob/a;Lob/a;Lob/a;)V

    invoke-static {p1}, Ldagger/internal/a;->b(Ldagger/internal/b;)Lob/a;

    move-result-object p1

    iput-object p1, p0, Lr6/a;->g:Lob/a;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
