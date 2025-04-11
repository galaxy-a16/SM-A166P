.class public final La6/b;
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


# direct methods
.method public constructor <init>(Lob/a;Lob/a;Lob/a;Lob/a;Lob/a;Lob/a;Lob/a;Lob/a;Lob/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La6/b;->a:Lob/a;

    iput-object p2, p0, La6/b;->b:Lob/a;

    iput-object p3, p0, La6/b;->c:Lob/a;

    iput-object p4, p0, La6/b;->d:Lob/a;

    iput-object p5, p0, La6/b;->e:Lob/a;

    iput-object p6, p0, La6/b;->f:Lob/a;

    iput-object p7, p0, La6/b;->g:Lob/a;

    iput-object p8, p0, La6/b;->h:Lob/a;

    iput-object p9, p0, La6/b;->i:Lob/a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, La6/b;->a:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, La6/c;

    iget-object v0, p0, La6/b;->b:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, La6/h;

    iget-object v0, p0, La6/b;->c:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, La6/d;

    iget-object v0, p0, La6/b;->d:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, La6/f;

    iget-object v0, p0, La6/b;->e:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, La6/g;

    iget-object v0, p0, La6/b;->f:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, La6/e;

    iget-object v0, p0, La6/b;->g:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, La6/i;

    iget-object v0, p0, La6/b;->h:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, La6/j;

    iget-object p0, p0, La6/b;->i:Lob/a;

    invoke-interface {p0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v10, p0

    check-cast v10, Lz5/e;

    new-instance p0, La6/a;

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, La6/a;-><init>(La6/c;La6/h;La6/d;La6/f;La6/g;La6/e;La6/i;La6/j;Lz5/e;)V

    return-object p0
.end method
