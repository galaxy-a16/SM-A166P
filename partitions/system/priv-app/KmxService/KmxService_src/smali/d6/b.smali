.class public final Ld6/b;
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

.field public final i:Lob/a;

.field public final j:Lob/a;


# direct methods
.method public constructor <init>(Lob/a;Lob/a;Lob/a;Lob/a;Lob/a;Lob/a;Lob/a;Lob/a;Lob/a;Lob/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld6/b;->a:Lob/a;

    iput-object p2, p0, Ld6/b;->b:Lob/a;

    iput-object p3, p0, Ld6/b;->c:Lob/a;

    iput-object p4, p0, Ld6/b;->d:Lob/a;

    iput-object p5, p0, Ld6/b;->e:Lob/a;

    iput-object p6, p0, Ld6/b;->f:Lob/a;

    iput-object p7, p0, Ld6/b;->g:Lob/a;

    iput-object p8, p0, Ld6/b;->h:Lob/a;

    iput-object p9, p0, Ld6/b;->i:Lob/a;

    iput-object p10, p0, Ld6/b;->j:Lob/a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Ld6/b;->a:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ld6/c;

    iget-object v0, p0, Ld6/b;->b:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ld6/j;

    iget-object v0, p0, Ld6/b;->c:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ld6/f;

    iget-object v0, p0, Ld6/b;->d:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ld6/h;

    iget-object v0, p0, Ld6/b;->e:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ld6/i;

    iget-object v0, p0, Ld6/b;->f:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ld6/g;

    iget-object v0, p0, Ld6/b;->g:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ld6/k;

    iget-object v0, p0, Ld6/b;->h:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ld6/l;

    iget-object v0, p0, Ld6/b;->i:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lc6/d;

    iget-object p0, p0, Ld6/b;->j:Lob/a;

    invoke-interface {p0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v11, p0

    check-cast v11, Ld6/d;

    new-instance p0, Ld6/a;

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Ld6/a;-><init>(Ld6/c;Ld6/j;Ld6/f;Ld6/h;Ld6/i;Ld6/g;Ld6/k;Ld6/l;Lc6/d;Ld6/d;)V

    return-object p0
.end method
