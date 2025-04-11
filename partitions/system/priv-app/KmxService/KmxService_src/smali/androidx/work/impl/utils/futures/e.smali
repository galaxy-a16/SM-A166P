.class public final Landroidx/work/impl/utils/futures/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Landroidx/work/impl/utils/futures/h;

.field public final b:Ls4/a;


# direct methods
.method public constructor <init>(Landroidx/work/impl/utils/futures/h;Ls4/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/utils/futures/e;->a:Landroidx/work/impl/utils/futures/h;

    iput-object p2, p0, Landroidx/work/impl/utils/futures/e;->b:Ls4/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/utils/futures/e;->a:Landroidx/work/impl/utils/futures/h;

    iget-object v0, v0, Landroidx/work/impl/utils/futures/h;->a:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/work/impl/utils/futures/e;->b:Ls4/a;

    invoke-static {v0}, Landroidx/work/impl/utils/futures/h;->f(Ls4/a;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/utils/futures/h;->f:Lkotlin/reflect/x;

    iget-object v2, p0, Landroidx/work/impl/utils/futures/e;->a:Landroidx/work/impl/utils/futures/h;

    invoke-virtual {v1, v2, p0, v0}, Lkotlin/reflect/x;->c(Landroidx/work/impl/utils/futures/h;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/work/impl/utils/futures/e;->a:Landroidx/work/impl/utils/futures/h;

    invoke-static {p0}, Landroidx/work/impl/utils/futures/h;->c(Landroidx/work/impl/utils/futures/h;)V

    :cond_1
    return-void
.end method
