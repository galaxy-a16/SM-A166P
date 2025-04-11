.class public abstract Landroidx/lifecycle/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/lifecycle/m0;

.field public b:Z

.field public c:I

.field public final synthetic d:Landroidx/lifecycle/h0;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/h0;Landroidx/lifecycle/m0;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/g0;->d:Landroidx/lifecycle/h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Landroidx/lifecycle/g0;->c:I

    iput-object p2, p0, Landroidx/lifecycle/g0;->a:Landroidx/lifecycle/m0;

    return-void
.end method


# virtual methods
.method public final c(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/lifecycle/g0;->b:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/lifecycle/g0;->b:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    iget-object v0, p0, Landroidx/lifecycle/g0;->d:Landroidx/lifecycle/h0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/h0;->changeActiveCounter(I)V

    iget-boolean p1, p0, Landroidx/lifecycle/g0;->b:Z

    if-eqz p1, :cond_2

    invoke-virtual {v0, p0}, Landroidx/lifecycle/h0;->dispatchingValue(Landroidx/lifecycle/g0;)V

    :cond_2
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e(Landroidx/lifecycle/z;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract f()Z
.end method
