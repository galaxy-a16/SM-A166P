.class public final Li6/f;
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


# direct methods
.method public constructor <init>(Lob/a;Lob/a;Lob/a;Lob/a;Lob/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li6/f;->a:Lob/a;

    iput-object p2, p0, Li6/f;->b:Lob/a;

    iput-object p3, p0, Li6/f;->c:Lob/a;

    iput-object p4, p0, Li6/f;->d:Lob/a;

    iput-object p5, p0, Li6/f;->e:Lob/a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Li6/f;->a:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lx6/a;

    iget-object v0, p0, Li6/f;->b:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Li6/b;

    iget-object v0, p0, Li6/f;->c:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lw5/h;

    iget-object v0, p0, Li6/f;->d:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lh6/g;

    iget-object p0, p0, Li6/f;->e:Lob/a;

    invoke-interface {p0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lz5/a;

    new-instance p0, Li6/e;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Li6/e;-><init>(Lx6/a;Li6/b;Lw5/h;Lh6/g;Lz5/a;)V

    return-object p0
.end method
