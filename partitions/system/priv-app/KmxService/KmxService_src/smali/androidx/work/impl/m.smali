.class public final Landroidx/work/impl/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/u;


# instance fields
.field public final c:Landroidx/lifecycle/l0;

.field public final d:Landroidx/work/impl/utils/futures/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/lifecycle/l0;

    invoke-direct {v0}, Landroidx/lifecycle/l0;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/m;->c:Landroidx/lifecycle/l0;

    new-instance v0, Landroidx/work/impl/utils/futures/i;

    invoke-direct {v0}, Landroidx/work/impl/utils/futures/i;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/m;->d:Landroidx/work/impl/utils/futures/i;

    sget-object v0, Landroidx/work/u;->b:Landroidx/work/s;

    invoke-virtual {p0, v0}, Landroidx/work/impl/m;->a(Lcom/fasterxml/jackson/annotation/i0;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/fasterxml/jackson/annotation/i0;)V
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/m;->c:Landroidx/lifecycle/l0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/l0;->postValue(Ljava/lang/Object;)V

    instance-of v0, p1, Landroidx/work/t;

    iget-object p0, p0, Landroidx/work/impl/m;->d:Landroidx/work/impl/utils/futures/i;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/work/t;

    invoke-virtual {p0, p1}, Landroidx/work/impl/utils/futures/i;->i(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroidx/work/r;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/work/r;

    iget-object p1, p1, Landroidx/work/r;->i:Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Landroidx/work/impl/utils/futures/i;->j(Ljava/lang/Throwable;)Z

    :cond_1
    :goto_0
    return-void
.end method
