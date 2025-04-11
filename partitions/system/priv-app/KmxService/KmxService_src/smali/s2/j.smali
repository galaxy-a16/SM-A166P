.class public final Ls2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/b;


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
.method public constructor <init>(Lob/a;Lob/a;Lob/a;Lr2/f;Lob/a;Lob/a;Lob/a;)V
    .locals 2

    sget-object v0, Lfc/k;->m:Lcom/google/gson/internal/d;

    sget-object v1, Lg2/m;->h:Lcom/google/gson/internal/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls2/j;->a:Lob/a;

    iput-object p2, p0, Ls2/j;->b:Lob/a;

    iput-object p3, p0, Ls2/j;->c:Lob/a;

    iput-object p4, p0, Ls2/j;->d:Lob/a;

    iput-object p5, p0, Ls2/j;->e:Lob/a;

    iput-object p6, p0, Ls2/j;->f:Lob/a;

    iput-object v0, p0, Ls2/j;->g:Lob/a;

    iput-object v1, p0, Ls2/j;->h:Lob/a;

    iput-object p7, p0, Ls2/j;->i:Lob/a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Ls2/j;->a:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Ls2/j;->b:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lp2/f;

    iget-object v0, p0, Ls2/j;->c:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lt2/d;

    iget-object v0, p0, Ls2/j;->d:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ls2/l;

    iget-object v0, p0, Ls2/j;->e:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Ls2/j;->f:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lu2/b;

    iget-object v0, p0, Ls2/j;->g:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lv2/a;

    iget-object v0, p0, Ls2/j;->h:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lv2/a;

    iget-object p0, p0, Ls2/j;->i:Lob/a;

    invoke-interface {p0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v10, p0

    check-cast v10, Lt2/c;

    new-instance p0, Ls2/i;

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Ls2/i;-><init>(Landroid/content/Context;Lp2/f;Lt2/d;Ls2/l;Ljava/util/concurrent/Executor;Lu2/b;Lv2/a;Lv2/a;Lt2/c;)V

    return-object p0
.end method
