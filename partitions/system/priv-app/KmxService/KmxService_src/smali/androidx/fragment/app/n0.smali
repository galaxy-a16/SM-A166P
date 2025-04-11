.class public final Landroidx/fragment/app/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/n0;->a:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/fragment/app/n0;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/n0;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/fragment/app/n0;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/activity/result/j;)V
    .locals 0

    .line 3
    iput-object p1, p0, Landroidx/fragment/app/n0;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/n0;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/y0;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/n0;->a:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/fragment/app/n0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    iget-object p1, p0, Landroidx/fragment/app/n0;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/y0;

    iget-object p1, p1, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/y0;

    move-result-object p1

    iget-object p1, p1, Landroidx/fragment/app/y0;->m:Landroidx/fragment/app/n0;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/n0;->a(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/n0;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Void;

    iget-object p0, p0, Landroidx/fragment/app/n0;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/activity/result/j;

    return-object p0
.end method

.method public final b(Z)V
    .locals 1

    iget-object p1, p0, Landroidx/fragment/app/n0;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/y0;

    iget-object v0, p1, Landroidx/fragment/app/y0;->u:Landroidx/fragment/app/k0;

    iget-object v0, v0, Landroidx/fragment/app/k0;->b:Landroid/content/Context;

    iget-object p1, p1, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/y0;

    move-result-object p1

    iget-object p1, p1, Landroidx/fragment/app/y0;->m:Landroidx/fragment/app/n0;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/n0;->b(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/n0;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final c(Z)V
    .locals 1

    iget-object p1, p0, Landroidx/fragment/app/n0;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/y0;

    iget-object p1, p1, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/y0;

    move-result-object p1

    iget-object p1, p1, Landroidx/fragment/app/y0;->m:Landroidx/fragment/app/n0;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/n0;->c(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/n0;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final d(Z)V
    .locals 1

    iget-object p1, p0, Landroidx/fragment/app/n0;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/y0;

    iget-object p1, p1, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/y0;

    move-result-object p1

    iget-object p1, p1, Landroidx/fragment/app/y0;->m:Landroidx/fragment/app/n0;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/n0;->d(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/n0;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final e(Z)V
    .locals 1

    iget-object p1, p0, Landroidx/fragment/app/n0;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/y0;

    iget-object p1, p1, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/y0;

    move-result-object p1

    iget-object p1, p1, Landroidx/fragment/app/y0;->m:Landroidx/fragment/app/n0;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/n0;->e(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/n0;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final f(Z)V
    .locals 1

    iget-object p1, p0, Landroidx/fragment/app/n0;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/y0;

    iget-object p1, p1, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/y0;

    move-result-object p1

    iget-object p1, p1, Landroidx/fragment/app/y0;->m:Landroidx/fragment/app/n0;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/n0;->f(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/n0;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final g(Z)V
    .locals 1

    iget-object p1, p0, Landroidx/fragment/app/n0;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/y0;

    iget-object v0, p1, Landroidx/fragment/app/y0;->u:Landroidx/fragment/app/k0;

    iget-object v0, v0, Landroidx/fragment/app/k0;->b:Landroid/content/Context;

    iget-object p1, p1, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/y0;

    move-result-object p1

    iget-object p1, p1, Landroidx/fragment/app/y0;->m:Landroidx/fragment/app/n0;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/n0;->g(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/n0;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final h(Z)V
    .locals 1

    iget-object p1, p0, Landroidx/fragment/app/n0;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/y0;

    iget-object p1, p1, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/y0;

    move-result-object p1

    iget-object p1, p1, Landroidx/fragment/app/y0;->m:Landroidx/fragment/app/n0;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/n0;->h(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/n0;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final i(Z)V
    .locals 1

    iget-object p1, p0, Landroidx/fragment/app/n0;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/y0;

    iget-object p1, p1, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/y0;

    move-result-object p1

    iget-object p1, p1, Landroidx/fragment/app/y0;->m:Landroidx/fragment/app/n0;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/n0;->i(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/n0;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final j(Z)V
    .locals 1

    iget-object p1, p0, Landroidx/fragment/app/n0;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/y0;

    iget-object p1, p1, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/y0;

    move-result-object p1

    iget-object p1, p1, Landroidx/fragment/app/y0;->m:Landroidx/fragment/app/n0;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/n0;->j(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/n0;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final k(Z)V
    .locals 1

    iget-object p1, p0, Landroidx/fragment/app/n0;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/y0;

    iget-object p1, p1, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/y0;

    move-result-object p1

    iget-object p1, p1, Landroidx/fragment/app/y0;->m:Landroidx/fragment/app/n0;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/n0;->k(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/n0;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final l(Z)V
    .locals 1

    iget-object p1, p0, Landroidx/fragment/app/n0;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/y0;

    iget-object p1, p1, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/y0;

    move-result-object p1

    iget-object p1, p1, Landroidx/fragment/app/y0;->m:Landroidx/fragment/app/n0;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/n0;->l(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/n0;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final m(Z)V
    .locals 1

    iget-object p1, p0, Landroidx/fragment/app/n0;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/y0;

    iget-object p1, p1, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/y0;

    move-result-object p1

    iget-object p1, p1, Landroidx/fragment/app/y0;->m:Landroidx/fragment/app/n0;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/n0;->m(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/n0;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final n(Z)V
    .locals 1

    iget-object p1, p0, Landroidx/fragment/app/n0;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/y0;

    iget-object p1, p1, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/y0;

    move-result-object p1

    iget-object p1, p1, Landroidx/fragment/app/y0;->m:Landroidx/fragment/app/n0;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/n0;->n(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/n0;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method
