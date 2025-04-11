.class public final Lq1/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Landroidx/work/impl/utils/futures/i;

.field public final b:Lp1/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkForegroundRunnable"

    invoke-static {v0}, Landroidx/work/o;->f(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lp1/q;Landroidx/work/n;Landroidx/work/h;Lr1/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroidx/work/impl/utils/futures/i;

    invoke-direct {p1}, Landroidx/work/impl/utils/futures/i;-><init>()V

    iput-object p1, p0, Lq1/q;->a:Landroidx/work/impl/utils/futures/i;

    iput-object p2, p0, Lq1/q;->b:Lp1/q;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lq1/q;->b:Lp1/q;

    iget-boolean v0, v0, Lp1/q;->q:Z

    iget-object p0, p0, Lq1/q;->a:Landroidx/work/impl/utils/futures/i;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/futures/i;->i(Ljava/lang/Object;)Z

    return-void
.end method
