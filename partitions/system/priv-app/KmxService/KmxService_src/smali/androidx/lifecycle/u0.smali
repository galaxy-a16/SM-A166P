.class public final Landroidx/lifecycle/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/z;


# static fields
.field public static final h:Landroidx/lifecycle/u0;


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Z

.field public e:Landroid/os/Handler;

.field public final f:Landroidx/lifecycle/b0;

.field public final g:Landroidx/lifecycle/q0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/u0;

    invoke-direct {v0}, Landroidx/lifecycle/u0;-><init>()V

    sput-object v0, Landroidx/lifecycle/u0;->h:Landroidx/lifecycle/u0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/u0;->c:Z

    iput-boolean v0, p0, Landroidx/lifecycle/u0;->d:Z

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0, p0}, Landroidx/lifecycle/b0;-><init>(Landroidx/lifecycle/z;)V

    iput-object v0, p0, Landroidx/lifecycle/u0;->f:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/q0;

    invoke-direct {v0, p0}, Landroidx/lifecycle/q0;-><init>(Landroidx/lifecycle/u0;)V

    iput-object v0, p0, Landroidx/lifecycle/u0;->g:Landroidx/lifecycle/q0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, Landroidx/lifecycle/u0;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/u0;->b:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/lifecycle/u0;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/u0;->f:Landroidx/lifecycle/b0;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/u0;->c:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/u0;->e:Landroid/os/Handler;

    invoke-static {v0}, Li4/f;->g(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/lifecycle/u0;->g:Landroidx/lifecycle/q0;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getLifecycle()Landroidx/lifecycle/t;
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/u0;->f:Landroidx/lifecycle/b0;

    return-object p0
.end method
