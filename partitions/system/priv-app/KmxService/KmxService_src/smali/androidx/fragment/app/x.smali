.class public final Landroidx/fragment/app/x;
.super Landroidx/fragment/app/z;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lk/a;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic c:La/a;

.field public final synthetic d:Landroidx/activity/result/c;

.field public final synthetic e:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lk/a;Ljava/util/concurrent/atomic/AtomicReference;La/a;Landroidx/activity/result/c;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/x;->e:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/x;->a:Lk/a;

    iput-object p3, p0, Landroidx/fragment/app/x;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Landroidx/fragment/app/x;->c:La/a;

    iput-object p5, p0, Landroidx/fragment/app/x;->d:Landroidx/activity/result/c;

    invoke-direct {p0}, Landroidx/fragment/app/z;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/x;->e:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->generateActivityResultKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/fragment/app/x;->a:Lk/a;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lk/a;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/activity/result/j;

    iget-object v3, p0, Landroidx/fragment/app/x;->c:La/a;

    iget-object v4, p0, Landroidx/fragment/app/x;->d:Landroidx/activity/result/c;

    invoke-virtual {v2, v1, v0, v3, v4}, Landroidx/activity/result/j;->d(Ljava/lang/String;Landroidx/lifecycle/z;La/a;Landroidx/activity/result/c;)Landroidx/activity/result/g;

    move-result-object v0

    iget-object p0, p0, Landroidx/fragment/app/x;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
