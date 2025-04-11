.class public final Landroidx/lifecycle/s0;
.super Landroidx/lifecycle/k;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/u0;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/u0;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/s0;->this$0:Landroidx/lifecycle/u0;

    invoke-direct {p0}, Landroidx/lifecycle/k;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/s0;->this$0:Landroidx/lifecycle/u0;

    invoke-virtual {p0}, Landroidx/lifecycle/u0;->a()V

    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/s0;->this$0:Landroidx/lifecycle/u0;

    iget p1, p0, Landroidx/lifecycle/u0;->a:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/lifecycle/u0;->a:I

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Landroidx/lifecycle/u0;->d:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/u0;->f:Landroidx/lifecycle/b0;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/lifecycle/u0;->d:Z

    :cond_0
    return-void
.end method
